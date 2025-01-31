#include <hls_stream.h>
#include <ap_int.h>
#include <stdint.h>
#include <iostream>
#include <chrono>
#include <limits> // Per UINT32_MAX

#include "block_packer.hpp"
#include "huffman_decoder.hpp"

#define NUM_ITERATIONS 1024

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
        } else {
            break;
        }
    }

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
        }
    }

    *output_sum = sum;

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

    return 0;
}

