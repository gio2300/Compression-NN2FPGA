#ifndef __RESNET8__H__
#define __RESNET8__H__
#include "params.h"

void resnet8(
	hls::stream<t_inp_1> &i_inp_1,
	hls::stream<t_weights_stream> &i_data_weights,
	hls::stream<t_o_outp1> &o_outp1,
	uint8_t weightscompr[386] //

//	uint8_t* buffer
	);

#endif  /*__RESNET8__H__ */
