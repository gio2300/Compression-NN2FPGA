
#include "params.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "memory_management_resnet8.h"
#include "nn2fpga/packed_conv.h"
#include "nn2fpga/pool_streams.h"
#include "nn2fpga/utils.h"
#include "nn2fpga/activations_utils.h"
#include "nn2fpga/block_interface.h"
#include "nn2fpga/line_buffer_utils.h"
#include "nn2fpga/quantisation.h"
#include "nn2fpga/weights_utils.h"


extern "C++" {

void resnet8(
	hls::stream<t_inp_1> &i_inp_1,
	hls::stream<t_weights_stream> &i_data_weights,
	hls::stream<t_o_outp1> &o_outp1,
       // uint8_t weights_ddr[386] 
uint8_t* buffer
	
	) {


#pragma HLS interface m_axi port=buffer depth=386 // offset=slave bundle=gmem


#pragma HLS interface mode=ap_ctrl_chain port=return
	hls::stream<t_net_const_13> s_net_const_13[9];
	hls::stream<t_net_const_14> s_net_const_14[1];
	hls::stream<t_net_const_15> s_net_const_15[9];
	hls::stream<t_net_const_16> s_net_const_16[1];
	hls::stream<t_net_const_17> s_net_const_17[9];
	hls::stream<t_net_const_18> s_net_const_18[1];
	hls::stream<t_net_const_19> s_net_const_19[9];
	hls::stream<t_net_const_20> s_net_const_20[1];
	hls::stream<t_net_const_21> s_net_const_21[9];
	hls::stream<t_net_const_22> s_net_const_22[1];
	hls::stream<t_net_const_23> s_net_const_23[1];
	hls::stream<t_net_const_24> s_net_const_24[1];
	hls::stream<t_net_const_25> s_net_const_25[9];
	hls::stream<t_net_const_26> s_net_const_26[1];
	hls::stream<t_net_const_27> s_net_const_27[9];
	hls::stream<t_net_const_28> s_net_const_28[1];
	hls::stream<t_net_const_29> s_net_const_29[1];
	hls::stream<t_net_const_30> s_net_const_30[1];
	hls::stream<t_net_const_31> s_net_const_31[1];
	hls::stream<t_net_const_32> s_net_const_32[1];
	#pragma HLS interface port=i_data_weights mode=axis
	#pragma HLS stream variable=s_net_const_13 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_14 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_15 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_16 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_17 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_18 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_19 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_20 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_21 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_22 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_23 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_24 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_25 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_26 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_27 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_28 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_29 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_30 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_31 depth=2 type=fifo
	#pragma HLS stream variable=s_net_const_32 depth=2 type=fifo
	hls::stream<t_net_produce_0_struct> s_net_produce_0[2];
	#pragma HLS stream variable=s_net_produce_0 depth=3 type=fifo
	#pragma HLS interface port=i_inp_1 mode=axis
	#pragma HLS dataflow disable_start_propagation
	hls::stream<t_net_produce_0_lb_struct> s_net_produce_0_data[10];
	hls::stream<std::nullptr_t> s_net_produce_0_null[2];
	hls::stream<t_net_produce_0_lb_struct> s_net_produce_0_pre_pad[12];
	#pragma HLS stream variable=s_net_produce_0_pre_pad depth=10 type=fifo
	#pragma HLS bind_storage variable=s_net_produce_0_pre_pad impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[0] depth=3 type=fifo
	#pragma HLS bind_storage variable=s_net_produce_0_data[0] impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[1] depth=3 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[2] depth=48 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[3] depth=48 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[4] depth=3 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[5] depth=3 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[6] depth=48 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[7] depth=48 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[8] depth=3 type=fifo
	#pragma HLS stream variable=s_net_produce_0_data[9] depth=3 type=fifo
	hls::stream<t_net_produce_0_window_struct> s_net_produce_0_compute[1];
	#pragma HLS stream variable=s_net_produce_0_compute depth=2 type=fifo
	hls::stream<t_net_conv_1_struct> s_net_conv_1[2];
	#pragma HLS stream variable=s_net_conv_1 depth=9 type=fifo
	hls::stream<t_net_conv_1_lb_struct> s_net_conv_1_data[10];
	hls::stream<std::nullptr_t> s_net_conv_1_null[2];
	hls::stream<t_net_conv_1_lb_struct> s_net_conv_1_pre_pad[12];
	#pragma HLS stream variable=s_net_conv_1_pre_pad depth=10 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_1_pre_pad impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[0] depth=16 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_1_data[0] impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[1] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[2] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[3] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[4] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[5] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[6] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[7] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[8] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_1_data[9] depth=16 type=fifo
	hls::stream<t_net_conv_1_window_struct> s_net_conv_1_compute[1];
	#pragma HLS stream variable=s_net_conv_1_compute depth=2 type=fifo
	hls::stream<t_net_conv_2_struct> s_net_conv_2[2];
	hls::stream<t_net_conv_1_skip_struct> s_net_conv_1_skip[2];
	#pragma HLS stream variable=s_net_conv_1_skip depth=1073 type=fifo
	#pragma HLS stream variable=s_net_conv_2 depth=3 type=fifo
	hls::stream<t_net_conv_2_lb_struct> s_net_conv_2_data[10];
	hls::stream<std::nullptr_t> s_net_conv_2_null[2];
	hls::stream<t_net_conv_2_lb_struct> s_net_conv_2_pre_pad[12];
	#pragma HLS stream variable=s_net_conv_2_pre_pad depth=10 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_2_pre_pad impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[0] depth=16 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_2_data[0] impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[1] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[2] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[3] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[4] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[5] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[6] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[7] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[8] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_2_data[9] depth=16 type=fifo
	hls::stream<t_net_conv_2_window_struct> s_net_conv_2_compute[1];
	#pragma HLS stream variable=s_net_conv_2_compute depth=2 type=fifo
	hls::stream<t_net_conv_4_struct> s_net_conv_4[2];
	#pragma HLS stream variable=s_net_conv_4 depth=3 type=fifo
	hls::stream<t_net_conv_4_lb_struct> s_net_conv_4_data[13];
	hls::stream<std::nullptr_t> s_net_conv_4_null[2];
	hls::stream<t_net_conv_4_lb_struct> s_net_conv_4_pre_pad[15];
	#pragma HLS stream variable=s_net_conv_4_pre_pad depth=129 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_4_pre_pad impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[0] depth=16 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_4_data[0] impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[1] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[2] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[3] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[4] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[5] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[6] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[7] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[8] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[9] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[10] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[11] depth=16 type=fifo
	#pragma HLS stream variable=s_net_conv_4_data[12] depth=16 type=fifo
	hls::stream<t_net_conv_4_window_struct> s_net_conv_4_compute[1];
	#pragma HLS stream variable=s_net_conv_4_compute depth=2 type=fifo
	hls::stream<t_net_conv_5_struct> s_net_conv_5[2];
	hls::stream<t_net_conv_6_struct> s_net_conv_6[2];
	#pragma HLS stream variable=s_net_conv_5 depth=9 type=fifo
	#pragma HLS stream variable=s_net_conv_6 depth=112 type=fifo
	hls::stream<t_net_conv_5_lb_struct> s_net_conv_5_data[10];
	hls::stream<std::nullptr_t> s_net_conv_5_null[2];
	hls::stream<t_net_conv_5_lb_struct> s_net_conv_5_pre_pad[12];
	#pragma HLS stream variable=s_net_conv_5_pre_pad depth=10 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_5_pre_pad impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[0] depth=32 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_5_data[0] impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[1] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[2] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[3] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[4] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[5] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[6] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[7] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[8] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_5_data[9] depth=32 type=fifo
	hls::stream<t_net_conv_5_window_struct> s_net_conv_5_compute[1];
	#pragma HLS stream variable=s_net_conv_5_compute depth=2 type=fifo
	hls::stream<t_net_conv_7_struct> s_net_conv_7[2];
	#pragma HLS stream variable=s_net_conv_7 depth=5 type=fifo
	hls::stream<t_net_conv_7_lb_struct> s_net_conv_7_data[13];
	hls::stream<std::nullptr_t> s_net_conv_7_null[2];
	hls::stream<t_net_conv_7_lb_struct> s_net_conv_7_pre_pad[15];
	#pragma HLS stream variable=s_net_conv_7_pre_pad depth=257 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_7_pre_pad impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[0] depth=32 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_7_data[0] impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[1] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[2] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[3] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[4] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[5] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[6] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[7] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[8] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[9] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[10] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[11] depth=32 type=fifo
	#pragma HLS stream variable=s_net_conv_7_data[12] depth=32 type=fifo
	hls::stream<t_net_conv_7_window_struct> s_net_conv_7_compute[1];
	#pragma HLS stream variable=s_net_conv_7_compute depth=2 type=fifo
	hls::stream<t_net_conv_8_struct> s_net_conv_8[2];
	hls::stream<t_net_conv_9_struct> s_net_conv_9[2];
	#pragma HLS stream variable=s_net_conv_8 depth=17 type=fifo
	#pragma HLS stream variable=s_net_conv_9 depth=96 type=fifo
	hls::stream<t_net_conv_8_lb_struct> s_net_conv_8_data[10];
	hls::stream<std::nullptr_t> s_net_conv_8_null[2];
	hls::stream<t_net_conv_8_lb_struct> s_net_conv_8_pre_pad[12];
	#pragma HLS stream variable=s_net_conv_8_pre_pad depth=10 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_8_pre_pad impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[0] depth=64 type=fifo
	#pragma HLS bind_storage variable=s_net_conv_8_data[0] impl=AUTO type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[1] depth=64 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[2] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[3] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[4] depth=64 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[5] depth=64 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[6] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[7] depth=256 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[8] depth=64 type=fifo
	#pragma HLS stream variable=s_net_conv_8_data[9] depth=64 type=fifo
	hls::stream<t_net_conv_8_window_struct> s_net_conv_8_compute[1];
	#pragma HLS stream variable=s_net_conv_8_compute depth=2 type=fifo
	hls::stream<t_net_conv_10_struct> s_net_conv_10[2];
	#pragma HLS stream variable=s_net_conv_10 depth=9 type=fifo
	hls::stream<t_net_pool_11_struct> s_net_pool_11[1];
	#pragma HLS stream variable=s_net_pool_11 depth=64 type=fifo
	hls::stream<t_net_pool_11_lb_struct> s_net_pool_11_data[0];
	hls::stream<std::nullptr_t> s_net_pool_11_null[1];
	hls::stream<t_net_pool_11_lb_struct> s_net_pool_11_pre_pad[1];
	#pragma HLS stream variable=s_net_pool_11_pre_pad depth=2 type=fifo
	#pragma HLS bind_storage variable=s_net_pool_11_pre_pad impl=AUTO type=fifo
	hls::stream<t_net_conv_12_struct> s_net_conv_12[1];
	#pragma HLS stream variable=s_net_conv_12 depth=11 type=fifo
	#pragma HLS interface port=o_outp1 mode=axis

	memory_management (
		i_data_weights,
		s_net_const_13,
		s_net_const_14,
		s_net_const_15,
		s_net_const_16,
		s_net_const_17,
		s_net_const_18,
		s_net_const_19,
		s_net_const_20,
		s_net_const_21,
		s_net_const_22,
		s_net_const_23,
		s_net_const_24,
		s_net_const_25,
		s_net_const_26,
		s_net_const_27,
		s_net_const_28,
		s_net_const_29,
		s_net_const_30,
		s_net_const_31,
		s_net_const_32,
buffer
	   //    weights_ddr //  
	);
	
	nn2fpga::produce_stream <
		t_inp_1,
		t_inp_1_part,
		t_net_produce_0_struct,
		t_net_produce_0,
		c_node_produce_0_ich,
		c_node_produce_0_iw,
		c_node_produce_0_ih,
		c_node_produce_0_ws_out,
		c_inp_1,
		1
	> (
		i_inp_1,
		s_net_produce_0
	);

	nn2fpga::shift_op <
		t_net_produce_0_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		2,
		3,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0[0],
		s_net_produce_0_pre_pad[0],
		s_net_produce_0_data[0]
	);

	nn2fpga::shift_op <
		t_net_produce_0_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		2,
		2,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0[1],
		s_net_produce_0_pre_pad[1],
		s_net_produce_0_data[1]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		2,
		1,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[0],
		s_net_produce_0_pre_pad[2],
		s_net_produce_0_data[2]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		2,
		0,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[1],
		s_net_produce_0_pre_pad[3],
		s_net_produce_0_data[3]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		1,
		3,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[2],
		s_net_produce_0_pre_pad[4],
		s_net_produce_0_data[4]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		1,
		2,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[3],
		s_net_produce_0_pre_pad[5],
		s_net_produce_0_data[5]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		1,
		1,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[4],
		s_net_produce_0_pre_pad[6],
		s_net_produce_0_data[6]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		1,
		0,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[5],
		s_net_produce_0_pre_pad[7],
		s_net_produce_0_data[7]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		0,
		3,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[6],
		s_net_produce_0_pre_pad[8],
		s_net_produce_0_data[8]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		0,
		2,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[7],
		s_net_produce_0_pre_pad[9],
		s_net_produce_0_data[9]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		std::nullptr_t,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		0,
		1,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[8],
		s_net_produce_0_pre_pad[10],
		s_net_produce_0_null[1]
	);

	nn2fpga::shift_op <
		t_net_produce_0_lb_struct,
		t_net_produce_0_lb_struct,
		std::nullptr_t,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		0,
		0,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_data[9],
		s_net_produce_0_pre_pad[11],
		s_net_produce_0_null[0]
	);

	nn2fpga::pad_input <
		t_net_produce_0_lb_struct,
		t_net_produce_0_window_struct,
		c_node_conv_1_ich,
		c_node_conv_1_ih,
		c_node_conv_1_iw,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_stride,
		c_node_conv_1_pad,
		c_node_conv_1_ws,
		1,
		1
	> (
		s_net_produce_0_pre_pad,
		s_net_produce_0_compute
	);
	
	nn2fpga::conv_comp <
		t_net_produce_0_window_struct,
		t_net_produce_0_window,
		t_net_produce_0_reduce,
		t_net_const_13,
		t_net_const_13_st,
		t_net_const_14,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_1_acc_struct,
		t_net_conv_1_acc,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_1_struct,
		t_net_conv_1,
		t_net_conv_1_clip,
		t_net_conv_1_mask,
		std::nullptr_t,
		std::nullptr_t,
		c_node_conv_1_ich,
		c_node_conv_1_och,
		c_node_conv_1_oh,
		c_node_conv_1_ow,
		c_node_conv_1_fh,
		c_node_conv_1_fw,
		c_node_conv_1_index,
		c_node_conv_1_stride,
		c_node_conv_1_ops,
		c_node_conv_1_ich_ops,
		1,
		c_node_conv_1_relu,
		c_node_conv_1_reuse,
		c_node_conv_1_ws,
		c_node_conv_1_ws_out,
		8,
		2,
		8,
		4,
		2,
		2,
		1,
		0,
		0,
		0,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_produce_0_compute,
	s_net_const_13,
		s_net_const_14,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_1,
		(hls::stream<std::nullptr_t>*)(nullptr)
	);
	
	nn2fpga::shift_op <
		t_net_conv_1_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		2,
		3,
		c_node_conv_2_ws,
		4,
		1
	> (
		s_net_conv_1[0],
		s_net_conv_1_pre_pad[0],
		s_net_conv_1_data[0]
	);

	nn2fpga::shift_op <
		t_net_conv_1_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		2,
		2,
		c_node_conv_2_ws,
		4,
		1
	> (
		s_net_conv_1[1],
		s_net_conv_1_pre_pad[1],
		s_net_conv_1_data[1]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		2,
		1,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[0],
		s_net_conv_1_pre_pad[2],
		s_net_conv_1_data[2]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		2,
		0,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[1],
		s_net_conv_1_pre_pad[3],
		s_net_conv_1_data[3]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		1,
		3,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[2],
		s_net_conv_1_pre_pad[4],
		s_net_conv_1_data[4]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		1,
		2,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[3],
		s_net_conv_1_pre_pad[5],
		s_net_conv_1_data[5]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		1,
		1,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[4],
		s_net_conv_1_pre_pad[6],
		s_net_conv_1_data[6]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		1,
		0,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[5],
		s_net_conv_1_pre_pad[7],
		s_net_conv_1_data[7]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		0,
		3,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[6],
		s_net_conv_1_pre_pad[8],
		s_net_conv_1_data[8]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		0,
		2,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[7],
		s_net_conv_1_pre_pad[9],
		s_net_conv_1_data[9]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		std::nullptr_t,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		0,
		1,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[8],
		s_net_conv_1_pre_pad[10],
		s_net_conv_1_null[1]
	);

	nn2fpga::shift_op <
		t_net_conv_1_lb_struct,
		t_net_conv_1_lb_struct,
		std::nullptr_t,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		0,
		0,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_data[9],
		s_net_conv_1_pre_pad[11],
		s_net_conv_1_null[0]
	);

	nn2fpga::pad_input <
		t_net_conv_1_lb_struct,
		t_net_conv_1_window_struct,
		c_node_conv_2_ich,
		c_node_conv_2_ih,
		c_node_conv_2_iw,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_stride,
		c_node_conv_2_pad,
		c_node_conv_2_ws,
		1,
		1
	> (
		s_net_conv_1_pre_pad,
		s_net_conv_1_compute
	);

	nn2fpga::conv_comp <
		t_net_conv_1_window_struct,
		t_net_conv_1_window,
		t_net_conv_1_reduce,
		t_net_const_15,
		t_net_const_15_st,
		t_net_const_16,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_1_skip_struct,
		t_net_conv_1_mod,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_2_acc_struct,
		t_net_conv_2_acc,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_2_struct,
		t_net_conv_2,
		t_net_conv_2_clip,
		t_net_conv_2_mask,
		std::nullptr_t,
		std::nullptr_t,
		c_node_conv_2_ich,
		c_node_conv_2_och,
		c_node_conv_2_oh,
		c_node_conv_2_ow,
		c_node_conv_2_fh,
		c_node_conv_2_fw,
		c_node_conv_2_index,
		c_node_conv_2_stride,
		c_node_conv_2_ops,
		c_node_conv_2_ich_ops,
		1,
		c_node_conv_2_relu,
		c_node_conv_2_reuse,
		c_node_conv_2_ws,
		c_node_conv_2_ws_out,
		8,
		3,
		8,
		1,
		2,
		2,
		1,
		0,
		0,
		0,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_conv_1_compute,
		s_net_const_15,
		s_net_const_16,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_1_skip,
		s_net_conv_2,
		(hls::stream<std::nullptr_t>*)(nullptr)
	);

	nn2fpga::shift_op <
		t_net_conv_2_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		2,
		3,
		c_node_conv_3_ws,
		16,
		1
	> (
		s_net_conv_2[0],
		s_net_conv_2_pre_pad[0],
		s_net_conv_2_data[0]
	);

	nn2fpga::shift_op <
		t_net_conv_2_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		2,
		2,
		c_node_conv_3_ws,
		16,
		1
	> (
		s_net_conv_2[1],
		s_net_conv_2_pre_pad[1],
		s_net_conv_2_data[1]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		2,
		1,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[0],
		s_net_conv_2_pre_pad[2],
		s_net_conv_2_data[2]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		2,
		0,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[1],
		s_net_conv_2_pre_pad[3],
		s_net_conv_2_data[3]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		1,
		3,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[2],
		s_net_conv_2_pre_pad[4],
		s_net_conv_2_data[4]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		1,
		2,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[3],
		s_net_conv_2_pre_pad[5],
		s_net_conv_2_data[5]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		1,
		1,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[4],
		s_net_conv_2_pre_pad[6],
		s_net_conv_2_data[6]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		1,
		0,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[5],
		s_net_conv_2_pre_pad[7],
		s_net_conv_2_data[7]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		0,
		3,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[6],
		s_net_conv_2_pre_pad[8],
		s_net_conv_2_data[8]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		0,
		2,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[7],
		s_net_conv_2_pre_pad[9],
		s_net_conv_2_data[9]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		std::nullptr_t,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		0,
		1,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[8],
		s_net_conv_2_pre_pad[10],
		s_net_conv_2_null[1]
	);

	nn2fpga::shift_op <
		t_net_conv_2_lb_struct,
		t_net_conv_2_lb_struct,
		std::nullptr_t,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		0,
		0,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_data[9],
		s_net_conv_2_pre_pad[11],
		s_net_conv_2_null[0]
	);

	nn2fpga::pad_input <
		t_net_conv_2_lb_struct,
		t_net_conv_2_window_struct,
		c_node_conv_3_ich,
		c_node_conv_3_ih,
		c_node_conv_3_iw,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_stride,
		c_node_conv_3_pad,
		c_node_conv_3_ws,
		1,
		1
	> (
		s_net_conv_2_pre_pad,
		s_net_conv_2_compute
	);

	nn2fpga::conv_comp <
		t_net_conv_2_window_struct,
		t_net_conv_2_window,
		t_net_conv_2_reduce,
		t_net_const_17,
		t_net_const_17_st,
		t_net_const_18,
		t_net_conv_1_skip_struct,
		t_net_conv_1_skip_vector,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_4_acc_struct,
		t_net_conv_4_acc,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_4_struct,
		t_net_conv_4,
		t_net_conv_4_clip,
		t_net_conv_4_mask,
		std::nullptr_t,
		std::nullptr_t,
		c_node_conv_3_ich,
		c_node_conv_3_och,
		c_node_conv_3_oh,
		c_node_conv_3_ow,
		c_node_conv_3_fh,
		c_node_conv_3_fw,
		c_node_conv_3_index,
		c_node_conv_3_stride,
		c_node_conv_3_ops,
		c_node_conv_3_ich_ops,
		c_net_conv_1_skip_add_ops,
		c_node_conv_3_relu,
		c_node_conv_3_reuse,
		c_node_conv_3_ws,
		c_node_conv_3_ws_out,
		8,
		3,
		8,
		0,
		2,
		2,
		1,
		0,
		0,
		0,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_conv_2_compute,
		s_net_const_17,
		s_net_const_18,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_1_skip,
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_4,
		(hls::stream<std::nullptr_t>*)(nullptr)
	);

	nn2fpga::shift_op <
		t_net_conv_4_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		2,
		4,
		c_node_conv_4_ws,
		16,
		1
	> (
		s_net_conv_4[1],
		s_net_conv_4_pre_pad[0],
		s_net_conv_4_data[0]
	);

	nn2fpga::shift_op <
		t_net_conv_4_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		2,
		3,
		c_node_conv_4_ws,
		16,
		1
	> (
		s_net_conv_4[0],
		s_net_conv_4_pre_pad[1],
		s_net_conv_4_data[1]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		2,
		2,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[0],
		s_net_conv_4_pre_pad[2],
		s_net_conv_4_data[2]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		2,
		1,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[1],
		s_net_conv_4_pre_pad[3],
		s_net_conv_4_data[4]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		2,
		0,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[2],
		s_net_conv_4_pre_pad[4],
		s_net_conv_4_data[3]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		1,
		4,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[3],
		s_net_conv_4_pre_pad[5],
		s_net_conv_4_data[5]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		1,
		3,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[4],
		s_net_conv_4_pre_pad[6],
		s_net_conv_4_data[6]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		1,
		2,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[5],
		s_net_conv_4_pre_pad[7],
		s_net_conv_4_data[7]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		1,
		1,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[6],
		s_net_conv_4_pre_pad[8],
		s_net_conv_4_data[9]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		1,
		0,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[7],
		s_net_conv_4_pre_pad[9],
		s_net_conv_4_data[8]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		0,
		4,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[8],
		s_net_conv_4_pre_pad[10],
		s_net_conv_4_data[10]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		0,
		3,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[9],
		s_net_conv_4_pre_pad[11],
		s_net_conv_4_data[11]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		0,
		2,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[10],
		s_net_conv_4_pre_pad[12],
		s_net_conv_4_data[12]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		std::nullptr_t,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		0,
		1,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[11],
		s_net_conv_4_pre_pad[13],
		s_net_conv_4_null[1]
	);

	nn2fpga::shift_op <
		t_net_conv_4_lb_struct,
		t_net_conv_4_lb_struct,
		std::nullptr_t,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		0,
		0,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_data[12],
		s_net_conv_4_pre_pad[14],
		s_net_conv_4_null[0]
	);

	nn2fpga::pad_input <
		t_net_conv_4_lb_struct,
		t_net_conv_4_window_struct,
		c_node_conv_4_ich,
		c_node_conv_4_ih,
		c_node_conv_4_iw,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_stride,
		c_node_conv_4_pad,
		c_node_conv_4_ws,
		1,
		1
	> (
		s_net_conv_4_pre_pad,
		s_net_conv_4_compute
	);

	nn2fpga::conv_comp <
		t_net_conv_4_window_struct,
		t_net_conv_4_window,
		t_net_conv_4_reduce,
		t_net_const_19,
		t_net_const_19_st,
		t_net_const_20,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_4_mod,
		t_net_conv_4_1x1,
		t_net_const_23,
		t_net_const_23_st,
		t_net_const_24,
		t_net_conv_5_acc_struct,
		t_net_conv_5_acc,
		t_net_conv_6_acc_struct,
		t_net_conv_6_acc,
		t_net_conv_5_struct,
		t_net_conv_5,
		t_net_conv_5_clip,
		t_net_conv_5_mask,
		t_net_conv_6_struct,
		t_net_conv_6,
		c_node_conv_4_ich,
		c_node_conv_4_och,
		c_node_conv_4_oh,
		c_node_conv_4_ow,
		c_node_conv_4_fh,
		c_node_conv_4_fw,
		c_node_conv_4_index,
		c_node_conv_4_stride,
		c_node_conv_4_ops,
		c_node_conv_4_ich_ops,
		1,
		c_node_conv_4_relu,
		c_node_conv_4_reuse,
		c_node_conv_4_ws,
		c_node_conv_4_ws_out,
		8,
		4,
		8,
		0,
		2,
		2,
		1,
		8,
		3,
		8,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_conv_4_compute,
		s_net_const_19,
		s_net_const_20,
		s_net_const_23,
		s_net_const_24,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_5,
		s_net_conv_6
	);

	nn2fpga::shift_op <
		t_net_conv_5_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		2,
		3,
		c_node_conv_5_ws,
		8,
		1
	> (
		s_net_conv_5[0],
		s_net_conv_5_pre_pad[0],
		s_net_conv_5_data[0]
	);

	nn2fpga::shift_op <
		t_net_conv_5_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		2,
		2,
		c_node_conv_5_ws,
		8,
		1
	> (
		s_net_conv_5[1],
		s_net_conv_5_pre_pad[1],
		s_net_conv_5_data[1]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		2,
		1,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[0],
		s_net_conv_5_pre_pad[2],
		s_net_conv_5_data[2]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		2,
		0,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[1],
		s_net_conv_5_pre_pad[3],
		s_net_conv_5_data[3]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		1,
		3,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[2],
		s_net_conv_5_pre_pad[4],
		s_net_conv_5_data[4]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		1,
		2,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[3],
		s_net_conv_5_pre_pad[5],
		s_net_conv_5_data[5]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		1,
		1,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[4],
		s_net_conv_5_pre_pad[6],
		s_net_conv_5_data[6]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		1,
		0,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[5],
		s_net_conv_5_pre_pad[7],
		s_net_conv_5_data[7]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		0,
		3,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[6],
		s_net_conv_5_pre_pad[8],
		s_net_conv_5_data[8]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		0,
		2,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[7],
		s_net_conv_5_pre_pad[9],
		s_net_conv_5_data[9]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		std::nullptr_t,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		0,
		1,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[8],
		s_net_conv_5_pre_pad[10],
		s_net_conv_5_null[1]
	);

	nn2fpga::shift_op <
		t_net_conv_5_lb_struct,
		t_net_conv_5_lb_struct,
		std::nullptr_t,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		0,
		0,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_data[9],
		s_net_conv_5_pre_pad[11],
		s_net_conv_5_null[0]
	);

	nn2fpga::pad_input <
		t_net_conv_5_lb_struct,
		t_net_conv_5_window_struct,
		c_node_conv_5_ich,
		c_node_conv_5_ih,
		c_node_conv_5_iw,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_stride,
		c_node_conv_5_pad,
		c_node_conv_5_ws,
		1,
		1
	> (
		s_net_conv_5_pre_pad,
		s_net_conv_5_compute
	);

	nn2fpga::conv_comp <
		t_net_conv_5_window_struct,
		t_net_conv_5_window,
		t_net_conv_5_reduce,
		t_net_const_21,
		t_net_const_21_st,
		t_net_const_22,
		t_net_conv_6_struct,
		t_net_conv_6_vector,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_7_acc_struct,
		t_net_conv_7_acc,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_7_struct,
		t_net_conv_7,
		t_net_conv_7_clip,
		t_net_conv_7_mask,
		std::nullptr_t,
		std::nullptr_t,
		c_node_conv_5_ich,
		c_node_conv_5_och,
		c_node_conv_5_oh,
		c_node_conv_5_ow,
		c_node_conv_5_fh,
		c_node_conv_5_fw,
		c_node_conv_5_index,
		c_node_conv_5_stride,
		c_node_conv_5_ops,
		c_node_conv_5_ich_ops,
		c_net_conv_6_add_ops,
		c_node_conv_5_relu,
		c_node_conv_5_reuse,
		c_node_conv_5_ws,
		c_node_conv_5_ws_out,
		8,
		3,
		8,
		0,
		2,
		2,
		1,
		0,
		0,
		0,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_conv_5_compute,
		s_net_const_21,
		s_net_const_22,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_6,
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_7,
		(hls::stream<std::nullptr_t>*)(nullptr)
	);

	nn2fpga::shift_op <
		t_net_conv_7_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		2,
		4,
		c_node_conv_6_ws,
		16,
		1
	> (
		s_net_conv_7[1],
		s_net_conv_7_pre_pad[0],
		s_net_conv_7_data[0]
	);

	nn2fpga::shift_op <
		t_net_conv_7_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		2,
		3,
		c_node_conv_6_ws,
		16,
		1
	> (
		s_net_conv_7[0],
		s_net_conv_7_pre_pad[1],
		s_net_conv_7_data[1]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		2,
		2,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[0],
		s_net_conv_7_pre_pad[2],
		s_net_conv_7_data[2]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		2,
		1,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[1],
		s_net_conv_7_pre_pad[3],
		s_net_conv_7_data[4]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		2,
		0,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[2],
		s_net_conv_7_pre_pad[4],
		s_net_conv_7_data[3]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		1,
		4,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[3],
		s_net_conv_7_pre_pad[5],
		s_net_conv_7_data[5]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		1,
		3,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[4],
		s_net_conv_7_pre_pad[6],
		s_net_conv_7_data[6]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		1,
		2,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[5],
		s_net_conv_7_pre_pad[7],
		s_net_conv_7_data[7]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		1,
		1,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[6],
		s_net_conv_7_pre_pad[8],
		s_net_conv_7_data[9]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		1,
		0,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[7],
		s_net_conv_7_pre_pad[9],
		s_net_conv_7_data[8]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		0,
		4,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[8],
		s_net_conv_7_pre_pad[10],
		s_net_conv_7_data[10]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		0,
		3,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[9],
		s_net_conv_7_pre_pad[11],
		s_net_conv_7_data[11]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		0,
		2,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[10],
		s_net_conv_7_pre_pad[12],
		s_net_conv_7_data[12]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		std::nullptr_t,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		0,
		1,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[11],
		s_net_conv_7_pre_pad[13],
		s_net_conv_7_null[1]
	);

	nn2fpga::shift_op <
		t_net_conv_7_lb_struct,
		t_net_conv_7_lb_struct,
		std::nullptr_t,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		0,
		0,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_data[12],
		s_net_conv_7_pre_pad[14],
		s_net_conv_7_null[0]
	);

	nn2fpga::pad_input <
		t_net_conv_7_lb_struct,
		t_net_conv_7_window_struct,
		c_node_conv_6_ich,
		c_node_conv_6_ih,
		c_node_conv_6_iw,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_stride,
		c_node_conv_6_pad,
		c_node_conv_6_ws,
		1,
		1
	> (
		s_net_conv_7_pre_pad,
		s_net_conv_7_compute
	);

	nn2fpga::conv_comp <
		t_net_conv_7_window_struct,
		t_net_conv_7_window,
		t_net_conv_7_reduce,
		t_net_const_25,
		t_net_const_25_st,
		t_net_const_26,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_7_1x1,
		t_net_const_29,
		t_net_const_29_st,
		t_net_const_30,
		t_net_conv_8_acc_struct,
		t_net_conv_8_acc,
		t_net_conv_9_acc_struct,
		t_net_conv_9_acc,
		t_net_conv_8_struct,
		t_net_conv_8,
		t_net_conv_8_clip,
		t_net_conv_8_mask,
		t_net_conv_9_struct,
		t_net_conv_9,
		c_node_conv_6_ich,
		c_node_conv_6_och,
		c_node_conv_6_oh,
		c_node_conv_6_ow,
		c_node_conv_6_fh,
		c_node_conv_6_fw,
		c_node_conv_6_index,
		c_node_conv_6_stride,
		c_node_conv_6_ops,
		c_node_conv_6_ich_ops,
		1,
		c_node_conv_6_relu,
		c_node_conv_6_reuse,
		c_node_conv_6_ws,
		c_node_conv_6_ws_out,
		8,
		3,
		8,
		-1,
		2,
		2,
		1,
		8,
		3,
		8,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_conv_7_compute,
		s_net_const_25,
		s_net_const_26,
		s_net_const_29,
		s_net_const_30,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_8,
		s_net_conv_9
	);

	nn2fpga::shift_op <
		t_net_conv_8_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		2,
		3,
		c_node_conv_7_ws,
		8,
		1
	> (
		s_net_conv_8[0],
		s_net_conv_8_pre_pad[0],
		s_net_conv_8_data[0]
	);

	nn2fpga::shift_op <
		t_net_conv_8_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		2,
		2,
		c_node_conv_7_ws,
		8,
		1
	> (
		s_net_conv_8[1],
		s_net_conv_8_pre_pad[1],
		s_net_conv_8_data[1]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		2,
		1,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[0],
		s_net_conv_8_pre_pad[2],
		s_net_conv_8_data[2]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		2,
		0,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[1],
		s_net_conv_8_pre_pad[3],
		s_net_conv_8_data[3]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		1,
		3,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[2],
		s_net_conv_8_pre_pad[4],
		s_net_conv_8_data[4]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		1,
		2,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[3],
		s_net_conv_8_pre_pad[5],
		s_net_conv_8_data[5]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		1,
		1,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[4],
		s_net_conv_8_pre_pad[6],
		s_net_conv_8_data[6]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		1,
		0,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[5],
		s_net_conv_8_pre_pad[7],
		s_net_conv_8_data[7]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		0,
		3,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[6],
		s_net_conv_8_pre_pad[8],
		s_net_conv_8_data[8]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		0,
		2,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[7],
		s_net_conv_8_pre_pad[9],
		s_net_conv_8_data[9]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		std::nullptr_t,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		0,
		1,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[8],
		s_net_conv_8_pre_pad[10],
		s_net_conv_8_null[1]
	);

	nn2fpga::shift_op <
		t_net_conv_8_lb_struct,
		t_net_conv_8_lb_struct,
		std::nullptr_t,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		0,
		0,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_data[9],
		s_net_conv_8_pre_pad[11],
		s_net_conv_8_null[0]
	);

	nn2fpga::pad_input <
		t_net_conv_8_lb_struct,
		t_net_conv_8_window_struct,
		c_node_conv_7_ich,
		c_node_conv_7_ih,
		c_node_conv_7_iw,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_stride,
		c_node_conv_7_pad,
		c_node_conv_7_ws,
		1,
		1
	> (
		s_net_conv_8_pre_pad,
		s_net_conv_8_compute
	);

	nn2fpga::conv_comp <
		t_net_conv_8_window_struct,
		t_net_conv_8_window,
		t_net_conv_8_reduce,
		t_net_const_27,
		t_net_const_27_st,
		t_net_const_28,
		t_net_conv_9_struct,
		t_net_conv_9_vector,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_10_acc_struct,
		t_net_conv_10_acc,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_10_struct,
		t_net_conv_10,
		t_net_conv_10_clip,
		t_net_conv_10_mask,
		std::nullptr_t,
		std::nullptr_t,
		c_node_conv_7_ich,
		c_node_conv_7_och,
		c_node_conv_7_oh,
		c_node_conv_7_ow,
		c_node_conv_7_fh,
		c_node_conv_7_fw,
		c_node_conv_7_index,
		c_node_conv_7_stride,
		c_node_conv_7_ops,
		c_node_conv_7_ich_ops,
		c_net_conv_9_add_ops,
		c_node_conv_7_relu,
		c_node_conv_7_reuse,
		c_node_conv_7_ws,
		c_node_conv_7_ws_out,
		8,
		3,
		8,
		0,
		2,
		2,
		1,
		0,
		0,
		0,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_conv_8_compute,
		s_net_const_27,
		s_net_const_28,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_9,
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_10,
		(hls::stream<std::nullptr_t>*)(nullptr)
	);

	nn2fpga::pool_op <
		t_net_conv_10_struct,
		t_net_conv_10_vector,
		t_net_pool_11_struct,
		t_net_pool_11,
		t_node_pool_8_acc,
		c_node_pool_8_ich,
		c_node_pool_8_och,
		c_node_pool_8_iw,
		c_node_pool_8_ih,
		c_node_pool_8_ow,
		c_node_pool_8_oh,
		c_node_pool_8_fw,
		c_node_pool_8_fh,
		c_node_pool_8_stride,
		c_node_pool_8_pad,
		c_node_pool_8_pool,
		c_node_pool_8_ws,
		c_node_pool_8_ws_out,
		c_node_pool_8_ops,
		c_node_pool_8_in_ops
	> (
		s_net_conv_10,
		s_net_pool_11
	);

	nn2fpga::shift_op <
		t_net_pool_11_struct,
		t_net_pool_11_lb_struct,
		std::nullptr_t,
		c_node_conv_9_ich,
		c_node_conv_9_och,
		c_node_conv_9_ih,
		c_node_conv_9_iw,
		c_node_conv_9_oh,
		c_node_conv_9_ow,
		c_node_conv_9_fh,
		c_node_conv_9_fw,
		c_node_conv_9_stride,
		c_node_conv_9_pad,
		0,
		0,
		c_node_conv_9_ws,
		16,
		16
	> (
		s_net_pool_11[0],
		s_net_pool_11_pre_pad[0],
		s_net_pool_11_null[0]
	);

	nn2fpga::conv_comp <
		t_net_pool_11_lb_struct,
		t_net_pool_11_lb,
		t_net_pool_11_vector,
		t_net_const_31,
		t_net_const_31_st,
		t_net_const_32,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_12_acc_struct,
		t_net_conv_12_acc,
		std::nullptr_t,
		std::nullptr_t,
		t_net_conv_12_struct,
		t_net_conv_12,
		t_net_conv_12_clip,
		t_net_conv_12_mask,
		std::nullptr_t,
		std::nullptr_t,
		c_node_conv_9_ich,
		c_node_conv_9_och,
		c_node_conv_9_oh,
		c_node_conv_9_ow,
		c_node_conv_9_fh,
		c_node_conv_9_fw,
		c_node_conv_9_index,
		c_node_conv_9_stride,
		c_node_conv_9_ops,
		c_node_conv_9_ich_ops,
		1,
		c_node_conv_9_relu,
		c_node_conv_9_reuse,
		c_node_conv_9_ws,
		c_node_conv_9_ws_out,
		8,
		4,
		8,
		2,
		2,
		0,
		-1,
		0,
		0,
		0,
		0,
		2,
		1,
		0,
		0
	> (
		s_net_pool_11_pre_pad,
		s_net_const_31,
		s_net_const_32,
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		(hls::stream<std::nullptr_t>*)(nullptr),
		s_net_conv_12,
		(hls::stream<std::nullptr_t>*)(nullptr)
	);

	nn2fpga::consume_stream <
		t_net_conv_12_struct,
		t_o_net_conv_12,
		c_node_const_29_och,
		c_node_const_29_ow,
		c_node_const_29_oh,
		c_node_const_29_ws
	> (
		s_net_conv_12,
		o_outp1
	);

}

}
