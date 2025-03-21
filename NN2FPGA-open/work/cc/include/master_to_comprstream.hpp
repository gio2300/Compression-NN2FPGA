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
void master_to_comprstream(uint8_t* buffer,
	       	bool& s_init,
		    hls::stream<bool>& inEos,
		    hls::stream<in_t>& inStream) {

    constexpr unsigned c_o_index = OH * OW / c_reuse;
    const uint32_t sizeof_in = (IN_BITWIDTH / 8);
    uint8_t weightscompr[386];

    for (auto i = 0; i < 386; ++i) {
        weightscompr[i] = buffer[i];
    }

    for (auto s_o_index = 0; s_o_index < c_o_index; s_o_index++) {
        for (auto i = 0; i < 386; i += sizeof_in) {
            in_t x = 0;
            for (auto j = 0; j < sizeof_in; j++) {
                if (i + j < 386) {    
                    x.range((j + 1) * 8 - 1, j * 8) = weightscompr[i + j];
                }      
            }
            inStream << x;
            inEos << 0;
        }
    }
    inStream << 0; // End of Stream
    inEos << 1;
}

#endif // MASTER_TO_COMPRSTREAM__HPP
