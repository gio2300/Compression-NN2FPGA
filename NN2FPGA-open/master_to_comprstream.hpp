#ifndef MASTER_TO_COMPRSTREAM__HPP
#define MASTER_TO_COMPRSTREAM__HPP

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

template <typename in_t,  int OW, int OH, int c_reuse>
void master_to_comprstream(//uint8_t* buffer,
                uint8_t weightscompr[386],    
	       	bool& s_init,
		    hls::stream<bool>& inEos,
		    hls::stream<in_t>& inStream) {

	constexpr unsigned c_o_index = OH * OW / c_reuse;
	const uint32_t sizeof_in = (IN_BITWIDTH / 8);
//const uint32_t sizeof_in=2;
  //  	uint8_t  weightscompr[386];

//    for (int i = 0; i < 386; ++i) {
  //      #pragma HLS pipeline II=1
  //      weightscompr[i] = buffer[i];
  //  }

for (auto s_o_index = 0; s_o_index < c_o_index; s_o_index++) {
    for (uint32_t i = 0; i < 386; i += sizeof_in) {
//uint32_t length_to_read = 4;
//	    if (i + length_to_read > 386) {
  //      length_to_read=386-i;
   // }
            in_t x = 0;
        for (uint32_t j = 0; j < sizeof_in; j++) {

    
//if (i + j >= 386) {
               // std::cout << "Errore: tentativo di accesso fuori limite a weightscompr. i: " 
                 //         << i << ", j: " << j << std::endl;
  //              break;
    //        }

		x.range((j + 1) * 8 - 1, j * 8) = weightscompr[i + j];
        }
        inStream << x;
        inEos << 0;
    }
    }
    inStream << 0; // End of Stream
    inEos << 1;
   }


#endif // MASTER_TO_COMPRSTREAM__HPP


