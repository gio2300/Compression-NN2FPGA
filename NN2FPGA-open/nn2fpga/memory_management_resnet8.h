#ifndef __NETWORK_MEMORY_MANAGEMENT_RESNET8_H__
#define __NETWORK_MEMORY_MANAGEMENT_RESNET8_H__

#define IN_BITWIDTH 16

#include "params.h"
#include "ap_int.h"
#include "nn2fpga/mem_utils.h"
#include "nn2fpga/weights_utils.h"
#include "hls_stream.h"
#include "load_uram_resnet8.h"
//#include "gzip_decompress_test.hpp"///
#include <vector>
#include <string>
#include "produce_stream_.hpp" //
#include "master_to_comprstream.hpp"

void memory_management(
	hls::stream<t_weights_stream> &i_data_weights,
	hls::stream<t_net_const_13> s_net_const_13[9], 
	hls::stream<t_net_const_14> s_net_const_14[1],
	hls::stream<t_net_const_15> s_net_const_15[9],
	hls::stream<t_net_const_16> s_net_const_16[1],
	hls::stream<t_net_const_17> s_net_const_17[9],
	hls::stream<t_net_const_18> s_net_const_18[1],
	hls::stream<t_net_const_19> s_net_const_19[9],
	hls::stream<t_net_const_20> s_net_const_20[1],
	hls::stream<t_net_const_21> s_net_const_21[9],
	hls::stream<t_net_const_22> s_net_const_22[1],
	hls::stream<t_net_const_23> s_net_const_23[1],
	hls::stream<t_net_const_24> s_net_const_24[1],
	hls::stream<t_net_const_25> s_net_const_25[9],
	hls::stream<t_net_const_26> s_net_const_26[1],
	hls::stream<t_net_const_27> s_net_const_27[9],
	hls::stream<t_net_const_28> s_net_const_28[1],
	hls::stream<t_net_const_29> s_net_const_29[1],
	hls::stream<t_net_const_30> s_net_const_30[1],
	hls::stream<t_net_const_31> s_net_const_31[1],
	hls::stream<t_net_const_32> s_net_const_32[1],
	uint8_t  weightscompr[386] //  
//uint8_t* buffer
	) {

	#pragma HLS inline
//	 t_net_const_13_st static c_net_const_13[9][12][4];
	static bool s_net_const_13_init_flag=true; 
	hls::stream<t_net_const_13_init> s_net_const_13_init[9];
	// #pragma HLS bind_storage variable=c_net_const_13 impl=URAM type=RAM_T2P
	//#pragma HLS array_partition variable=c_net_const_13 type=cyclic factor=2 dim=1
	//#pragma HLS array_reshape variable=c_net_const_13 type=complete dim=1
	//#pragma HLS array_reshape variable=c_net_const_13 type=cyclic factor=4 dim=3
	#pragma HLS stream variable=s_net_const_13_init depth=2 type=fifo
	t_net_const_14_st static c_net_const_14[1][4][4];
	static bool s_net_const_14_init_flag;
	hls::stream<t_net_const_14_init> s_net_const_14_init[1];
	#pragma HLS bind_storage variable=c_net_const_14 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_14 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_14 type=cyclic factor=4 dim=3
	#pragma HLS stream variable=s_net_const_14_init depth=2 type=fifo
	t_net_const_15_st static c_net_const_15[9][16][16];
	static bool s_net_const_15_init_flag;
	hls::stream<t_net_const_15_init> s_net_const_15_init[9];
	#pragma HLS bind_storage variable=c_net_const_15 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_15 type=cyclic factor=9 dim=1
	#pragma HLS array_reshape variable=c_net_const_15 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_15 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_15_init depth=2 type=fifo
	t_net_const_16_st static c_net_const_16[1][1][16];
	static bool s_net_const_16_init_flag;
	hls::stream<t_net_const_16_init> s_net_const_16_init[1];
	#pragma HLS bind_storage variable=c_net_const_16 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_16 type=cyclic factor=2 dim=1
	#pragma HLS array_reshape variable=c_net_const_16 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_16 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_16_init depth=2 type=fifo
	t_net_const_17_st static c_net_const_17[9][16][16];
	static bool s_net_const_17_init_flag;
	hls::stream<t_net_const_17_init> s_net_const_17_init[9];
	#pragma HLS bind_storage variable=c_net_const_17 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_17 type=cyclic factor=9 dim=1
	#pragma HLS array_reshape variable=c_net_const_17 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_17 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_17_init depth=2 type=fifo
	t_net_const_18_st static c_net_const_18[1][1][16];
	static bool s_net_const_18_init_flag;
	hls::stream<t_net_const_18_init> s_net_const_18_init[1];
	#pragma HLS bind_storage variable=c_net_const_18 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_18 type=cyclic factor=2 dim=1
	#pragma HLS array_reshape variable=c_net_const_18 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_18 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_18_init depth=2 type=fifo
	t_net_const_19_st static c_net_const_19[9][64][8];
	static bool s_net_const_19_init_flag;
	hls::stream<t_net_const_19_init> s_net_const_19_init[9];
	#pragma HLS bind_storage variable=c_net_const_19 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_19 type=cyclic factor=4 dim=1
	#pragma HLS array_reshape variable=c_net_const_19 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_19 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_19_init depth=2 type=fifo
	t_net_const_20_st static c_net_const_20[1][4][8];
	static bool s_net_const_20_init_flag;
	hls::stream<t_net_const_20_init> s_net_const_20_init[1];
	#pragma HLS bind_storage variable=c_net_const_20 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_20 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_20 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_20_init depth=2 type=fifo
	t_net_const_21_st static c_net_const_21[9][64][16];
	static bool s_net_const_21_init_flag;
	hls::stream<t_net_const_21_init> s_net_const_21_init[9];
	#pragma HLS bind_storage variable=c_net_const_21 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_21 type=cyclic factor=9 dim=1
	#pragma HLS array_reshape variable=c_net_const_21 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_21 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_21_init depth=2 type=fifo
	t_net_const_22_st static c_net_const_22[1][2][16];
	static bool s_net_const_22_init_flag;
	hls::stream<t_net_const_22_init> s_net_const_22_init[1];
	#pragma HLS bind_storage variable=c_net_const_22 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_22 type=cyclic factor=2 dim=1
	#pragma HLS array_reshape variable=c_net_const_22 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_22 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_22_init depth=2 type=fifo
	t_net_const_23_st static c_net_const_23[1][64][8];
	static bool s_net_const_23_init_flag;
	hls::stream<t_net_const_23_init> s_net_const_23_init[1];
	#pragma HLS bind_storage variable=c_net_const_23 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_23 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_23 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_23_init depth=2 type=fifo
	t_net_const_24_st static c_net_const_24[1][4][8];
	static bool s_net_const_24_init_flag;
	hls::stream<t_net_const_24_init> s_net_const_24_init[1];
	#pragma HLS bind_storage variable=c_net_const_24 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_24 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_24 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_24_init depth=2 type=fifo
	t_net_const_25_st static c_net_const_25[9][256][8];
	static bool s_net_const_25_init_flag;
	hls::stream<t_net_const_25_init> s_net_const_25_init[9];
	#pragma HLS bind_storage variable=c_net_const_25 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_25 type=cyclic factor=4 dim=1
	#pragma HLS array_reshape variable=c_net_const_25 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_25 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_25_init depth=2 type=fifo
	t_net_const_26_st static c_net_const_26[1][8][8];
	static bool s_net_const_26_init_flag;
	hls::stream<t_net_const_26_init> s_net_const_26_init[1];
	#pragma HLS bind_storage variable=c_net_const_26 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_26 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_26 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_26_init depth=2 type=fifo
	t_net_const_27_st static c_net_const_27[9][256][16];
	static bool s_net_const_27_init_flag;
	hls::stream<t_net_const_27_init> s_net_const_27_init[9];
	#pragma HLS bind_storage variable=c_net_const_27 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_27 type=cyclic factor=9 dim=1
	#pragma HLS array_reshape variable=c_net_const_27 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_27 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_27_init depth=2 type=fifo
	t_net_const_28_st static c_net_const_28[1][4][16];
	static bool s_net_const_28_init_flag;
	hls::stream<t_net_const_28_init> s_net_const_28_init[1];
	#pragma HLS bind_storage variable=c_net_const_28 impl=URAM type=RAM_T2P
	#pragma HLS array_partition variable=c_net_const_28 type=cyclic factor=2 dim=1
	#pragma HLS array_reshape variable=c_net_const_28 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_28 type=cyclic factor=16 dim=3
	#pragma HLS stream variable=s_net_const_28_init depth=2 type=fifo
	t_net_const_29_st static c_net_const_29[1][256][8];
	static bool s_net_const_29_init_flag;
	hls::stream<t_net_const_29_init> s_net_const_29_init[1];
	#pragma HLS bind_storage variable=c_net_const_29 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_29 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_29 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_29_init depth=2 type=fifo
	t_net_const_30_st static c_net_const_30[1][8][8];
	static bool s_net_const_30_init_flag;
	hls::stream<t_net_const_30_init> s_net_const_30_init[1];
	#pragma HLS bind_storage variable=c_net_const_30 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_30 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_30 type=cyclic factor=8 dim=3
	#pragma HLS stream variable=s_net_const_30_init depth=2 type=fifo
	t_net_const_31_st static c_net_const_31[1][640][1];
	static bool s_net_const_31_init_flag;
	hls::stream<t_net_const_31_init> s_net_const_31_init[1];
	#pragma HLS bind_storage variable=c_net_const_31 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_31 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_31 type=cyclic factor=1 dim=3
	#pragma HLS stream variable=s_net_const_31_init depth=2 type=fifo
	t_net_const_32_st static c_net_const_32[1][10][1];
	static bool s_net_const_32_init_flag;
	hls::stream<t_net_const_32_init> s_net_const_32_init[1];
	#pragma HLS bind_storage variable=c_net_const_32 impl=URAM type=RAM_T2P
	#pragma HLS array_reshape variable=c_net_const_32 type=complete dim=1
	#pragma HLS array_reshape variable=c_net_const_32 type=cyclic factor=1 dim=3
	#pragma HLS stream variable=s_net_const_32_init depth=2 type=fifo

	nn2fpga::load_uram (
		i_data_weights,
		s_net_const_13_init,
		s_net_const_14_init,
		s_net_const_15_init,
		s_net_const_16_init,
		s_net_const_17_init,
		s_net_const_18_init,
		s_net_const_19_init,
		s_net_const_20_init,
		s_net_const_21_init,
		s_net_const_22_init,
		s_net_const_23_init,
		s_net_const_24_init,
		s_net_const_25_init,
		s_net_const_26_init,
		s_net_const_27_init,
		s_net_const_28_init,
		s_net_const_29_init,
		s_net_const_30_init,
		s_net_const_31_init,
		s_net_const_32_init

		
	);

typedef ap_uint<IN_BITWIDTH> in_t;
hls::stream<in_t> inStream("inStream");
hls::stream<bool> inEos("inEos");

	master_to_comprstream <in_t,
			      c_node_const_10_ow,
			      c_node_const_10_oh,
			      c_net_const_13_reuse>
       	(
	//	buffer, 
         weightscompr,	
 	 s_net_const_13_init_flag,
	        inEos,
		inStream
	);

	produce_stream_ <
	//	t_net_const_13_st,
	//	t_net_const_13_init,
		t_net_const_13,
		c_node_const_10_ich,
		c_node_const_10_och,
		c_node_const_10_ow,
		c_node_const_10_oh,
		c_net_const_13_iw,
		c_net_const_13_ih,
		c_net_const_13_ops,
		c_net_const_13_reuse,
	in_t	
	> (
		inStream,
		inEos,
	  //      nullptr, 
		s_net_const_13_init_flag,
		s_net_const_13
	);

	nn2fpga::produce_stream <
		t_net_const_14_st,
		t_net_const_14_init,
		t_net_const_14,
		c_node_const_11_ich,
		c_node_const_11_och,
		c_node_const_11_ow,
		c_node_const_11_oh,
		c_net_const_14_iw,
		c_net_const_14_ih,
		c_net_const_14_ops,
		c_net_const_14_reuse
	> (
		c_net_const_14,
		s_net_const_14_init,
		s_net_const_14_init_flag,
		s_net_const_14
	);

	nn2fpga::produce_stream <
		t_net_const_15_st,
		t_net_const_15_init,
		t_net_const_15,
		c_node_const_12_ich,
		c_node_const_12_och,
		c_node_const_12_ow,
		c_node_const_12_oh,
		c_net_const_15_iw,
		c_net_const_15_ih,
		c_net_const_15_ops,
		c_net_const_15_reuse
	> (
		c_net_const_15,
		s_net_const_15_init,
		s_net_const_15_init_flag,
		s_net_const_15
	);

	nn2fpga::produce_stream <
		t_net_const_16_st,
		t_net_const_16_init,
		t_net_const_16,
		c_node_const_13_ich,
		c_node_const_13_och,
		c_node_const_13_ow,
		c_node_const_13_oh,
		c_net_const_16_iw,
		c_net_const_16_ih,
		c_net_const_16_ops,
		c_net_const_16_reuse
	> (
		c_net_const_16,
		s_net_const_16_init,
		s_net_const_16_init_flag,
		s_net_const_16
	);

	nn2fpga::produce_stream <
		t_net_const_17_st,
		t_net_const_17_init,
		t_net_const_17,
		c_node_const_14_ich,
		c_node_const_14_och,
		c_node_const_14_ow,
		c_node_const_14_oh,
		c_net_const_17_iw,
		c_net_const_17_ih,
		c_net_const_17_ops,
		c_net_const_17_reuse
	> (
		c_net_const_17,
		s_net_const_17_init,
		s_net_const_17_init_flag,
		s_net_const_17
	);

	nn2fpga::produce_stream <
		t_net_const_18_st,
		t_net_const_18_init,
		t_net_const_18,
		c_node_const_15_ich,
		c_node_const_15_och,
		c_node_const_15_ow,
		c_node_const_15_oh,
		c_net_const_18_iw,
		c_net_const_18_ih,
		c_net_const_18_ops,
		c_net_const_18_reuse
	> (
		c_net_const_18,
		s_net_const_18_init,
		s_net_const_18_init_flag,
		s_net_const_18
	);

	nn2fpga::produce_stream <
		t_net_const_19_st,
		t_net_const_19_init,
		t_net_const_19,
		c_node_const_16_ich,
		c_node_const_16_och,
		c_node_const_16_ow,
		c_node_const_16_oh,
		c_net_const_19_iw,
		c_net_const_19_ih,
		c_net_const_19_ops,
		c_net_const_19_reuse
	> (
		c_net_const_19,
		s_net_const_19_init,
		s_net_const_19_init_flag,
		s_net_const_19
	);

	nn2fpga::produce_stream <
		t_net_const_20_st,
		t_net_const_20_init,
		t_net_const_20,
		c_node_const_17_ich,
		c_node_const_17_och,
		c_node_const_17_ow,
		c_node_const_17_oh,
		c_net_const_20_iw,
		c_net_const_20_ih,
		c_net_const_20_ops,
		c_net_const_20_reuse
	> (
		c_net_const_20,
		s_net_const_20_init,
		s_net_const_20_init_flag,
		s_net_const_20
	);

	nn2fpga::produce_stream <
		t_net_const_21_st,
		t_net_const_21_init,
		t_net_const_21,
		c_node_const_18_ich,
		c_node_const_18_och,
		c_node_const_18_ow,
		c_node_const_18_oh,
		c_net_const_21_iw,
		c_net_const_21_ih,
		c_net_const_21_ops,
		c_net_const_21_reuse
	> (
		c_net_const_21,
		s_net_const_21_init,
		s_net_const_21_init_flag,
		s_net_const_21
	);

	nn2fpga::produce_stream <
		t_net_const_22_st,
		t_net_const_22_init,
		t_net_const_22,
		c_node_const_19_ich,
		c_node_const_19_och,
		c_node_const_19_ow,
		c_node_const_19_oh,
		c_net_const_22_iw,
		c_net_const_22_ih,
		c_net_const_22_ops,
		c_net_const_22_reuse
	> (
		c_net_const_22,
		s_net_const_22_init,
		s_net_const_22_init_flag,
		s_net_const_22
	);

	nn2fpga::produce_stream <
		t_net_const_23_st,
		t_net_const_23_init,
		t_net_const_23,
		c_node_const_20_ich,
		c_node_const_20_och,
		c_node_const_20_ow,
		c_node_const_20_oh,
		c_net_const_23_iw,
		c_net_const_23_ih,
		c_net_const_23_ops,
		c_net_const_23_reuse
	> (
		c_net_const_23,
		s_net_const_23_init,
		s_net_const_23_init_flag,
		s_net_const_23
	);

	nn2fpga::produce_stream <
		t_net_const_24_st,
		t_net_const_24_init,
		t_net_const_24,
		c_node_const_21_ich,
		c_node_const_21_och,
		c_node_const_21_ow,
		c_node_const_21_oh,
		c_net_const_24_iw,
		c_net_const_24_ih,
		c_net_const_24_ops,
		c_net_const_24_reuse
	> (
		c_net_const_24,
		s_net_const_24_init,
		s_net_const_24_init_flag,
		s_net_const_24
	);

	nn2fpga::produce_stream <
		t_net_const_25_st,
		t_net_const_25_init,
		t_net_const_25,
		c_node_const_22_ich,
		c_node_const_22_och,
		c_node_const_22_ow,
		c_node_const_22_oh,
		c_net_const_25_iw,
		c_net_const_25_ih,
		c_net_const_25_ops,
		c_net_const_25_reuse
	> (
		c_net_const_25,
		s_net_const_25_init,
		s_net_const_25_init_flag,
		s_net_const_25
	);

	nn2fpga::produce_stream <
		t_net_const_26_st,
		t_net_const_26_init,
		t_net_const_26,
		c_node_const_23_ich,
		c_node_const_23_och,
		c_node_const_23_ow,
		c_node_const_23_oh,
		c_net_const_26_iw,
		c_net_const_26_ih,
		c_net_const_26_ops,
		c_net_const_26_reuse
	> (
		c_net_const_26,
		s_net_const_26_init,
		s_net_const_26_init_flag,
		s_net_const_26
	);

	nn2fpga::produce_stream <
		t_net_const_27_st,
		t_net_const_27_init,
		t_net_const_27,
		c_node_const_24_ich,
		c_node_const_24_och,
		c_node_const_24_ow,
		c_node_const_24_oh,
		c_net_const_27_iw,
		c_net_const_27_ih,
		c_net_const_27_ops,
		c_net_const_27_reuse
	> (
		c_net_const_27,
		s_net_const_27_init,
		s_net_const_27_init_flag,
		s_net_const_27
	);

	nn2fpga::produce_stream <
		t_net_const_28_st,
		t_net_const_28_init,
		t_net_const_28,
		c_node_const_25_ich,
		c_node_const_25_och,
		c_node_const_25_ow,
		c_node_const_25_oh,
		c_net_const_28_iw,
		c_net_const_28_ih,
		c_net_const_28_ops,
		c_net_const_28_reuse
	> (
		c_net_const_28,
		s_net_const_28_init,
		s_net_const_28_init_flag,
		s_net_const_28
	);

	nn2fpga::produce_stream <
		t_net_const_29_st,
		t_net_const_29_init,
		t_net_const_29,
		c_node_const_26_ich,
		c_node_const_26_och,
		c_node_const_26_ow,
		c_node_const_26_oh,
		c_net_const_29_iw,
		c_net_const_29_ih,
		c_net_const_29_ops,
		c_net_const_29_reuse
	> (
		c_net_const_29,
		s_net_const_29_init,
		s_net_const_29_init_flag,
		s_net_const_29
	);

	nn2fpga::produce_stream <
		t_net_const_30_st,
		t_net_const_30_init,
		t_net_const_30,
		c_node_const_27_ich,
		c_node_const_27_och,
		c_node_const_27_ow,
		c_node_const_27_oh,
		c_net_const_30_iw,
		c_net_const_30_ih,
		c_net_const_30_ops,
		c_net_const_30_reuse
	> (
		c_net_const_30,
		s_net_const_30_init,
		s_net_const_30_init_flag,
		s_net_const_30
	);

	nn2fpga::produce_stream <
		t_net_const_31_st,
		t_net_const_31_init,
		t_net_const_31,
		c_node_const_28_ich,
		c_node_const_28_och,
		c_node_const_28_ow,
		c_node_const_28_oh,
		c_net_const_31_iw,
		c_net_const_31_ih,
		c_net_const_31_ops,
		c_net_const_31_reuse
	> (
		c_net_const_31,
		s_net_const_31_init,
		s_net_const_31_init_flag,
		s_net_const_31
	);

	nn2fpga::produce_stream <
		t_net_const_32_st,
		t_net_const_32_init,
		t_net_const_32,
		c_node_const_29_ich,
		c_node_const_29_och,
		c_node_const_29_ow,
		c_node_const_29_oh,
		c_net_const_32_iw,
		c_net_const_32_ih,
		c_net_const_32_ops,
		c_net_const_32_reuse
	> (
		c_net_const_32,
		s_net_const_32_init,
		s_net_const_32_init_flag,
		s_net_const_32
	);

}

#endif
