#include "mm2s.h"
#include "params.h"

const int c_weights_dim = 78006;
        const int c_first_weights_dim =386; //
        const int c_second_weights_dim = c_weights_dim - c_first_weights_dim; //

extern "C++" {
	void mm2s_weights(
		const t_weights_st* c_weights,
		const unsigned int c_second_weights_dim,
		hls::stream<t_weights_stream>& c_weights_stream
	
		) {

 

		nn2fpga::mm2s<t_weights_st, t_weights_stream>
		(
        c_weights , 
        c_second_weights_dim, 
        c_weights_stream
    );
	}
}
