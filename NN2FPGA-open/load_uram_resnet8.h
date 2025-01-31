#ifndef __LOAD_URAM_RESNET8__
#define __LOAD_URAM_RESNET8__
namespace nn2fpga {
#include "params.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "nn2fpga/weights_utils.h"

void load_uram(
	hls::stream<t_weights_stream> &i_data_weights,
        hls::stream<t_net_const_13_init> s_net_const_13_init[9],
	hls::stream<t_net_const_14_init> s_net_const_14_init[1],
	hls::stream<t_net_const_15_init> s_net_const_15_init[9],
	hls::stream<t_net_const_16_init> s_net_const_16_init[1],
	hls::stream<t_net_const_17_init> s_net_const_17_init[9],
	hls::stream<t_net_const_18_init> s_net_const_18_init[1],
	hls::stream<t_net_const_19_init> s_net_const_19_init[9],
	hls::stream<t_net_const_20_init> s_net_const_20_init[1],
	hls::stream<t_net_const_21_init> s_net_const_21_init[9],
	hls::stream<t_net_const_22_init> s_net_const_22_init[1],
	hls::stream<t_net_const_23_init> s_net_const_23_init[1],
	hls::stream<t_net_const_24_init> s_net_const_24_init[1],
	hls::stream<t_net_const_25_init> s_net_const_25_init[9],
	hls::stream<t_net_const_26_init> s_net_const_26_init[1],
	hls::stream<t_net_const_27_init> s_net_const_27_init[9],
	hls::stream<t_net_const_28_init> s_net_const_28_init[1],
	hls::stream<t_net_const_29_init> s_net_const_29_init[1],
	hls::stream<t_net_const_30_init> s_net_const_30_init[1],
	hls::stream<t_net_const_31_init> s_net_const_31_init[1],
	hls::stream<t_net_const_32_init> s_net_const_32_init[1]
) {

	static bool s_init;
/*	 nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_13_st,
		t_net_const_13_init,
		432,
		9,
		1,
		8,
		1,
		4
	> (
		i_data_weights,
		s_init,
		nullptr //aggiunta
                
	); 
*/
	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_14_st,
		t_net_const_14_init,
		16,
		1,
		2,
		8,
		1,
		4
	> (
		i_data_weights,
		s_init,
		s_net_const_14_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_15_st,
		t_net_const_15_init,
		2304,
		9,
		1,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_15_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_16_st,
		t_net_const_16_init,
		16,
		1,
		2,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_16_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_17_st,
		t_net_const_17_init,
		2304,
		9,
		1,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_17_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_18_st,
		t_net_const_18_init,
		16,
		1,
		2,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_18_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_19_st,
		t_net_const_19_init,
		4608,
		9,
		1,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_19_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_20_st,
		t_net_const_20_init,
		32,
		1,
		2,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_20_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_21_st,
		t_net_const_21_init,
		9216,
		9,
		1,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_21_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_22_st,
		t_net_const_22_init,
		32,
		1,
		2,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_22_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_23_st,
		t_net_const_23_init,
		512,
		1,
		1,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_23_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_24_st,
		t_net_const_24_init,
		32,
		1,
		2,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_24_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_25_st,
		t_net_const_25_init,
		18432,
		9,
		1,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_25_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_26_st,
		t_net_const_26_init,
		64,
		1,
		2,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_26_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_27_st,
		t_net_const_27_init,
		36864,
		9,
		1,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_27_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_28_st,
		t_net_const_28_init,
		64,
		1,
		2,
		8,
		1,
		16
	> (
		i_data_weights,
		s_init,
		s_net_const_28_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_29_st,
		t_net_const_29_init,
		2048,
		1,
		1,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_29_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_30_st,
		t_net_const_30_init,
		64,
		1,
		2,
		8,
		1,
		8
	> (
		i_data_weights,
		s_init,
		s_net_const_30_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_31_st,
		t_net_const_31_init,
		640,
		1,
		1,
		8,
		1,
		1
	> (
		i_data_weights,
		s_init,
		s_net_const_31_init
	);

	nn2fpga::produce_stream <
		t_weights_stream,
		t_net_const_32_st,
		t_net_const_32_init,
		10,
		1,
		2,
		8,
		1,
		1
	> (
		i_data_weights,
		s_init,
		s_net_const_32_init
	);

	s_init = true;

}
} // namespace nn2fpga
#endif
