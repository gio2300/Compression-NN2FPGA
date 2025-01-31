#include <iostream>
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "/home/giovannic/NN2FPGA-open/work/cc/include/decompressor_kernel.h"
#include <string>
#include <ap_fixed.h>
#include <hls_stream.h>
#include <hls_vector.h> // Include per usare hls::vector
#include <cstddef> // Include per size_t
// Definizione di un tipo fixed-point
//typedef ap_fixed<16, 8> t_fixed;
#include <fstream> // Per std::ifstream

int main() {
    // Percorso del file binario con i pesi estratti
    std::string file_path = "/home/giovannic/NN2FPGA-open/work/npy/resnet8_weights.bin";

    // Leggi i dati originali
    std::vector<uint8_t> original_data = readFile(file_path);
    size_t original_size = original_data.size();

    std::vector<uint8_t> compressed_data;

    // Testa la compressione GZIP
    compressed_data.clear();
    size_t gzip_compressed_size = compressGzip(original_data, compressed_data);
    calculateCompressionRatio(original_size, gzip_compressed_size, "GZIP");

    // Testa la compressione LZ4
    compressed_data.clear();
    size_t lz4_compressed_size = compressLz4(original_data, compressed_data);
    calculateCompressionRatio(original_size, lz4_compressed_size, "LZ4");

    // Testa la compressione Snappy
    compressed_data.clear();
    size_t snappy_compressed_size = compressSnappy(original_data, compressed_data);
    calculateCompressionRatio(original_size, snappy_compressed_size, "Snappy");

    return 0;
}
