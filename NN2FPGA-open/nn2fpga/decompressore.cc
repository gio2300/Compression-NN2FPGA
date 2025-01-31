#include <hls_stream.h>
<<<<<<< HEAD
#include <ap_int.h>
#include <stdint.h>
#include <iostream>
#include <chrono>
#include <limits> // Per UINT32_MAX

=======
#include <stdint.h>
#include <iostream>
#include <chrono>
>>>>>>> a04540d69e86da3140ae5e919712b39039e073fe
#include "block_packer.hpp"
#include "huffman_decoder.hpp"

#define NUM_ITERATIONS 1024

<<<<<<< HEAD
template <int DATAWIDTH>
void myKernel(hls::stream<ap_uint<DATAWIDTH>>& inStream,
              hls::stream<uint32_t>& inStreamSize,
              hls::stream<ap_uint<DATAWIDTH>>& outStream,
              hls::stream<bool>& outStreamEos,
              hls::stream<uint32_t>& outCompressedSize,
              uint32_t* output_sum,
              uint32_t* throughput);

// Implementazione della funzione myKernel
template <int DATAWIDTH>
void myKernel(hls::stream<ap_uint<DATAWIDTH>>& inStream,
              hls::stream<uint32_t>& inStreamSize,
              hls::stream<ap_uint<DATAWIDTH>>& outStream,
              hls::stream<bool>& outStreamEos,
              hls::stream<uint32_t>& outCompressedSize,
              uint32_t* output_sum,
              uint32_t* throughput) {

    ap_uint<32> huffmanInput[NUM_ITERATIONS];
    hls::stream<ap_uint<16>> huffmanInputStream;
    hls::stream<ap_uint<16>> huffmanOutputStream; // Stream per l'output decompressi
    uint32_t sum = 0;

    *output_sum = 0;
    auto start_time = std::chrono::high_resolution_clock::now(); // Inizio del timing

    // Esegui la funzione blockPacker
    xf::compression::blockPacker<DATAWIDTH>(inStream, inStreamSize, outStream, outStreamEos, outCompressedSize);

    // Leggi i dati nello stream per Huffman
    for (int i = 0; i < NUM_ITERATIONS; i++) {
        ap_uint<DATAWIDTH> packedData;
        if (outStream.read_nb(packedData)) {
            ap_uint<32> tempData = packedData.range(31, 0); // Ottieni i primi 32 bit

            if (tempData < (1 << 16)) { // Assicurati che siano nel range di uint16_t
                huffmanInput[i] = tempData; // Usa il valore temporaneo
                huffmanInputStream.write(huffmanInput[i].range(15, 0)); // Scrivi solo i primi 16 bit
            } else {
                // Gestisci il caso di overflow se necessario, ad esempio, loggare un messaggio
                std::cout << "Data overflow detected: " << tempData << std::endl; // Puoi anche gestire in altro modo
            }
=======
void myKernel(hls::stream<uint16_t>& inStream,
              hls::stream<uint16_t>& inStreamSize,
              hls::stream<uint16_t>& outStream,
              hls::stream<bool>& outStreamEos,
              hls::stream<uint16_t>& outCompressedSize,
              uint16_t* output_sum,
              uint16_t* throughput) {
    
    uint16_t huffmanInput[NUM_ITERATIONS];
    hls::stream<uint16_t> huffmanInputStream;
    hls::stream<uint16_t> huffmanOutputStream;
    uint16_t sum = 0;

    *output_sum = 0;
    auto start_time = std::chrono::high_resolution_clock::now();

    // Execute blockPacker
    xf::compression::blockPacker<16>(inStream, inStreamSize, outStream, outStreamEos, outCompressedSize);

    // Read packed data into Huffman input stream
    for (int i = 0; i < NUM_ITERATIONS; i++) {
        uint16_t packedData;
        if (outStream.read_nb(packedData)) {
            huffmanInput[i] = packedData; // Store the packed data
            huffmanInputStream.write(huffmanInput[i]); // Write packed data
>>>>>>> a04540d69e86da3140ae5e919712b39039e073fe
        } else {
            break;
        }
    }

<<<<<<< HEAD
    // Usa il decoder Huffman
    hls::stream<bool> eos_stream;
    eos_stream.write(false); // Scrivi un segnale di fine stream
    xf::compression::huffmanDecoderLL<xf::compression::FULL, xf::compression::BOTH>(
        huffmanInputStream, eos_stream, huffmanOutputStream); // Passa lo stream per l'output

    // Leggi i dati dallo stream di output
    for (int i = 0; i < NUM_ITERATIONS; i++) {
        ap_uint<16> output;
        if (huffmanOutputStream.read_nb(output)) {
            sum += output; // Accumula il valore
=======
    // Use Huffman decoder
    hls::stream<bool> eos_stream;
    eos_stream.write(false); // Write end of stream signal
    xf::compression::huffmanDecoderLL<xf::compression::FULL, xf::compression::BOTH>(
        huffmanInputStream, eos_stream, huffmanOutputStream); // Pass output stream

    // Read output data and calculate sum
    for (int i = 0; i < NUM_ITERATIONS; i++) {
        uint16_t output;
        if (huffmanOutputStream.read_nb(output)) {
            sum += output; // Accumulate the value
>>>>>>> a04540d69e86da3140ae5e919712b39039e073fe
        }
    }

    *output_sum = sum;

<<<<<<< HEAD
    auto end_time = std::chrono::high_resolution_clock::now(); // Fine del timing
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end_time - start_time).count(); // Durata in microsecondi

    // Calcola il throughput
    if (duration > 0) {
        *throughput = static_cast<uint32_t>(NUM_ITERATIONS / (duration / 1e6)); // Calcolo del throughput
    } else {
        *throughput = 0; // Prevenire divisione per zero
    }
}

int main() {
    hls::stream<ap_uint<512>> inStream;
    hls::stream<uint32_t> inStreamSize;
    hls::stream<ap_uint<512>> outStream;
    hls::stream<bool> outStreamEos;
    hls::stream<uint32_t> outCompressedSize;

    uint32_t output_sum = 0;
    uint32_t throughput = 0;

    // Popola inStream con dati di esempio
    for (int i = 0; i < NUM_ITERATIONS; i++) {
        ap_uint<512> data = (i % 256); // Esempio di dati
        inStream.write(data);
        inStreamSize.write(1); // Supponiamo che ogni dato sia di dimensione 1
    }

    // Esegui il kernel
    myKernel<512>(inStream, inStreamSize, outStream, outStreamEos, outCompressedSize, &output_sum, &throughput);

    // Mostra i risultati
    std::cout << "Somma dei dati decompressi: " << output_sum << std::endl;
    std::cout << "Throughput: " << throughput << " operazioni al secondo" << std::endl;

=======
    auto end_time = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end_time - start_time).count();

    // Calculate throughput
    *throughput = (duration > 0) ? static_cast<uint16_t>(NUM_ITERATIONS / (duration / 1e6)) : 0;
}

int main() {
    hls::stream<uint16_t> inStream;         // Input stream
    hls::stream<uint16_t> inStreamSize;     // Input stream size
    hls::stream<uint16_t> outStream;        // Output stream
    hls::stream<bool> outStreamEos;         // End of stream signal
    hls::stream<uint16_t> outCompressedSize; // Compressed size output stream

    uint16_t output_sum = 0;
    uint16_t throughput = 0;

    // Populate inStream with sample data
    for (int i = 0; i < NUM_ITERATIONS; i++) {
        uint16_t data = i % 256; // Example data
        inStream.write(data);
        inStreamSize.write(1); // Assume each data is size 1
    }

    // Run the kernel
    myKernel(inStream, inStreamSize, outStream, outStreamEos, outCompressedSize, &output_sum, &throughput);

    // Show results
    std::cout << "Sum of decompressed data: " << output_sum << std::endl;
    std::cout << "Throughput: " << throughput << " operations per second" << std::endl;
kidjiejjfejejfji
>>>>>>> a04540d69e86da3140ae5e919712b39039e073fe
    return 0;
}

