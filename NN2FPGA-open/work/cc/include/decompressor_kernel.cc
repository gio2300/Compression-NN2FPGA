#include "/home/giovannic/NN2FPGA-open/work/cc/include/decompressor_kernel.h"
#include <iostream>
#include <fstream>
#include <cstddef> // Include per size_t
// Funzione per leggere i dati dal file binario
std::vector<uint8_t> readFile(const std::string& file_path) {
    std::ifstream file(file_path, std::ios::binary);
    std::vector<uint8_t> data((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    return data;
}

// Funzione per calcolare e stampare il fattore di compressione
void calculateCompressionRatio(size_t original_size, size_t compressed_size, const std::string& algorithm_name) {
    double compression_ratio = static_cast<double>(original_size) / static_cast<double>(compressed_size);
    std::cout << "Algoritmo: " << algorithm_name << ", Rapporto di compressione: " << compression_ratio << std::endl;
}

// Funzione per eseguire la compressione GZIP
size_t compressGzip(const std::vector<uint8_t>& input_data, std::vector<uint8_t>& output_data) {
    hls::stream<ap_axiu<GMEM_IN_DWIDTH, 0, 0, 0>> inStream;
    hls::stream<ap_axiu<GMEM_OUT_DWIDTH, 0, 0, 0>> outStream;

    // Scrivi i dati nell'inStream
    for (auto& byte : input_data) {
        ap_axiu<GMEM_IN_DWIDTH, 0, 0, 0> in_val;
        in_val.data = byte;
        inStream.write(in_val);
    }

    // Applica la compressione
    xilGzipCompressFixedStreaming(inStream, outStream);

    // Leggi i dati compressi dall'outStream
    while (!outStream.empty()) {
        ap_axiu<GMEM_OUT_DWIDTH, 0, 0, 0> out_val = outStream.read();
        output_data.push_back(out_val.data);
    }

    return output_data.size();
}

// Funzione per eseguire la compressione LZ4
size_t compressLz4(const std::vector<uint8_t>& input_data, std::vector<uint8_t>& output_data) {
    uint32_t compressd_size;
    uint32_t input_size = input_data.size();
    uint32_t block_size_in_kb = 64; // Dimensione del blocco in KB

    xf::compression::uintMemWidth_t* in = (xf::compression::uintMemWidth_t*)input_data.data();
    xf::compression::uintMemWidth_t* out = new xf::compression::uintMemWidth_t[input_data.size()];

    xilLz4Compress(in, out, &compressd_size, &input_size, block_size_in_kb, input_size);

    output_data.assign((uint8_t*)out, (uint8_t*)out + compressd_size);

    delete[] out;
    return compressd_size;
}

// Funzione per eseguire la compressione Snappy
size_t compressSnappy(const std::vector<uint8_t>& input_data, std::vector<uint8_t>& output_data) {
    uint32_t compressd_size;
    uint32_t input_size = input_data.size();
    uint32_t block_size_in_kb = 64;

    xf::compression::uintMemWidth_t* in = (xf::compression::uintMemWidth_t*)input_data.data();
    xf::compression::uintMemWidth_t* out = new xf::compression::uintMemWidth_t[input_data.size()];

    xilSnappyCompress(in, out, &compressd_size, &input_size, block_size_in_kb, input_size);

    output_data.assign((uint8_t*)out, (uint8_t*)out + compressd_size);

    delete[] out;
    return compressd_size;
}
