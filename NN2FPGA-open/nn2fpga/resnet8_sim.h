#ifndef __NETWORK_SIM__
#define __NETWORK_SIM__
#include "params.h"
#include "nn2fpga/debug.h"
#include <chrono>
#include <iostream>
#include <fstream>
#include "resnet8.h"
#include "nn2fpga/mm2s.h"
#include "nn2fpga/s2mm.h"

std::chrono::duration<double> networkSim(
	int argc,
	char** argv,
	std::string prj_root,
	const unsigned int n_inp,
	const unsigned int n_out,
	const t_in_mem* inp_1,
	t_out_mem* o_outp1
	 t_net_const_13_st c_net_const_13[9][12][4] //aggiunta
) {
for (auto s_ch = 0; (s_ch < 12); s_ch++) {  //
      for (auto s_index = 0; s_index < 9; s_index++) {  //
        for (auto s_ops = 0; s_ops < 4; s_ops++) {  //
          c_net_const_13[s_index][s_ch][s_ops] = 1; //
        }
      }
    }

	
	t_weights_st *c_weights;
	posix_memalign((void**)&c_weights, 4096,78052 * sizeof(t_weights_st));
	std::ifstream file_weights(prj_root + "npy/resnet8_weights.bin", std::ios::binary);

	file_weights.read(reinterpret_cast<char*>(c_weights), 78052 * sizeof(t_weights_st));
	file_weights.close();





	hls::stream<t_weights_stream> c_weights_stream;
	hls::stream<t_inp_1> c_inp_1_stream;
	hls::stream<t_o_outp1> c_outp1_stream;
	nn2fpga::mm2s <
		t_weights_st,
		t_weights_stream
	> (
		c_weights,
		c_weights_dim,
		c_weights_stream
	);

	nn2fpga::mm2s <
		t_in_mem,
		t_inp_1
	> (
		inp_1,
		n_inp,
		c_inp_1_stream
	);

	auto start = std::chrono::high_resolution_clock::now();

	resnet8(
		c_inp_1_stream,
		c_weights_stream,
		c_outp1_stream,
		c_net_const_13 //aggiunta
	);

	auto end = std::chrono::high_resolution_clock::now();

	nn2fpga::s2mm <
		t_out_mem,
		t_o_outp1
	> (
		o_outp1,
		n_out,
		c_outp1_stream
	);

	free(c_weights);
	return (end - start);
}

#endif
