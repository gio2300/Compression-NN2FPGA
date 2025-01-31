#ifndef PRODUCE_STREAM__HPP
#define PRODUCE_STREAM__HPP

#include "ap_int.h"
#include "hls_math.h"
#include "hls_stream.h"
#include <cstdint>

#include "params.h"

#include <assert.h>
#include <fstream>
#include <iostream>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>

#include "inflate.hpp"


#define MULTIPLE_BYTES 8//
#define LOW_OFFSET 1
#define MAX_OFFSET (32 * 1024)
#define HISTORY_SIZE MAX_OFFSET
#define LL_MODEL false

#define HUFFMAN_TYPE xf::compression::DYNAMIC

#define OUT_BITWIDTH (MULTIPLE_BYTES * 8)


template < typename dout_t, int ICH, int OCH, int OW, int OH,
          int c_fw, int c_fh, int c_ops, int c_reuse,typename in_t>
void produce_stream_(hls::stream<in_t>& inStream,
                     hls::stream<bool>& inEos,		
                    bool& s_init,                       
                    hls::stream<dout_t> o_data[c_fh * c_fw]) { 
  constexpr unsigned FSZ = c_fh * c_fw;
  constexpr unsigned c_ch = ICH * OCH / c_ops;
  constexpr unsigned c_o_index = OH * OW / c_reuse;


const uint32_t strbSize = (OUT_BITWIDTH / 8);


typedef ap_uint<OUT_BITWIDTH> out_t;

    hls::stream<ap_uint<OUT_BITWIDTH + strbSize>> outStream("decompressOut");
 
 hls::stream<uint8_t> decompressedStream("decompressedStream");


   const int c_decoderType = (int)HUFFMAN_TYPE;
    xf::compression::details::inflateMultiByteCore<c_decoderType, MULTIPLE_BYTES,
                                                   xf::compression::FileFormat::BOTH,
                                                   LL_MODEL, HISTORY_SIZE>(inStream, inEos, outStream);


for (ap_uint<OUT_BITWIDTH + strbSize> val = outStream.read(); val != 0; val = outStream.read()) {
        out_t o = val.range(strbSize + OUT_BITWIDTH - 1, strbSize);
        ap_uint<strbSize> strb = val.range(strbSize - 1, 0);

       	for (size_t i = 0; i < strbSize; ++i) {
            if (strb[i]) {
 
     
		    decompressedStream << o.range((i + 1) * 8 - 1, i * 8);
          

	    }
        }   }


dout_t s_output;
for (auto s_o_index = 0; s_o_index < c_o_index; s_o_index++) {
for (auto s_ch = 0; s_ch < c_ch; s_ch++) {
#pragma HLS pipeline
        for (auto s_index = 0; s_index < FSZ; s_index++) {
   for (auto s_ops = 0; s_ops < c_ops; s_ops++) {

ap_fixed<8, 4, AP_RND, AP_SAT> dataa;	


    ap_uint<8> byte = decompressedStream.read(); 
               dataa.range(7, 0) = byte;
     s_output[s_ops]=dataa;
     }

o_data[s_index].write(s_output);
}} }   
    }


#endif // PRODUCE_STREAM__HPP

