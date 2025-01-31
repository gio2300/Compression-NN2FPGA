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
	t_out_mem* o_outp1,
	 uint8_t* buffer //
) {
t_weights_st *c_weights;
const int c_first_weights_dim = 386;

        const int c_weights_dim = 78006;

        const int c_second_weights_dim = 77620;
       // uint8_t* buffer;
       posix_memalign((void**)&buffer,4096, 386 * sizeof(t_weights_st));
        posix_memalign((void**)&c_weights, 4096,77620 * sizeof(t_weights_st));
std::ifstream file_weights("npy/gzipc_resnet8432.bin", std::ios::binary);

	auto i=0;

//file_weights.seekg(0, std::ios::end);
//std::streamsize file_size = file_weights.tellg();
//file_weights.seekg(0, std::ios::beg);
//std::cout << "Dimensione del file: " << file_size << " byte" << std::endl;
//int a=0;

    file_weights.read(reinterpret_cast<char*>(buffer), 386 * sizeof(t_weights_st));



  //  int bufferCount = 0;
 //   for (int i = 0; i < 382; ++i) {
       // if (buffer[i] != 0) {
   //         bufferCount++;
       // }
   // }
  //  std::cout << "Numero di dati non nulli nel buffer: " << bufferCount << std::endl;
file_weights.close();
std::ifstream file_weightss(prj_root + "npy/resnet8_weights.bin", std::ios::binary);
// Salto i primi 432 pesi
file_weightss.seekg(432 * sizeof(t_weights_st), std::ios::beg);
    file_weightss.read(reinterpret_cast<char*>(c_weights), 77620 * sizeof(t_weights_st));
        file_weightss.close();


hls::stream<t_weights_stream> c_weights_stream;
        hls::stream<t_inp_1> c_inp_1_stream;
        hls::stream<t_o_outp1> c_outp1_stream;

		nn2fpga::mm2s <
		t_weights_st,
		t_weights_stream
	> (
		c_weights,  
        c_second_weights_dim,//
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
	buffer //
	//	weights_ddr
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
//	free(c_weights_initial);//
free(buffer);
    return (end - start);

}
#endif
