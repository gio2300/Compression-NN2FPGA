#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_input", 1024, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("out_stream_din", 32, hls_out, 1, "ap_fifo", "fifo_data_in", 1),
	Port_Property("out_stream_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("out_stream_write", 1, hls_out, 1, "ap_fifo", "fifo_port_we", 1),
	Port_Property("out_eos_din", 1, hls_out, 2, "ap_fifo", "fifo_data_in", 2),
	Port_Property("out_eos_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 2),
	Port_Property("out_eos_write", 1, hls_out, 2, "ap_fifo", "fifo_port_we", 2),
};
const char* HLS_Design_Meta::dut_name = "decompressor_kernel";
