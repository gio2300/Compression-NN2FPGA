set moduleName byteGen_Pipeline_bytegen
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
set C_modelName {byteGen_Pipeline_bytegen}
set C_modelType { void 0 }
set C_modelArgList {
	{ write_flag_0 int 1 regular  }
	{ empty_39 int 6 regular  }
	{ p_bitbuffer_0 int 32 regular  }
	{ empty int 1 regular  }
	{ add_i307_cast int 9 regular  }
	{ codeOffsets_load int 16 regular  }
	{ codeOffsets_load_1 int 16 regular  }
	{ codeOffsets_load_2 int 16 regular  }
	{ codeOffsets_load_3 int 16 regular  }
	{ codeOffsets_load_4 int 16 regular  }
	{ codeOffsets_load_5 int 16 regular  }
	{ codeOffsets_load_6 int 16 regular  }
	{ bl1Codes int 9 regular {array 2 { 1 } 1 1 }  }
	{ bl2Codes int 9 regular {array 4 { 1 } 1 1 }  }
	{ bl3Codes int 9 regular {array 8 { 1 } 1 1 }  }
	{ bl4Codes int 9 regular {array 16 { 1 } 1 1 }  }
	{ bl5Codes int 9 regular {array 32 { 1 } 1 1 }  }
	{ bl6Codes int 9 regular {array 64 { 1 } 1 1 }  }
	{ bl7Codes int 9 regular {array 128 { 1 } 1 1 }  }
	{ lens int 5 regular {array 318 { 0 } 0 1 }  }
	{ huffman_input_stream int 16 regular {fifo 0 volatile }  }
	{ huffman_eos_stream int 1 regular {fifo 0 volatile }  }
	{ write_flag_1_out int 1 regular {pointer 1}  }
	{ bits_cntr_1_out int 6 regular {pointer 1}  }
	{ write_flag3_1_out int 1 regular {pointer 1}  }
	{ p_bitbuffer_1_out int 32 regular {pointer 1}  }
	{ done_1_out int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "write_flag_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_39", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_bitbuffer_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "add_i307_cast", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_load_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_load_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_load_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_load_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_load_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets_load_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bl1Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl2Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl3Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl4Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl5Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl6Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl7Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "lens", "interface" : "memory", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "huffman_input_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_eos_stream", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "write_flag_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bits_cntr_1_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "write_flag3_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_bitbuffer_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "done_1_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ huffman_input_stream_dout sc_in sc_lv 16 signal 20 } 
	{ huffman_input_stream_empty_n sc_in sc_logic 1 signal 20 } 
	{ huffman_input_stream_read sc_out sc_logic 1 signal 20 } 
	{ huffman_eos_stream_dout sc_in sc_lv 1 signal 21 } 
	{ huffman_eos_stream_empty_n sc_in sc_logic 1 signal 21 } 
	{ huffman_eos_stream_read sc_out sc_logic 1 signal 21 } 
	{ write_flag_0 sc_in sc_lv 1 signal 0 } 
	{ empty_39 sc_in sc_lv 6 signal 1 } 
	{ p_bitbuffer_0 sc_in sc_lv 32 signal 2 } 
	{ empty sc_in sc_lv 1 signal 3 } 
	{ add_i307_cast sc_in sc_lv 9 signal 4 } 
	{ codeOffsets_load sc_in sc_lv 16 signal 5 } 
	{ codeOffsets_load_1 sc_in sc_lv 16 signal 6 } 
	{ codeOffsets_load_2 sc_in sc_lv 16 signal 7 } 
	{ codeOffsets_load_3 sc_in sc_lv 16 signal 8 } 
	{ codeOffsets_load_4 sc_in sc_lv 16 signal 9 } 
	{ codeOffsets_load_5 sc_in sc_lv 16 signal 10 } 
	{ codeOffsets_load_6 sc_in sc_lv 16 signal 11 } 
	{ bl1Codes_address0 sc_out sc_lv 1 signal 12 } 
	{ bl1Codes_ce0 sc_out sc_logic 1 signal 12 } 
	{ bl1Codes_q0 sc_in sc_lv 9 signal 12 } 
	{ bl2Codes_address0 sc_out sc_lv 2 signal 13 } 
	{ bl2Codes_ce0 sc_out sc_logic 1 signal 13 } 
	{ bl2Codes_q0 sc_in sc_lv 9 signal 13 } 
	{ bl3Codes_address0 sc_out sc_lv 3 signal 14 } 
	{ bl3Codes_ce0 sc_out sc_logic 1 signal 14 } 
	{ bl3Codes_q0 sc_in sc_lv 9 signal 14 } 
	{ bl4Codes_address0 sc_out sc_lv 4 signal 15 } 
	{ bl4Codes_ce0 sc_out sc_logic 1 signal 15 } 
	{ bl4Codes_q0 sc_in sc_lv 9 signal 15 } 
	{ bl5Codes_address0 sc_out sc_lv 5 signal 16 } 
	{ bl5Codes_ce0 sc_out sc_logic 1 signal 16 } 
	{ bl5Codes_q0 sc_in sc_lv 9 signal 16 } 
	{ bl6Codes_address0 sc_out sc_lv 6 signal 17 } 
	{ bl6Codes_ce0 sc_out sc_logic 1 signal 17 } 
	{ bl6Codes_q0 sc_in sc_lv 9 signal 17 } 
	{ bl7Codes_address0 sc_out sc_lv 7 signal 18 } 
	{ bl7Codes_ce0 sc_out sc_logic 1 signal 18 } 
	{ bl7Codes_q0 sc_in sc_lv 9 signal 18 } 
	{ lens_address0 sc_out sc_lv 9 signal 19 } 
	{ lens_ce0 sc_out sc_logic 1 signal 19 } 
	{ lens_we0 sc_out sc_logic 1 signal 19 } 
	{ lens_d0 sc_out sc_lv 5 signal 19 } 
	{ write_flag_1_out sc_out sc_lv 1 signal 22 } 
	{ write_flag_1_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ bits_cntr_1_out sc_out sc_lv 6 signal 23 } 
	{ bits_cntr_1_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ write_flag3_1_out sc_out sc_lv 1 signal 24 } 
	{ write_flag3_1_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_bitbuffer_1_out sc_out sc_lv 32 signal 25 } 
	{ p_bitbuffer_1_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ done_1_out sc_out sc_lv 1 signal 26 } 
	{ done_1_out_ap_vld sc_out sc_logic 1 outvld 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "huffman_input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "dout" }} , 
 	{ "name": "huffman_input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "read" }} , 
 	{ "name": "huffman_eos_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "dout" }} , 
 	{ "name": "huffman_eos_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_eos_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "read" }} , 
 	{ "name": "write_flag_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag_0", "role": "default" }} , 
 	{ "name": "empty_39", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "empty_39", "role": "default" }} , 
 	{ "name": "p_bitbuffer_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_bitbuffer_0", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "add_i307_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "add_i307_cast", "role": "default" }} , 
 	{ "name": "codeOffsets_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_load", "role": "default" }} , 
 	{ "name": "codeOffsets_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_load_1", "role": "default" }} , 
 	{ "name": "codeOffsets_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_load_2", "role": "default" }} , 
 	{ "name": "codeOffsets_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_load_3", "role": "default" }} , 
 	{ "name": "codeOffsets_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_load_4", "role": "default" }} , 
 	{ "name": "codeOffsets_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_load_5", "role": "default" }} , 
 	{ "name": "codeOffsets_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_load_6", "role": "default" }} , 
 	{ "name": "bl1Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes", "role": "address0" }} , 
 	{ "name": "bl1Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes", "role": "ce0" }} , 
 	{ "name": "bl1Codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl1Codes", "role": "q0" }} , 
 	{ "name": "bl2Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bl2Codes", "role": "address0" }} , 
 	{ "name": "bl2Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl2Codes", "role": "ce0" }} , 
 	{ "name": "bl2Codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl2Codes", "role": "q0" }} , 
 	{ "name": "bl3Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bl3Codes", "role": "address0" }} , 
 	{ "name": "bl3Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl3Codes", "role": "ce0" }} , 
 	{ "name": "bl3Codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl3Codes", "role": "q0" }} , 
 	{ "name": "bl4Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bl4Codes", "role": "address0" }} , 
 	{ "name": "bl4Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl4Codes", "role": "ce0" }} , 
 	{ "name": "bl4Codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl4Codes", "role": "q0" }} , 
 	{ "name": "bl5Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bl5Codes", "role": "address0" }} , 
 	{ "name": "bl5Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl5Codes", "role": "ce0" }} , 
 	{ "name": "bl5Codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl5Codes", "role": "q0" }} , 
 	{ "name": "bl6Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bl6Codes", "role": "address0" }} , 
 	{ "name": "bl6Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl6Codes", "role": "ce0" }} , 
 	{ "name": "bl6Codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl6Codes", "role": "q0" }} , 
 	{ "name": "bl7Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bl7Codes", "role": "address0" }} , 
 	{ "name": "bl7Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl7Codes", "role": "ce0" }} , 
 	{ "name": "bl7Codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl7Codes", "role": "q0" }} , 
 	{ "name": "lens_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lens", "role": "address0" }} , 
 	{ "name": "lens_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lens", "role": "ce0" }} , 
 	{ "name": "lens_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lens", "role": "we0" }} , 
 	{ "name": "lens_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lens", "role": "d0" }} , 
 	{ "name": "write_flag_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag_1_out", "role": "default" }} , 
 	{ "name": "write_flag_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag_1_out", "role": "ap_vld" }} , 
 	{ "name": "bits_cntr_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bits_cntr_1_out", "role": "default" }} , 
 	{ "name": "bits_cntr_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bits_cntr_1_out", "role": "ap_vld" }} , 
 	{ "name": "write_flag3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_flag3_1_out", "role": "default" }} , 
 	{ "name": "write_flag3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_flag3_1_out", "role": "ap_vld" }} , 
 	{ "name": "p_bitbuffer_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_bitbuffer_1_out", "role": "default" }} , 
 	{ "name": "p_bitbuffer_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_bitbuffer_1_out", "role": "ap_vld" }} , 
 	{ "name": "done_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "done_1_out", "role": "default" }} , 
 	{ "name": "done_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "done_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "byteGen_Pipeline_bytegen",
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
			{"Name" : "write_flag_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_bitbuffer_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_i307_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "bl1Codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl2Codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl3Codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl4Codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl5Codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl6Codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl7Codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lens", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "write_flag_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bits_cntr_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "write_flag3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_bitbuffer_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "done_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "bytegen", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_5_1_1_U260", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	byteGen_Pipeline_bytegen {
		write_flag_0 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		p_bitbuffer_0 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		add_i307_cast {Type I LastRead 0 FirstWrite -1}
		codeOffsets_load {Type I LastRead 0 FirstWrite -1}
		codeOffsets_load_1 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_load_2 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_load_3 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_load_4 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_load_5 {Type I LastRead 0 FirstWrite -1}
		codeOffsets_load_6 {Type I LastRead 0 FirstWrite -1}
		bl1Codes {Type I LastRead 1 FirstWrite -1}
		bl2Codes {Type I LastRead 1 FirstWrite -1}
		bl3Codes {Type I LastRead 1 FirstWrite -1}
		bl4Codes {Type I LastRead 1 FirstWrite -1}
		bl5Codes {Type I LastRead 1 FirstWrite -1}
		bl6Codes {Type I LastRead 1 FirstWrite -1}
		bl7Codes {Type I LastRead 1 FirstWrite -1}
		lens {Type O LastRead -1 FirstWrite 2}
		huffman_input_stream {Type I LastRead 2 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 2 FirstWrite -1}
		write_flag_1_out {Type O LastRead -1 FirstWrite 2}
		bits_cntr_1_out {Type O LastRead -1 FirstWrite 2}
		write_flag3_1_out {Type O LastRead -1 FirstWrite 2}
		p_bitbuffer_1_out {Type O LastRead -1 FirstWrite 2}
		done_1_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	write_flag_0 { ap_none {  { write_flag_0 in_data 0 1 } } }
	empty_39 { ap_none {  { empty_39 in_data 0 6 } } }
	p_bitbuffer_0 { ap_none {  { p_bitbuffer_0 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	add_i307_cast { ap_none {  { add_i307_cast in_data 0 9 } } }
	codeOffsets_load { ap_none {  { codeOffsets_load in_data 0 16 } } }
	codeOffsets_load_1 { ap_none {  { codeOffsets_load_1 in_data 0 16 } } }
	codeOffsets_load_2 { ap_none {  { codeOffsets_load_2 in_data 0 16 } } }
	codeOffsets_load_3 { ap_none {  { codeOffsets_load_3 in_data 0 16 } } }
	codeOffsets_load_4 { ap_none {  { codeOffsets_load_4 in_data 0 16 } } }
	codeOffsets_load_5 { ap_none {  { codeOffsets_load_5 in_data 0 16 } } }
	codeOffsets_load_6 { ap_none {  { codeOffsets_load_6 in_data 0 16 } } }
	bl1Codes { ap_memory {  { bl1Codes_address0 mem_address 1 1 }  { bl1Codes_ce0 mem_ce 1 1 }  { bl1Codes_q0 in_data 0 9 } } }
	bl2Codes { ap_memory {  { bl2Codes_address0 mem_address 1 2 }  { bl2Codes_ce0 mem_ce 1 1 }  { bl2Codes_q0 in_data 0 9 } } }
	bl3Codes { ap_memory {  { bl3Codes_address0 mem_address 1 3 }  { bl3Codes_ce0 mem_ce 1 1 }  { bl3Codes_q0 in_data 0 9 } } }
	bl4Codes { ap_memory {  { bl4Codes_address0 mem_address 1 4 }  { bl4Codes_ce0 mem_ce 1 1 }  { bl4Codes_q0 in_data 0 9 } } }
	bl5Codes { ap_memory {  { bl5Codes_address0 mem_address 1 5 }  { bl5Codes_ce0 mem_ce 1 1 }  { bl5Codes_q0 in_data 0 9 } } }
	bl6Codes { ap_memory {  { bl6Codes_address0 mem_address 1 6 }  { bl6Codes_ce0 mem_ce 1 1 }  { bl6Codes_q0 in_data 0 9 } } }
	bl7Codes { ap_memory {  { bl7Codes_address0 mem_address 1 7 }  { bl7Codes_ce0 mem_ce 1 1 }  { bl7Codes_q0 in_data 0 9 } } }
	lens { ap_memory {  { lens_address0 mem_address 1 9 }  { lens_ce0 mem_ce 1 1 }  { lens_we0 mem_we 1 1 }  { lens_d0 mem_din 1 5 } } }
	huffman_input_stream { ap_fifo {  { huffman_input_stream_dout fifo_data_in 0 16 }  { huffman_input_stream_empty_n fifo_status 0 1 }  { huffman_input_stream_read fifo_port_we 1 1 } } }
	huffman_eos_stream { ap_fifo {  { huffman_eos_stream_dout fifo_data_in 0 1 }  { huffman_eos_stream_empty_n fifo_status 0 1 }  { huffman_eos_stream_read fifo_port_we 1 1 } } }
	write_flag_1_out { ap_vld {  { write_flag_1_out out_data 1 1 }  { write_flag_1_out_ap_vld out_vld 1 1 } } }
	bits_cntr_1_out { ap_vld {  { bits_cntr_1_out out_data 1 6 }  { bits_cntr_1_out_ap_vld out_vld 1 1 } } }
	write_flag3_1_out { ap_vld {  { write_flag3_1_out out_data 1 1 }  { write_flag3_1_out_ap_vld out_vld 1 1 } } }
	p_bitbuffer_1_out { ap_vld {  { p_bitbuffer_1_out out_data 1 32 }  { p_bitbuffer_1_out_ap_vld out_vld 1 1 } } }
	done_1_out { ap_vld {  { done_1_out out_data 1 1 }  { done_1_out_ap_vld out_vld 1 1 } } }
}
