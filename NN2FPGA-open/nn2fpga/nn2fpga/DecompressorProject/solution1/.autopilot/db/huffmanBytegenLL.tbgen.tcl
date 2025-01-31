set moduleName huffmanBytegenLL
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {huffmanBytegenLL}
set C_modelType { int 39 }
set C_modelArgList {
	{ p_bitbuffer_read int 32 regular  }
	{ bits_cntr_read int 6 regular  }
	{ lz77_output_stream int 16 regular {fifo 1 volatile }  }
	{ huffman_eos_stream int 1 regular {fifo 0 volatile }  }
	{ huffman_input_stream int 16 regular {fifo 0 volatile }  }
	{ codeOffsets_0 int 16 regular {array 15 { 1 1 } 1 1 }  }
	{ codeOffsets_1 int 16 regular {array 15 { 1 1 } 1 1 }  }
	{ bl1Codes_0 int 9 regular {array 2 { 1 } 1 1 }  }
	{ bl1Codes_1 int 9 regular {array 2 { 1 } 1 1 }  }
	{ bl2Codes_0 int 9 regular {array 4 { 1 } 1 1 }  }
	{ bl2Codes_1 int 9 regular {array 4 { 1 } 1 1 }  }
	{ bl3Codes_0 int 9 regular {array 8 { 1 } 1 1 }  }
	{ bl3Codes_1 int 9 regular {array 8 { 1 } 1 1 }  }
	{ bl4Codes_0 int 9 regular {array 16 { 1 } 1 1 }  }
	{ bl4Codes_1 int 9 regular {array 16 { 1 } 1 1 }  }
	{ bl5Codes_0 int 9 regular {array 32 { 1 } 1 1 }  }
	{ bl5Codes_1 int 9 regular {array 32 { 1 } 1 1 }  }
	{ bl6Codes_0 int 9 regular {array 64 { 1 } 1 1 }  }
	{ bl6Codes_1 int 9 regular {array 64 { 1 } 1 1 }  }
	{ bl7Codes_0 int 9 regular {array 128 { 1 } 1 1 }  }
	{ bl7Codes_1 int 9 regular {array 128 { 1 } 1 1 }  }
	{ bl8Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl8Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl9Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl9Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl10Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl10Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl11Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl11Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl12Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl12Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl13Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl13Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl14Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl14Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl15Codes_0 int 9 regular {array 256 { 1 } 1 1 }  }
	{ bl15Codes_1 int 9 regular {array 256 { 1 } 1 1 }  }
	{ p_read2 int 1 regular  }
	{ ignoreValue uint 3 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_bitbuffer_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bits_cntr_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "lz77_output_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "huffman_eos_stream", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_input_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bl1Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl1Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl2Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl2Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl3Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl3Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl4Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl4Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl5Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl5Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl6Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl6Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl7Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl7Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl8Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl8Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl9Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl9Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl10Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl10Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl11Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl11Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl12Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl12Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl13Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl13Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl14Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl14Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl15Codes_0", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl15Codes_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ignoreValue", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 39} ]}
# RTL Port declarations: 
set portNum 124
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_bitbuffer_read sc_in sc_lv 32 signal 0 } 
	{ bits_cntr_read sc_in sc_lv 6 signal 1 } 
	{ lz77_output_stream_din sc_out sc_lv 16 signal 2 } 
	{ lz77_output_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ lz77_output_stream_write sc_out sc_logic 1 signal 2 } 
	{ huffman_eos_stream_dout sc_in sc_lv 1 signal 3 } 
	{ huffman_eos_stream_empty_n sc_in sc_logic 1 signal 3 } 
	{ huffman_eos_stream_read sc_out sc_logic 1 signal 3 } 
	{ huffman_input_stream_dout sc_in sc_lv 16 signal 4 } 
	{ huffman_input_stream_empty_n sc_in sc_logic 1 signal 4 } 
	{ huffman_input_stream_read sc_out sc_logic 1 signal 4 } 
	{ codeOffsets_0_address0 sc_out sc_lv 4 signal 5 } 
	{ codeOffsets_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ codeOffsets_0_q0 sc_in sc_lv 16 signal 5 } 
	{ codeOffsets_0_address1 sc_out sc_lv 4 signal 5 } 
	{ codeOffsets_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ codeOffsets_0_q1 sc_in sc_lv 16 signal 5 } 
	{ codeOffsets_1_address0 sc_out sc_lv 4 signal 6 } 
	{ codeOffsets_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ codeOffsets_1_q0 sc_in sc_lv 16 signal 6 } 
	{ codeOffsets_1_address1 sc_out sc_lv 4 signal 6 } 
	{ codeOffsets_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ codeOffsets_1_q1 sc_in sc_lv 16 signal 6 } 
	{ bl1Codes_0_address0 sc_out sc_lv 1 signal 7 } 
	{ bl1Codes_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ bl1Codes_0_q0 sc_in sc_lv 9 signal 7 } 
	{ bl1Codes_1_address0 sc_out sc_lv 1 signal 8 } 
	{ bl1Codes_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ bl1Codes_1_q0 sc_in sc_lv 9 signal 8 } 
	{ bl2Codes_0_address0 sc_out sc_lv 2 signal 9 } 
	{ bl2Codes_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ bl2Codes_0_q0 sc_in sc_lv 9 signal 9 } 
	{ bl2Codes_1_address0 sc_out sc_lv 2 signal 10 } 
	{ bl2Codes_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ bl2Codes_1_q0 sc_in sc_lv 9 signal 10 } 
	{ bl3Codes_0_address0 sc_out sc_lv 3 signal 11 } 
	{ bl3Codes_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ bl3Codes_0_q0 sc_in sc_lv 9 signal 11 } 
	{ bl3Codes_1_address0 sc_out sc_lv 3 signal 12 } 
	{ bl3Codes_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ bl3Codes_1_q0 sc_in sc_lv 9 signal 12 } 
	{ bl4Codes_0_address0 sc_out sc_lv 4 signal 13 } 
	{ bl4Codes_0_ce0 sc_out sc_logic 1 signal 13 } 
	{ bl4Codes_0_q0 sc_in sc_lv 9 signal 13 } 
	{ bl4Codes_1_address0 sc_out sc_lv 4 signal 14 } 
	{ bl4Codes_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ bl4Codes_1_q0 sc_in sc_lv 9 signal 14 } 
	{ bl5Codes_0_address0 sc_out sc_lv 5 signal 15 } 
	{ bl5Codes_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ bl5Codes_0_q0 sc_in sc_lv 9 signal 15 } 
	{ bl5Codes_1_address0 sc_out sc_lv 5 signal 16 } 
	{ bl5Codes_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ bl5Codes_1_q0 sc_in sc_lv 9 signal 16 } 
	{ bl6Codes_0_address0 sc_out sc_lv 6 signal 17 } 
	{ bl6Codes_0_ce0 sc_out sc_logic 1 signal 17 } 
	{ bl6Codes_0_q0 sc_in sc_lv 9 signal 17 } 
	{ bl6Codes_1_address0 sc_out sc_lv 6 signal 18 } 
	{ bl6Codes_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ bl6Codes_1_q0 sc_in sc_lv 9 signal 18 } 
	{ bl7Codes_0_address0 sc_out sc_lv 7 signal 19 } 
	{ bl7Codes_0_ce0 sc_out sc_logic 1 signal 19 } 
	{ bl7Codes_0_q0 sc_in sc_lv 9 signal 19 } 
	{ bl7Codes_1_address0 sc_out sc_lv 7 signal 20 } 
	{ bl7Codes_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ bl7Codes_1_q0 sc_in sc_lv 9 signal 20 } 
	{ bl8Codes_0_address0 sc_out sc_lv 8 signal 21 } 
	{ bl8Codes_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ bl8Codes_0_q0 sc_in sc_lv 9 signal 21 } 
	{ bl8Codes_1_address0 sc_out sc_lv 8 signal 22 } 
	{ bl8Codes_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ bl8Codes_1_q0 sc_in sc_lv 9 signal 22 } 
	{ bl9Codes_0_address0 sc_out sc_lv 8 signal 23 } 
	{ bl9Codes_0_ce0 sc_out sc_logic 1 signal 23 } 
	{ bl9Codes_0_q0 sc_in sc_lv 9 signal 23 } 
	{ bl9Codes_1_address0 sc_out sc_lv 8 signal 24 } 
	{ bl9Codes_1_ce0 sc_out sc_logic 1 signal 24 } 
	{ bl9Codes_1_q0 sc_in sc_lv 9 signal 24 } 
	{ bl10Codes_0_address0 sc_out sc_lv 8 signal 25 } 
	{ bl10Codes_0_ce0 sc_out sc_logic 1 signal 25 } 
	{ bl10Codes_0_q0 sc_in sc_lv 9 signal 25 } 
	{ bl10Codes_1_address0 sc_out sc_lv 8 signal 26 } 
	{ bl10Codes_1_ce0 sc_out sc_logic 1 signal 26 } 
	{ bl10Codes_1_q0 sc_in sc_lv 9 signal 26 } 
	{ bl11Codes_0_address0 sc_out sc_lv 8 signal 27 } 
	{ bl11Codes_0_ce0 sc_out sc_logic 1 signal 27 } 
	{ bl11Codes_0_q0 sc_in sc_lv 9 signal 27 } 
	{ bl11Codes_1_address0 sc_out sc_lv 8 signal 28 } 
	{ bl11Codes_1_ce0 sc_out sc_logic 1 signal 28 } 
	{ bl11Codes_1_q0 sc_in sc_lv 9 signal 28 } 
	{ bl12Codes_0_address0 sc_out sc_lv 8 signal 29 } 
	{ bl12Codes_0_ce0 sc_out sc_logic 1 signal 29 } 
	{ bl12Codes_0_q0 sc_in sc_lv 9 signal 29 } 
	{ bl12Codes_1_address0 sc_out sc_lv 8 signal 30 } 
	{ bl12Codes_1_ce0 sc_out sc_logic 1 signal 30 } 
	{ bl12Codes_1_q0 sc_in sc_lv 9 signal 30 } 
	{ bl13Codes_0_address0 sc_out sc_lv 8 signal 31 } 
	{ bl13Codes_0_ce0 sc_out sc_logic 1 signal 31 } 
	{ bl13Codes_0_q0 sc_in sc_lv 9 signal 31 } 
	{ bl13Codes_1_address0 sc_out sc_lv 8 signal 32 } 
	{ bl13Codes_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ bl13Codes_1_q0 sc_in sc_lv 9 signal 32 } 
	{ bl14Codes_0_address0 sc_out sc_lv 8 signal 33 } 
	{ bl14Codes_0_ce0 sc_out sc_logic 1 signal 33 } 
	{ bl14Codes_0_q0 sc_in sc_lv 9 signal 33 } 
	{ bl14Codes_1_address0 sc_out sc_lv 8 signal 34 } 
	{ bl14Codes_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ bl14Codes_1_q0 sc_in sc_lv 9 signal 34 } 
	{ bl15Codes_0_address0 sc_out sc_lv 8 signal 35 } 
	{ bl15Codes_0_ce0 sc_out sc_logic 1 signal 35 } 
	{ bl15Codes_0_q0 sc_in sc_lv 9 signal 35 } 
	{ bl15Codes_1_address0 sc_out sc_lv 8 signal 36 } 
	{ bl15Codes_1_ce0 sc_out sc_logic 1 signal 36 } 
	{ bl15Codes_1_q0 sc_in sc_lv 9 signal 36 } 
	{ p_read2 sc_in sc_lv 1 signal 37 } 
	{ ignoreValue sc_in sc_lv 3 signal 38 } 
	{ ap_return_0 sc_out sc_lv 1 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 6 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_bitbuffer_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_bitbuffer_read", "role": "default" }} , 
 	{ "name": "bits_cntr_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bits_cntr_read", "role": "default" }} , 
 	{ "name": "lz77_output_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "din" }} , 
 	{ "name": "lz77_output_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "full_n" }} , 
 	{ "name": "lz77_output_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "write" }} , 
 	{ "name": "huffman_eos_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "dout" }} , 
 	{ "name": "huffman_eos_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_eos_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "read" }} , 
 	{ "name": "huffman_input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "dout" }} , 
 	{ "name": "huffman_input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "read" }} , 
 	{ "name": "codeOffsets_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets_0", "role": "address0" }} , 
 	{ "name": "codeOffsets_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets_0", "role": "ce0" }} , 
 	{ "name": "codeOffsets_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0", "role": "q0" }} , 
 	{ "name": "codeOffsets_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets_0", "role": "address1" }} , 
 	{ "name": "codeOffsets_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets_0", "role": "ce1" }} , 
 	{ "name": "codeOffsets_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0", "role": "q1" }} , 
 	{ "name": "codeOffsets_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "address0" }} , 
 	{ "name": "codeOffsets_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "ce0" }} , 
 	{ "name": "codeOffsets_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "q0" }} , 
 	{ "name": "codeOffsets_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "address1" }} , 
 	{ "name": "codeOffsets_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "ce1" }} , 
 	{ "name": "codeOffsets_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "q1" }} , 
 	{ "name": "bl1Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes_0", "role": "address0" }} , 
 	{ "name": "bl1Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes_0", "role": "ce0" }} , 
 	{ "name": "bl1Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl1Codes_0", "role": "q0" }} , 
 	{ "name": "bl1Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes_1", "role": "address0" }} , 
 	{ "name": "bl1Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes_1", "role": "ce0" }} , 
 	{ "name": "bl1Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl1Codes_1", "role": "q0" }} , 
 	{ "name": "bl2Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bl2Codes_0", "role": "address0" }} , 
 	{ "name": "bl2Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl2Codes_0", "role": "ce0" }} , 
 	{ "name": "bl2Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl2Codes_0", "role": "q0" }} , 
 	{ "name": "bl2Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bl2Codes_1", "role": "address0" }} , 
 	{ "name": "bl2Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl2Codes_1", "role": "ce0" }} , 
 	{ "name": "bl2Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl2Codes_1", "role": "q0" }} , 
 	{ "name": "bl3Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bl3Codes_0", "role": "address0" }} , 
 	{ "name": "bl3Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl3Codes_0", "role": "ce0" }} , 
 	{ "name": "bl3Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl3Codes_0", "role": "q0" }} , 
 	{ "name": "bl3Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bl3Codes_1", "role": "address0" }} , 
 	{ "name": "bl3Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl3Codes_1", "role": "ce0" }} , 
 	{ "name": "bl3Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl3Codes_1", "role": "q0" }} , 
 	{ "name": "bl4Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bl4Codes_0", "role": "address0" }} , 
 	{ "name": "bl4Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl4Codes_0", "role": "ce0" }} , 
 	{ "name": "bl4Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl4Codes_0", "role": "q0" }} , 
 	{ "name": "bl4Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bl4Codes_1", "role": "address0" }} , 
 	{ "name": "bl4Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl4Codes_1", "role": "ce0" }} , 
 	{ "name": "bl4Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl4Codes_1", "role": "q0" }} , 
 	{ "name": "bl5Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bl5Codes_0", "role": "address0" }} , 
 	{ "name": "bl5Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl5Codes_0", "role": "ce0" }} , 
 	{ "name": "bl5Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl5Codes_0", "role": "q0" }} , 
 	{ "name": "bl5Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bl5Codes_1", "role": "address0" }} , 
 	{ "name": "bl5Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl5Codes_1", "role": "ce0" }} , 
 	{ "name": "bl5Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl5Codes_1", "role": "q0" }} , 
 	{ "name": "bl6Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bl6Codes_0", "role": "address0" }} , 
 	{ "name": "bl6Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl6Codes_0", "role": "ce0" }} , 
 	{ "name": "bl6Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl6Codes_0", "role": "q0" }} , 
 	{ "name": "bl6Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bl6Codes_1", "role": "address0" }} , 
 	{ "name": "bl6Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl6Codes_1", "role": "ce0" }} , 
 	{ "name": "bl6Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl6Codes_1", "role": "q0" }} , 
 	{ "name": "bl7Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bl7Codes_0", "role": "address0" }} , 
 	{ "name": "bl7Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl7Codes_0", "role": "ce0" }} , 
 	{ "name": "bl7Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl7Codes_0", "role": "q0" }} , 
 	{ "name": "bl7Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bl7Codes_1", "role": "address0" }} , 
 	{ "name": "bl7Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl7Codes_1", "role": "ce0" }} , 
 	{ "name": "bl7Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl7Codes_1", "role": "q0" }} , 
 	{ "name": "bl8Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl8Codes_0", "role": "address0" }} , 
 	{ "name": "bl8Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl8Codes_0", "role": "ce0" }} , 
 	{ "name": "bl8Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl8Codes_0", "role": "q0" }} , 
 	{ "name": "bl8Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl8Codes_1", "role": "address0" }} , 
 	{ "name": "bl8Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl8Codes_1", "role": "ce0" }} , 
 	{ "name": "bl8Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl8Codes_1", "role": "q0" }} , 
 	{ "name": "bl9Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl9Codes_0", "role": "address0" }} , 
 	{ "name": "bl9Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl9Codes_0", "role": "ce0" }} , 
 	{ "name": "bl9Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl9Codes_0", "role": "q0" }} , 
 	{ "name": "bl9Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl9Codes_1", "role": "address0" }} , 
 	{ "name": "bl9Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl9Codes_1", "role": "ce0" }} , 
 	{ "name": "bl9Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl9Codes_1", "role": "q0" }} , 
 	{ "name": "bl10Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl10Codes_0", "role": "address0" }} , 
 	{ "name": "bl10Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl10Codes_0", "role": "ce0" }} , 
 	{ "name": "bl10Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl10Codes_0", "role": "q0" }} , 
 	{ "name": "bl10Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl10Codes_1", "role": "address0" }} , 
 	{ "name": "bl10Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl10Codes_1", "role": "ce0" }} , 
 	{ "name": "bl10Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl10Codes_1", "role": "q0" }} , 
 	{ "name": "bl11Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl11Codes_0", "role": "address0" }} , 
 	{ "name": "bl11Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl11Codes_0", "role": "ce0" }} , 
 	{ "name": "bl11Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl11Codes_0", "role": "q0" }} , 
 	{ "name": "bl11Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl11Codes_1", "role": "address0" }} , 
 	{ "name": "bl11Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl11Codes_1", "role": "ce0" }} , 
 	{ "name": "bl11Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl11Codes_1", "role": "q0" }} , 
 	{ "name": "bl12Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl12Codes_0", "role": "address0" }} , 
 	{ "name": "bl12Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl12Codes_0", "role": "ce0" }} , 
 	{ "name": "bl12Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl12Codes_0", "role": "q0" }} , 
 	{ "name": "bl12Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl12Codes_1", "role": "address0" }} , 
 	{ "name": "bl12Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl12Codes_1", "role": "ce0" }} , 
 	{ "name": "bl12Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl12Codes_1", "role": "q0" }} , 
 	{ "name": "bl13Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl13Codes_0", "role": "address0" }} , 
 	{ "name": "bl13Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl13Codes_0", "role": "ce0" }} , 
 	{ "name": "bl13Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl13Codes_0", "role": "q0" }} , 
 	{ "name": "bl13Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl13Codes_1", "role": "address0" }} , 
 	{ "name": "bl13Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl13Codes_1", "role": "ce0" }} , 
 	{ "name": "bl13Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl13Codes_1", "role": "q0" }} , 
 	{ "name": "bl14Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl14Codes_0", "role": "address0" }} , 
 	{ "name": "bl14Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl14Codes_0", "role": "ce0" }} , 
 	{ "name": "bl14Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl14Codes_0", "role": "q0" }} , 
 	{ "name": "bl14Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl14Codes_1", "role": "address0" }} , 
 	{ "name": "bl14Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl14Codes_1", "role": "ce0" }} , 
 	{ "name": "bl14Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl14Codes_1", "role": "q0" }} , 
 	{ "name": "bl15Codes_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl15Codes_0", "role": "address0" }} , 
 	{ "name": "bl15Codes_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl15Codes_0", "role": "ce0" }} , 
 	{ "name": "bl15Codes_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl15Codes_0", "role": "q0" }} , 
 	{ "name": "bl15Codes_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl15Codes_1", "role": "address0" }} , 
 	{ "name": "bl15Codes_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl15Codes_1", "role": "ce0" }} , 
 	{ "name": "bl15Codes_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl15Codes_1", "role": "q0" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "ignoreValue", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ignoreValue", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "huffmanBytegenLL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_bitbuffer_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "lz77_output_stream", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "lz77_output_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "huffman_eos_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "huffman_input_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "codeOffsets_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "codeOffsets_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl1Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl1Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl1Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl1Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl2Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl2Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl2Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl2Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl3Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl3Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl3Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl3Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl4Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl4Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl4Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl4Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl5Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl5Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl5Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl5Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl6Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl6Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl6Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl6Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl7Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl7Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl7Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl7Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl8Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl8Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl8Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl8Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl9Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl9Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl9Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl9Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl10Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl10Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl10Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl10Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl11Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl11Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl11Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl11Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl12Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl12Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl12Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl12Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl13Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl13Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl13Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl13Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl14Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl14Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl14Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl14Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl15Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl15Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl15Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl15Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ignoreValue", "Type" : "None", "Direction" : "I"},
			{"Name" : "lext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "lext", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "dext", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "huffmanBytegenLL_Pipeline_ByteGen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_bitbuffer_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_0_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "bl1Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl1Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl2Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl2Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl3Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl3Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl4Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl4Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl5Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl5Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl6Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl6Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl7Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl7Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl8Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl8Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl9Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl9Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl10Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl10Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl11Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl11Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl12Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl12Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl13Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl13Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl14Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl14Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl15Codes_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl15Codes_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ignoreValue_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lz77_output_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz77_output_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "done_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buffer_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "counter_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "lext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dext", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ByteGen", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.lext_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.dext_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.sparsemux_31_4_9_1_1_U27", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.sparsemux_31_4_5_1_1_U28", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	huffmanBytegenLL {
		p_bitbuffer_read {Type I LastRead 7 FirstWrite -1}
		bits_cntr_read {Type I LastRead 7 FirstWrite -1}
		lz77_output_stream {Type O LastRead -1 FirstWrite 1}
		huffman_eos_stream {Type I LastRead 1 FirstWrite -1}
		huffman_input_stream {Type I LastRead 1 FirstWrite -1}
		codeOffsets_0 {Type I LastRead 8 FirstWrite -1}
		codeOffsets_1 {Type I LastRead 8 FirstWrite -1}
		bl1Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl1Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl2Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl2Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl3Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl3Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl4Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl4Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl5Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl5Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl6Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl6Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl7Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl7Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl8Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl8Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl9Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl9Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl10Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl10Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl11Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl11Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl12Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl12Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl13Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl13Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl14Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl14Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl15Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl15Codes_1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 7 FirstWrite -1}
		ignoreValue {Type I LastRead 7 FirstWrite -1}
		lext {Type I LastRead -1 FirstWrite -1}
		dext {Type I LastRead -1 FirstWrite -1}}
	huffmanBytegenLL_Pipeline_ByteGen {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_bitbuffer_read {Type I LastRead 0 FirstWrite -1}
		bits_cntr_read {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_1 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_2 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_3 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_4 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_5 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_6 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_7 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_8 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_9 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_10 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_11 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_12 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_13 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_0_load_14 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_1 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_2 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_3 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_4 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_5 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_6 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_7 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_8 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_9 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_10 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_11 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_12 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_13 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_1_load_14 {Type I LastRead 0 FirstWrite -1}
		bl1Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl1Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl2Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl2Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl3Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl3Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl4Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl4Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl5Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl5Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl6Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl6Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl7Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl7Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl8Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl8Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl9Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl9Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl10Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl10Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl11Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl11Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl12Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl12Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl13Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl13Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl14Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl14Codes_1 {Type I LastRead 0 FirstWrite -1}
		bl15Codes_0 {Type I LastRead 0 FirstWrite -1}
		bl15Codes_1 {Type I LastRead 0 FirstWrite -1}
		ignoreValue_cast {Type I LastRead 0 FirstWrite -1}
		lz77_output_stream {Type O LastRead -1 FirstWrite 1}
		huffman_input_stream {Type I LastRead 1 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 1 FirstWrite -1}
		done_0_out {Type O LastRead -1 FirstWrite 0}
		buffer_out {Type O LastRead -1 FirstWrite 0}
		counter_out {Type O LastRead -1 FirstWrite 0}
		lext {Type I LastRead -1 FirstWrite -1}
		dext {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_bitbuffer_read { ap_none {  { p_bitbuffer_read in_data 0 32 } } }
	bits_cntr_read { ap_none {  { bits_cntr_read in_data 0 6 } } }
	lz77_output_stream { ap_fifo {  { lz77_output_stream_din fifo_data_in 1 16 }  { lz77_output_stream_full_n fifo_status 0 1 }  { lz77_output_stream_write fifo_port_we 1 1 } } }
	huffman_eos_stream { ap_fifo {  { huffman_eos_stream_dout fifo_data_in 0 1 }  { huffman_eos_stream_empty_n fifo_status 0 1 }  { huffman_eos_stream_read fifo_port_we 1 1 } } }
	huffman_input_stream { ap_fifo {  { huffman_input_stream_dout fifo_data_in 0 16 }  { huffman_input_stream_empty_n fifo_status 0 1 }  { huffman_input_stream_read fifo_port_we 1 1 } } }
	codeOffsets_0 { ap_memory {  { codeOffsets_0_address0 mem_address 1 4 }  { codeOffsets_0_ce0 mem_ce 1 1 }  { codeOffsets_0_q0 mem_dout 0 16 }  { codeOffsets_0_address1 MemPortADDR2 1 4 }  { codeOffsets_0_ce1 MemPortCE2 1 1 }  { codeOffsets_0_q1 MemPortDOUT2 0 16 } } }
	codeOffsets_1 { ap_memory {  { codeOffsets_1_address0 mem_address 1 4 }  { codeOffsets_1_ce0 mem_ce 1 1 }  { codeOffsets_1_q0 mem_dout 0 16 }  { codeOffsets_1_address1 MemPortADDR2 1 4 }  { codeOffsets_1_ce1 MemPortCE2 1 1 }  { codeOffsets_1_q1 MemPortDOUT2 0 16 } } }
	bl1Codes_0 { ap_memory {  { bl1Codes_0_address0 mem_address 1 1 }  { bl1Codes_0_ce0 mem_ce 1 1 }  { bl1Codes_0_q0 mem_dout 0 9 } } }
	bl1Codes_1 { ap_memory {  { bl1Codes_1_address0 mem_address 1 1 }  { bl1Codes_1_ce0 mem_ce 1 1 }  { bl1Codes_1_q0 mem_dout 0 9 } } }
	bl2Codes_0 { ap_memory {  { bl2Codes_0_address0 mem_address 1 2 }  { bl2Codes_0_ce0 mem_ce 1 1 }  { bl2Codes_0_q0 mem_dout 0 9 } } }
	bl2Codes_1 { ap_memory {  { bl2Codes_1_address0 mem_address 1 2 }  { bl2Codes_1_ce0 mem_ce 1 1 }  { bl2Codes_1_q0 mem_dout 0 9 } } }
	bl3Codes_0 { ap_memory {  { bl3Codes_0_address0 mem_address 1 3 }  { bl3Codes_0_ce0 mem_ce 1 1 }  { bl3Codes_0_q0 mem_dout 0 9 } } }
	bl3Codes_1 { ap_memory {  { bl3Codes_1_address0 mem_address 1 3 }  { bl3Codes_1_ce0 mem_ce 1 1 }  { bl3Codes_1_q0 mem_dout 0 9 } } }
	bl4Codes_0 { ap_memory {  { bl4Codes_0_address0 mem_address 1 4 }  { bl4Codes_0_ce0 mem_ce 1 1 }  { bl4Codes_0_q0 mem_dout 0 9 } } }
	bl4Codes_1 { ap_memory {  { bl4Codes_1_address0 mem_address 1 4 }  { bl4Codes_1_ce0 mem_ce 1 1 }  { bl4Codes_1_q0 mem_dout 0 9 } } }
	bl5Codes_0 { ap_memory {  { bl5Codes_0_address0 mem_address 1 5 }  { bl5Codes_0_ce0 mem_ce 1 1 }  { bl5Codes_0_q0 mem_dout 0 9 } } }
	bl5Codes_1 { ap_memory {  { bl5Codes_1_address0 mem_address 1 5 }  { bl5Codes_1_ce0 mem_ce 1 1 }  { bl5Codes_1_q0 mem_dout 0 9 } } }
	bl6Codes_0 { ap_memory {  { bl6Codes_0_address0 mem_address 1 6 }  { bl6Codes_0_ce0 mem_ce 1 1 }  { bl6Codes_0_q0 mem_dout 0 9 } } }
	bl6Codes_1 { ap_memory {  { bl6Codes_1_address0 mem_address 1 6 }  { bl6Codes_1_ce0 mem_ce 1 1 }  { bl6Codes_1_q0 mem_dout 0 9 } } }
	bl7Codes_0 { ap_memory {  { bl7Codes_0_address0 mem_address 1 7 }  { bl7Codes_0_ce0 mem_ce 1 1 }  { bl7Codes_0_q0 mem_dout 0 9 } } }
	bl7Codes_1 { ap_memory {  { bl7Codes_1_address0 mem_address 1 7 }  { bl7Codes_1_ce0 mem_ce 1 1 }  { bl7Codes_1_q0 mem_dout 0 9 } } }
	bl8Codes_0 { ap_memory {  { bl8Codes_0_address0 mem_address 1 8 }  { bl8Codes_0_ce0 mem_ce 1 1 }  { bl8Codes_0_q0 mem_dout 0 9 } } }
	bl8Codes_1 { ap_memory {  { bl8Codes_1_address0 mem_address 1 8 }  { bl8Codes_1_ce0 mem_ce 1 1 }  { bl8Codes_1_q0 mem_dout 0 9 } } }
	bl9Codes_0 { ap_memory {  { bl9Codes_0_address0 mem_address 1 8 }  { bl9Codes_0_ce0 mem_ce 1 1 }  { bl9Codes_0_q0 mem_dout 0 9 } } }
	bl9Codes_1 { ap_memory {  { bl9Codes_1_address0 mem_address 1 8 }  { bl9Codes_1_ce0 mem_ce 1 1 }  { bl9Codes_1_q0 mem_dout 0 9 } } }
	bl10Codes_0 { ap_memory {  { bl10Codes_0_address0 mem_address 1 8 }  { bl10Codes_0_ce0 mem_ce 1 1 }  { bl10Codes_0_q0 mem_dout 0 9 } } }
	bl10Codes_1 { ap_memory {  { bl10Codes_1_address0 mem_address 1 8 }  { bl10Codes_1_ce0 mem_ce 1 1 }  { bl10Codes_1_q0 mem_dout 0 9 } } }
	bl11Codes_0 { ap_memory {  { bl11Codes_0_address0 mem_address 1 8 }  { bl11Codes_0_ce0 mem_ce 1 1 }  { bl11Codes_0_q0 mem_dout 0 9 } } }
	bl11Codes_1 { ap_memory {  { bl11Codes_1_address0 mem_address 1 8 }  { bl11Codes_1_ce0 mem_ce 1 1 }  { bl11Codes_1_q0 mem_dout 0 9 } } }
	bl12Codes_0 { ap_memory {  { bl12Codes_0_address0 mem_address 1 8 }  { bl12Codes_0_ce0 mem_ce 1 1 }  { bl12Codes_0_q0 mem_dout 0 9 } } }
	bl12Codes_1 { ap_memory {  { bl12Codes_1_address0 mem_address 1 8 }  { bl12Codes_1_ce0 mem_ce 1 1 }  { bl12Codes_1_q0 mem_dout 0 9 } } }
	bl13Codes_0 { ap_memory {  { bl13Codes_0_address0 mem_address 1 8 }  { bl13Codes_0_ce0 mem_ce 1 1 }  { bl13Codes_0_q0 mem_dout 0 9 } } }
	bl13Codes_1 { ap_memory {  { bl13Codes_1_address0 mem_address 1 8 }  { bl13Codes_1_ce0 mem_ce 1 1 }  { bl13Codes_1_q0 mem_dout 0 9 } } }
	bl14Codes_0 { ap_memory {  { bl14Codes_0_address0 mem_address 1 8 }  { bl14Codes_0_ce0 mem_ce 1 1 }  { bl14Codes_0_q0 mem_dout 0 9 } } }
	bl14Codes_1 { ap_memory {  { bl14Codes_1_address0 mem_address 1 8 }  { bl14Codes_1_ce0 mem_ce 1 1 }  { bl14Codes_1_q0 mem_dout 0 9 } } }
	bl15Codes_0 { ap_memory {  { bl15Codes_0_address0 mem_address 1 8 }  { bl15Codes_0_ce0 mem_ce 1 1 }  { bl15Codes_0_q0 mem_dout 0 9 } } }
	bl15Codes_1 { ap_memory {  { bl15Codes_1_address0 mem_address 1 8 }  { bl15Codes_1_ce0 mem_ce 1 1 }  { bl15Codes_1_q0 mem_dout 0 9 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 1 } } }
	ignoreValue { ap_none {  { ignoreValue in_data 0 3 } } }
}
