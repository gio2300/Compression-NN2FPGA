set moduleName huffmanBytegenLL_Pipeline_ByteGen
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {huffmanBytegenLL_Pipeline_ByteGen}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read2 int 1 regular  }
	{ p_bitbuffer_read int 32 regular  }
	{ bits_cntr_read int 6 regular  }
	{ codeOffsets_0_load int 16 regular  }
	{ codeOffsets_0_load_1 int 16 regular  }
	{ codeOffsets_0_load_2 int 16 regular  }
	{ codeOffsets_0_load_3 int 16 regular  }
	{ codeOffsets_0_load_4 int 16 regular  }
	{ codeOffsets_0_load_5 int 16 regular  }
	{ codeOffsets_0_load_6 int 16 regular  }
	{ codeOffsets_0_load_7 int 16 regular  }
	{ codeOffsets_0_load_8 int 16 regular  }
	{ codeOffsets_0_load_9 int 16 regular  }
	{ codeOffsets_0_load_10 int 16 regular  }
	{ codeOffsets_0_load_11 int 16 regular  }
	{ codeOffsets_0_load_12 int 16 regular  }
	{ codeOffsets_0_load_13 int 16 regular  }
	{ codeOffsets_0_load_14 int 16 regular  }
	{ codeOffsets_1_load int 16 regular  }
	{ codeOffsets_1_load_1 int 16 regular  }
	{ codeOffsets_1_load_2 int 16 regular  }
	{ codeOffsets_1_load_3 int 16 regular  }
	{ codeOffsets_1_load_4 int 16 regular  }
	{ codeOffsets_1_load_5 int 16 regular  }
	{ codeOffsets_1_load_6 int 16 regular  }
	{ codeOffsets_1_load_7 int 16 regular  }
	{ codeOffsets_1_load_8 int 16 regular  }
	{ codeOffsets_1_load_9 int 16 regular  }
	{ codeOffsets_1_load_10 int 16 regular  }
	{ codeOffsets_1_load_11 int 16 regular  }
	{ codeOffsets_1_load_12 int 16 regular  }
	{ codeOffsets_1_load_13 int 16 regular  }
	{ codeOffsets_1_load_14 int 16 regular  }
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
	{ ignoreValue_cast int 3 regular  }
	{ lz77_output_stream int 16 regular {fifo 1 volatile }  }
	{ huffman_input_stream int 16 regular {fifo 0 volatile }  }
	{ huffman_eos_stream int 1 regular {fifo 0 volatile }  }
	{ done_0_out int 1 regular {pointer 1}  }
	{ buffer_out int 32 regular {pointer 1}  }
	{ counter_out int 6 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_bitbuffer_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bits_cntr_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_0_load_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_1_load_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
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
 	{ "Name" : "ignoreValue_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "lz77_output_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "huffman_input_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_eos_stream", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "done_0_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "counter_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 145
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lz77_output_stream_din sc_out sc_lv 16 signal 64 } 
	{ lz77_output_stream_full_n sc_in sc_logic 1 signal 64 } 
	{ lz77_output_stream_write sc_out sc_logic 1 signal 64 } 
	{ huffman_input_stream_dout sc_in sc_lv 16 signal 65 } 
	{ huffman_input_stream_empty_n sc_in sc_logic 1 signal 65 } 
	{ huffman_input_stream_read sc_out sc_logic 1 signal 65 } 
	{ huffman_eos_stream_dout sc_in sc_lv 1 signal 66 } 
	{ huffman_eos_stream_empty_n sc_in sc_logic 1 signal 66 } 
	{ huffman_eos_stream_read sc_out sc_logic 1 signal 66 } 
	{ p_read2 sc_in sc_lv 1 signal 0 } 
	{ p_bitbuffer_read sc_in sc_lv 32 signal 1 } 
	{ bits_cntr_read sc_in sc_lv 6 signal 2 } 
	{ codeOffsets_0_load sc_in sc_lv 16 signal 3 } 
	{ codeOffsets_0_load_1 sc_in sc_lv 16 signal 4 } 
	{ codeOffsets_0_load_2 sc_in sc_lv 16 signal 5 } 
	{ codeOffsets_0_load_3 sc_in sc_lv 16 signal 6 } 
	{ codeOffsets_0_load_4 sc_in sc_lv 16 signal 7 } 
	{ codeOffsets_0_load_5 sc_in sc_lv 16 signal 8 } 
	{ codeOffsets_0_load_6 sc_in sc_lv 16 signal 9 } 
	{ codeOffsets_0_load_7 sc_in sc_lv 16 signal 10 } 
	{ codeOffsets_0_load_8 sc_in sc_lv 16 signal 11 } 
	{ codeOffsets_0_load_9 sc_in sc_lv 16 signal 12 } 
	{ codeOffsets_0_load_10 sc_in sc_lv 16 signal 13 } 
	{ codeOffsets_0_load_11 sc_in sc_lv 16 signal 14 } 
	{ codeOffsets_0_load_12 sc_in sc_lv 16 signal 15 } 
	{ codeOffsets_0_load_13 sc_in sc_lv 16 signal 16 } 
	{ codeOffsets_0_load_14 sc_in sc_lv 16 signal 17 } 
	{ codeOffsets_1_load sc_in sc_lv 16 signal 18 } 
	{ codeOffsets_1_load_1 sc_in sc_lv 16 signal 19 } 
	{ codeOffsets_1_load_2 sc_in sc_lv 16 signal 20 } 
	{ codeOffsets_1_load_3 sc_in sc_lv 16 signal 21 } 
	{ codeOffsets_1_load_4 sc_in sc_lv 16 signal 22 } 
	{ codeOffsets_1_load_5 sc_in sc_lv 16 signal 23 } 
	{ codeOffsets_1_load_6 sc_in sc_lv 16 signal 24 } 
	{ codeOffsets_1_load_7 sc_in sc_lv 16 signal 25 } 
	{ codeOffsets_1_load_8 sc_in sc_lv 16 signal 26 } 
	{ codeOffsets_1_load_9 sc_in sc_lv 16 signal 27 } 
	{ codeOffsets_1_load_10 sc_in sc_lv 16 signal 28 } 
	{ codeOffsets_1_load_11 sc_in sc_lv 16 signal 29 } 
	{ codeOffsets_1_load_12 sc_in sc_lv 16 signal 30 } 
	{ codeOffsets_1_load_13 sc_in sc_lv 16 signal 31 } 
	{ codeOffsets_1_load_14 sc_in sc_lv 16 signal 32 } 
	{ bl1Codes_0_address0 sc_out sc_lv 1 signal 33 } 
	{ bl1Codes_0_ce0 sc_out sc_logic 1 signal 33 } 
	{ bl1Codes_0_q0 sc_in sc_lv 9 signal 33 } 
	{ bl1Codes_1_address0 sc_out sc_lv 1 signal 34 } 
	{ bl1Codes_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ bl1Codes_1_q0 sc_in sc_lv 9 signal 34 } 
	{ bl2Codes_0_address0 sc_out sc_lv 2 signal 35 } 
	{ bl2Codes_0_ce0 sc_out sc_logic 1 signal 35 } 
	{ bl2Codes_0_q0 sc_in sc_lv 9 signal 35 } 
	{ bl2Codes_1_address0 sc_out sc_lv 2 signal 36 } 
	{ bl2Codes_1_ce0 sc_out sc_logic 1 signal 36 } 
	{ bl2Codes_1_q0 sc_in sc_lv 9 signal 36 } 
	{ bl3Codes_0_address0 sc_out sc_lv 3 signal 37 } 
	{ bl3Codes_0_ce0 sc_out sc_logic 1 signal 37 } 
	{ bl3Codes_0_q0 sc_in sc_lv 9 signal 37 } 
	{ bl3Codes_1_address0 sc_out sc_lv 3 signal 38 } 
	{ bl3Codes_1_ce0 sc_out sc_logic 1 signal 38 } 
	{ bl3Codes_1_q0 sc_in sc_lv 9 signal 38 } 
	{ bl4Codes_0_address0 sc_out sc_lv 4 signal 39 } 
	{ bl4Codes_0_ce0 sc_out sc_logic 1 signal 39 } 
	{ bl4Codes_0_q0 sc_in sc_lv 9 signal 39 } 
	{ bl4Codes_1_address0 sc_out sc_lv 4 signal 40 } 
	{ bl4Codes_1_ce0 sc_out sc_logic 1 signal 40 } 
	{ bl4Codes_1_q0 sc_in sc_lv 9 signal 40 } 
	{ bl5Codes_0_address0 sc_out sc_lv 5 signal 41 } 
	{ bl5Codes_0_ce0 sc_out sc_logic 1 signal 41 } 
	{ bl5Codes_0_q0 sc_in sc_lv 9 signal 41 } 
	{ bl5Codes_1_address0 sc_out sc_lv 5 signal 42 } 
	{ bl5Codes_1_ce0 sc_out sc_logic 1 signal 42 } 
	{ bl5Codes_1_q0 sc_in sc_lv 9 signal 42 } 
	{ bl6Codes_0_address0 sc_out sc_lv 6 signal 43 } 
	{ bl6Codes_0_ce0 sc_out sc_logic 1 signal 43 } 
	{ bl6Codes_0_q0 sc_in sc_lv 9 signal 43 } 
	{ bl6Codes_1_address0 sc_out sc_lv 6 signal 44 } 
	{ bl6Codes_1_ce0 sc_out sc_logic 1 signal 44 } 
	{ bl6Codes_1_q0 sc_in sc_lv 9 signal 44 } 
	{ bl7Codes_0_address0 sc_out sc_lv 7 signal 45 } 
	{ bl7Codes_0_ce0 sc_out sc_logic 1 signal 45 } 
	{ bl7Codes_0_q0 sc_in sc_lv 9 signal 45 } 
	{ bl7Codes_1_address0 sc_out sc_lv 7 signal 46 } 
	{ bl7Codes_1_ce0 sc_out sc_logic 1 signal 46 } 
	{ bl7Codes_1_q0 sc_in sc_lv 9 signal 46 } 
	{ bl8Codes_0_address0 sc_out sc_lv 8 signal 47 } 
	{ bl8Codes_0_ce0 sc_out sc_logic 1 signal 47 } 
	{ bl8Codes_0_q0 sc_in sc_lv 9 signal 47 } 
	{ bl8Codes_1_address0 sc_out sc_lv 8 signal 48 } 
	{ bl8Codes_1_ce0 sc_out sc_logic 1 signal 48 } 
	{ bl8Codes_1_q0 sc_in sc_lv 9 signal 48 } 
	{ bl9Codes_0_address0 sc_out sc_lv 8 signal 49 } 
	{ bl9Codes_0_ce0 sc_out sc_logic 1 signal 49 } 
	{ bl9Codes_0_q0 sc_in sc_lv 9 signal 49 } 
	{ bl9Codes_1_address0 sc_out sc_lv 8 signal 50 } 
	{ bl9Codes_1_ce0 sc_out sc_logic 1 signal 50 } 
	{ bl9Codes_1_q0 sc_in sc_lv 9 signal 50 } 
	{ bl10Codes_0_address0 sc_out sc_lv 8 signal 51 } 
	{ bl10Codes_0_ce0 sc_out sc_logic 1 signal 51 } 
	{ bl10Codes_0_q0 sc_in sc_lv 9 signal 51 } 
	{ bl10Codes_1_address0 sc_out sc_lv 8 signal 52 } 
	{ bl10Codes_1_ce0 sc_out sc_logic 1 signal 52 } 
	{ bl10Codes_1_q0 sc_in sc_lv 9 signal 52 } 
	{ bl11Codes_0_address0 sc_out sc_lv 8 signal 53 } 
	{ bl11Codes_0_ce0 sc_out sc_logic 1 signal 53 } 
	{ bl11Codes_0_q0 sc_in sc_lv 9 signal 53 } 
	{ bl11Codes_1_address0 sc_out sc_lv 8 signal 54 } 
	{ bl11Codes_1_ce0 sc_out sc_logic 1 signal 54 } 
	{ bl11Codes_1_q0 sc_in sc_lv 9 signal 54 } 
	{ bl12Codes_0_address0 sc_out sc_lv 8 signal 55 } 
	{ bl12Codes_0_ce0 sc_out sc_logic 1 signal 55 } 
	{ bl12Codes_0_q0 sc_in sc_lv 9 signal 55 } 
	{ bl12Codes_1_address0 sc_out sc_lv 8 signal 56 } 
	{ bl12Codes_1_ce0 sc_out sc_logic 1 signal 56 } 
	{ bl12Codes_1_q0 sc_in sc_lv 9 signal 56 } 
	{ bl13Codes_0_address0 sc_out sc_lv 8 signal 57 } 
	{ bl13Codes_0_ce0 sc_out sc_logic 1 signal 57 } 
	{ bl13Codes_0_q0 sc_in sc_lv 9 signal 57 } 
	{ bl13Codes_1_address0 sc_out sc_lv 8 signal 58 } 
	{ bl13Codes_1_ce0 sc_out sc_logic 1 signal 58 } 
	{ bl13Codes_1_q0 sc_in sc_lv 9 signal 58 } 
	{ bl14Codes_0_address0 sc_out sc_lv 8 signal 59 } 
	{ bl14Codes_0_ce0 sc_out sc_logic 1 signal 59 } 
	{ bl14Codes_0_q0 sc_in sc_lv 9 signal 59 } 
	{ bl14Codes_1_address0 sc_out sc_lv 8 signal 60 } 
	{ bl14Codes_1_ce0 sc_out sc_logic 1 signal 60 } 
	{ bl14Codes_1_q0 sc_in sc_lv 9 signal 60 } 
	{ bl15Codes_0_address0 sc_out sc_lv 8 signal 61 } 
	{ bl15Codes_0_ce0 sc_out sc_logic 1 signal 61 } 
	{ bl15Codes_0_q0 sc_in sc_lv 9 signal 61 } 
	{ bl15Codes_1_address0 sc_out sc_lv 8 signal 62 } 
	{ bl15Codes_1_ce0 sc_out sc_logic 1 signal 62 } 
	{ bl15Codes_1_q0 sc_in sc_lv 9 signal 62 } 
	{ ignoreValue_cast sc_in sc_lv 3 signal 63 } 
	{ done_0_out sc_out sc_lv 1 signal 67 } 
	{ done_0_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ buffer_out sc_out sc_lv 32 signal 68 } 
	{ buffer_out_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ counter_out sc_out sc_lv 6 signal 69 } 
	{ counter_out_ap_vld sc_out sc_logic 1 outvld 69 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lz77_output_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "din" }} , 
 	{ "name": "lz77_output_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "full_n" }} , 
 	{ "name": "lz77_output_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "write" }} , 
 	{ "name": "huffman_input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "dout" }} , 
 	{ "name": "huffman_input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "read" }} , 
 	{ "name": "huffman_eos_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "dout" }} , 
 	{ "name": "huffman_eos_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_eos_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "read" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_bitbuffer_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_bitbuffer_read", "role": "default" }} , 
 	{ "name": "bits_cntr_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bits_cntr_read", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_1", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_2", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_3", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_4", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_5", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_6", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_7", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_8", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_9", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_10", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_11", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_12", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_13", "role": "default" }} , 
 	{ "name": "codeOffsets_0_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_0_load_14", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_1", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_2", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_3", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_4", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_5", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_6", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_7", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_8", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_9", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_10", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_11", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_12", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_13", "role": "default" }} , 
 	{ "name": "codeOffsets_1_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1_load_14", "role": "default" }} , 
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
 	{ "name": "ignoreValue_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ignoreValue_cast", "role": "default" }} , 
 	{ "name": "done_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "done_0_out", "role": "default" }} , 
 	{ "name": "done_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "done_0_out", "role": "ap_vld" }} , 
 	{ "name": "buffer_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_out", "role": "default" }} , 
 	{ "name": "buffer_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "buffer_out", "role": "ap_vld" }} , 
 	{ "name": "counter_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "counter_out", "role": "default" }} , 
 	{ "name": "counter_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "counter_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lext_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dext_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_31_4_9_1_1_U27", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_31_4_5_1_1_U28", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read2 { ap_none {  { p_read2 in_data 0 1 } } }
	p_bitbuffer_read { ap_none {  { p_bitbuffer_read in_data 0 32 } } }
	bits_cntr_read { ap_none {  { bits_cntr_read in_data 0 6 } } }
	codeOffsets_0_load { ap_none {  { codeOffsets_0_load in_data 0 16 } } }
	codeOffsets_0_load_1 { ap_none {  { codeOffsets_0_load_1 in_data 0 16 } } }
	codeOffsets_0_load_2 { ap_none {  { codeOffsets_0_load_2 in_data 0 16 } } }
	codeOffsets_0_load_3 { ap_none {  { codeOffsets_0_load_3 in_data 0 16 } } }
	codeOffsets_0_load_4 { ap_none {  { codeOffsets_0_load_4 in_data 0 16 } } }
	codeOffsets_0_load_5 { ap_none {  { codeOffsets_0_load_5 in_data 0 16 } } }
	codeOffsets_0_load_6 { ap_none {  { codeOffsets_0_load_6 in_data 0 16 } } }
	codeOffsets_0_load_7 { ap_none {  { codeOffsets_0_load_7 in_data 0 16 } } }
	codeOffsets_0_load_8 { ap_none {  { codeOffsets_0_load_8 in_data 0 16 } } }
	codeOffsets_0_load_9 { ap_none {  { codeOffsets_0_load_9 in_data 0 16 } } }
	codeOffsets_0_load_10 { ap_none {  { codeOffsets_0_load_10 in_data 0 16 } } }
	codeOffsets_0_load_11 { ap_none {  { codeOffsets_0_load_11 in_data 0 16 } } }
	codeOffsets_0_load_12 { ap_none {  { codeOffsets_0_load_12 in_data 0 16 } } }
	codeOffsets_0_load_13 { ap_none {  { codeOffsets_0_load_13 in_data 0 16 } } }
	codeOffsets_0_load_14 { ap_none {  { codeOffsets_0_load_14 in_data 0 16 } } }
	codeOffsets_1_load { ap_none {  { codeOffsets_1_load in_data 0 16 } } }
	codeOffsets_1_load_1 { ap_none {  { codeOffsets_1_load_1 in_data 0 16 } } }
	codeOffsets_1_load_2 { ap_none {  { codeOffsets_1_load_2 in_data 0 16 } } }
	codeOffsets_1_load_3 { ap_none {  { codeOffsets_1_load_3 in_data 0 16 } } }
	codeOffsets_1_load_4 { ap_none {  { codeOffsets_1_load_4 in_data 0 16 } } }
	codeOffsets_1_load_5 { ap_none {  { codeOffsets_1_load_5 in_data 0 16 } } }
	codeOffsets_1_load_6 { ap_none {  { codeOffsets_1_load_6 in_data 0 16 } } }
	codeOffsets_1_load_7 { ap_none {  { codeOffsets_1_load_7 in_data 0 16 } } }
	codeOffsets_1_load_8 { ap_none {  { codeOffsets_1_load_8 in_data 0 16 } } }
	codeOffsets_1_load_9 { ap_none {  { codeOffsets_1_load_9 in_data 0 16 } } }
	codeOffsets_1_load_10 { ap_none {  { codeOffsets_1_load_10 in_data 0 16 } } }
	codeOffsets_1_load_11 { ap_none {  { codeOffsets_1_load_11 in_data 0 16 } } }
	codeOffsets_1_load_12 { ap_none {  { codeOffsets_1_load_12 in_data 0 16 } } }
	codeOffsets_1_load_13 { ap_none {  { codeOffsets_1_load_13 in_data 0 16 } } }
	codeOffsets_1_load_14 { ap_none {  { codeOffsets_1_load_14 in_data 0 16 } } }
	bl1Codes_0 { ap_memory {  { bl1Codes_0_address0 mem_address 1 1 }  { bl1Codes_0_ce0 mem_ce 1 1 }  { bl1Codes_0_q0 in_data 0 9 } } }
	bl1Codes_1 { ap_memory {  { bl1Codes_1_address0 mem_address 1 1 }  { bl1Codes_1_ce0 mem_ce 1 1 }  { bl1Codes_1_q0 in_data 0 9 } } }
	bl2Codes_0 { ap_memory {  { bl2Codes_0_address0 mem_address 1 2 }  { bl2Codes_0_ce0 mem_ce 1 1 }  { bl2Codes_0_q0 in_data 0 9 } } }
	bl2Codes_1 { ap_memory {  { bl2Codes_1_address0 mem_address 1 2 }  { bl2Codes_1_ce0 mem_ce 1 1 }  { bl2Codes_1_q0 in_data 0 9 } } }
	bl3Codes_0 { ap_memory {  { bl3Codes_0_address0 mem_address 1 3 }  { bl3Codes_0_ce0 mem_ce 1 1 }  { bl3Codes_0_q0 in_data 0 9 } } }
	bl3Codes_1 { ap_memory {  { bl3Codes_1_address0 mem_address 1 3 }  { bl3Codes_1_ce0 mem_ce 1 1 }  { bl3Codes_1_q0 in_data 0 9 } } }
	bl4Codes_0 { ap_memory {  { bl4Codes_0_address0 mem_address 1 4 }  { bl4Codes_0_ce0 mem_ce 1 1 }  { bl4Codes_0_q0 in_data 0 9 } } }
	bl4Codes_1 { ap_memory {  { bl4Codes_1_address0 mem_address 1 4 }  { bl4Codes_1_ce0 mem_ce 1 1 }  { bl4Codes_1_q0 in_data 0 9 } } }
	bl5Codes_0 { ap_memory {  { bl5Codes_0_address0 mem_address 1 5 }  { bl5Codes_0_ce0 mem_ce 1 1 }  { bl5Codes_0_q0 in_data 0 9 } } }
	bl5Codes_1 { ap_memory {  { bl5Codes_1_address0 mem_address 1 5 }  { bl5Codes_1_ce0 mem_ce 1 1 }  { bl5Codes_1_q0 in_data 0 9 } } }
	bl6Codes_0 { ap_memory {  { bl6Codes_0_address0 mem_address 1 6 }  { bl6Codes_0_ce0 mem_ce 1 1 }  { bl6Codes_0_q0 in_data 0 9 } } }
	bl6Codes_1 { ap_memory {  { bl6Codes_1_address0 mem_address 1 6 }  { bl6Codes_1_ce0 mem_ce 1 1 }  { bl6Codes_1_q0 in_data 0 9 } } }
	bl7Codes_0 { ap_memory {  { bl7Codes_0_address0 mem_address 1 7 }  { bl7Codes_0_ce0 mem_ce 1 1 }  { bl7Codes_0_q0 in_data 0 9 } } }
	bl7Codes_1 { ap_memory {  { bl7Codes_1_address0 mem_address 1 7 }  { bl7Codes_1_ce0 mem_ce 1 1 }  { bl7Codes_1_q0 in_data 0 9 } } }
	bl8Codes_0 { ap_memory {  { bl8Codes_0_address0 mem_address 1 8 }  { bl8Codes_0_ce0 mem_ce 1 1 }  { bl8Codes_0_q0 in_data 0 9 } } }
	bl8Codes_1 { ap_memory {  { bl8Codes_1_address0 mem_address 1 8 }  { bl8Codes_1_ce0 mem_ce 1 1 }  { bl8Codes_1_q0 in_data 0 9 } } }
	bl9Codes_0 { ap_memory {  { bl9Codes_0_address0 mem_address 1 8 }  { bl9Codes_0_ce0 mem_ce 1 1 }  { bl9Codes_0_q0 in_data 0 9 } } }
	bl9Codes_1 { ap_memory {  { bl9Codes_1_address0 mem_address 1 8 }  { bl9Codes_1_ce0 mem_ce 1 1 }  { bl9Codes_1_q0 in_data 0 9 } } }
	bl10Codes_0 { ap_memory {  { bl10Codes_0_address0 mem_address 1 8 }  { bl10Codes_0_ce0 mem_ce 1 1 }  { bl10Codes_0_q0 in_data 0 9 } } }
	bl10Codes_1 { ap_memory {  { bl10Codes_1_address0 mem_address 1 8 }  { bl10Codes_1_ce0 mem_ce 1 1 }  { bl10Codes_1_q0 in_data 0 9 } } }
	bl11Codes_0 { ap_memory {  { bl11Codes_0_address0 mem_address 1 8 }  { bl11Codes_0_ce0 mem_ce 1 1 }  { bl11Codes_0_q0 in_data 0 9 } } }
	bl11Codes_1 { ap_memory {  { bl11Codes_1_address0 mem_address 1 8 }  { bl11Codes_1_ce0 mem_ce 1 1 }  { bl11Codes_1_q0 in_data 0 9 } } }
	bl12Codes_0 { ap_memory {  { bl12Codes_0_address0 mem_address 1 8 }  { bl12Codes_0_ce0 mem_ce 1 1 }  { bl12Codes_0_q0 in_data 0 9 } } }
	bl12Codes_1 { ap_memory {  { bl12Codes_1_address0 mem_address 1 8 }  { bl12Codes_1_ce0 mem_ce 1 1 }  { bl12Codes_1_q0 in_data 0 9 } } }
	bl13Codes_0 { ap_memory {  { bl13Codes_0_address0 mem_address 1 8 }  { bl13Codes_0_ce0 mem_ce 1 1 }  { bl13Codes_0_q0 in_data 0 9 } } }
	bl13Codes_1 { ap_memory {  { bl13Codes_1_address0 mem_address 1 8 }  { bl13Codes_1_ce0 mem_ce 1 1 }  { bl13Codes_1_q0 in_data 0 9 } } }
	bl14Codes_0 { ap_memory {  { bl14Codes_0_address0 mem_address 1 8 }  { bl14Codes_0_ce0 mem_ce 1 1 }  { bl14Codes_0_q0 in_data 0 9 } } }
	bl14Codes_1 { ap_memory {  { bl14Codes_1_address0 mem_address 1 8 }  { bl14Codes_1_ce0 mem_ce 1 1 }  { bl14Codes_1_q0 in_data 0 9 } } }
	bl15Codes_0 { ap_memory {  { bl15Codes_0_address0 mem_address 1 8 }  { bl15Codes_0_ce0 mem_ce 1 1 }  { bl15Codes_0_q0 in_data 0 9 } } }
	bl15Codes_1 { ap_memory {  { bl15Codes_1_address0 mem_address 1 8 }  { bl15Codes_1_ce0 mem_ce 1 1 }  { bl15Codes_1_q0 in_data 0 9 } } }
	ignoreValue_cast { ap_none {  { ignoreValue_cast in_data 0 3 } } }
	lz77_output_stream { ap_fifo {  { lz77_output_stream_din fifo_data_in 1 16 }  { lz77_output_stream_full_n fifo_status 0 1 }  { lz77_output_stream_write fifo_port_we 1 1 } } }
	huffman_input_stream { ap_fifo {  { huffman_input_stream_dout fifo_data_in 0 16 }  { huffman_input_stream_empty_n fifo_status 0 1 }  { huffman_input_stream_read fifo_port_we 1 1 } } }
	huffman_eos_stream { ap_fifo {  { huffman_eos_stream_dout fifo_data_in 0 1 }  { huffman_eos_stream_empty_n fifo_status 0 1 }  { huffman_eos_stream_read fifo_port_we 1 1 } } }
	done_0_out { ap_vld {  { done_0_out out_data 1 1 }  { done_0_out_ap_vld out_vld 1 1 } } }
	buffer_out { ap_vld {  { buffer_out out_data 1 32 }  { buffer_out_ap_vld out_vld 1 1 } } }
	counter_out { ap_vld {  { counter_out out_data 1 6 }  { counter_out_ap_vld out_vld 1 1 } } }
}
