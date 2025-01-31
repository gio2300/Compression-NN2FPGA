#include <hls_stream.h>
#include <stdint.h>
#include <iostream>
#include <chrono>
#include "block_packer.hpp"
#include "huffman_decoder.hpp"

#define NUM_ITERATIONS 1024

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
        } else {
            break;
        }
    }

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
        }
    }

    *output_sum = sum;

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
    return 0;
}

