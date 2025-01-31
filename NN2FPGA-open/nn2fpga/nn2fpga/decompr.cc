#include "decompressor.h"
#include "huffman_decoder.hpp"

void myDecompressionKernel(
    ap_uint<512>* compressed_data, 
    uint32_t* decompressed_sum, 
    uint32_t compressed_size
) {
    // Flussi HLS
    hls::stream<ap_uint<16>> inStream;
    hls::stream<bool> inEos;
    hls::stream<ap_uint<16>> outStream;

    // Inizializzazione dell'input stream e dell'end of stream
    for (uint32_t i = 0; i < compressed_size; i++) {
        inStream.write(compressed_data[i].range(15, 0)); // Prendi i primi 16 bit
    }
    inEos.write(true); // Mark end of stream

    // Chiamata al decoder Huffman
    huffmanDecoder<huffman::FULL>(inStream, inEos, outStream);
    
    // Calcolo della somma dei dati decompressi
    uint32_t sum = 0;
    while (!outStream.empty()) {
        sum += outStream.read().to_uint();
    }
    
    *decompressed_sum = sum; // Restituisce la somma dei dati decompressi
}

