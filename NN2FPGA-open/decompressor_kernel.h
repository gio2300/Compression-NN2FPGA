#ifndef FILE_COMPRESSION_H
#define FILE_COMPRESSION_H
#include <cstddef> // Include per size_t
#include <vector>
#include <stdint.h>
#include <string>
#include <hls_stream.h>
//#include "/home/giovannic/Vitis_Libraries/data_compression/common/libs/xcl2/xcl2.hpp"
//#include "/home/giovannic/Vitis_Libraries/data_compression/common/libs/xcl2/xcl2.hpp"
//#include "/home/giovannic/Vitis_Libraries/data_compression/L2/tests/src/zlib_compress.hpp"
//#include "/home/giovannic/Vitis_Libraries/data_compression/L2/include/gzip_compress_fixed_stream.hpp"
#include "/home/giovannic/Vitis_Libraries/data_compression/L2/include/lz4_compress_mm.hpp"
//#include "/home/giovannic/Vitis_Libraries/data_compression/L2/include/snappy_compress_mm.hpp"

// Funzione per leggere i dati dal file binario
std::vector<uint8_t> readFile(const std::string& file_path);

// Funzione per calcolare e stampare il fattore di compressione
void calculateCompressionRatio(size_t original_size, size_t compressed_size, const std::string& algorithm_name);

// Funzione per eseguire la compressione GZIP
size_t compressGzip(const std::vector<uint8_t>& input_data, std::vector<uint8_t>& output_data);

// Funzione per eseguire la compressione LZ4
size_t compressLz4(const std::vector<uint8_t>& input_data, std::vector<uint8_t>& output_data);

// Funzione per eseguire la compressione Snappy
size_t compressSnappy(const std::vector<uint8_t>& input_data, std::vector<uint8_t>& output_data);

#endif // FILE_COMPRESSION_H
