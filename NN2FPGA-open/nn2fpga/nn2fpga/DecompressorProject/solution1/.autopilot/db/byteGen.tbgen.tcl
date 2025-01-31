set moduleName byteGen
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
set C_modelName {byteGen}
set C_modelType { int 39 }
set C_modelArgList {
	{ p_read int 32 regular  }
	{ p_read1 int 6 regular  }
	{ codeOffsets int 16 regular {array 15 { 1 1 } 1 1 }  }
	{ bl1Codes int 9 regular {array 2 { 1 } 1 1 }  }
	{ bl2Codes int 9 regular {array 4 { 1 } 1 1 }  }
	{ bl3Codes int 9 regular {array 8 { 1 } 1 1 }  }
	{ bl4Codes int 9 regular {array 16 { 1 } 1 1 }  }
	{ bl5Codes int 9 regular {array 32 { 1 } 1 1 }  }
	{ bl6Codes int 9 regular {array 64 { 1 } 1 1 }  }
	{ bl7Codes int 9 regular {array 128 { 1 } 1 1 }  }
	{ lens int 5 regular {array 318 { 0 } 0 1 }  }
	{ huffman_eos_stream int 1 regular {fifo 0 volatile }  }
	{ huffman_input_stream int 16 regular {fifo 0 volatile }  }
	{ nlen_val int 9 regular  }
	{ ndist_val int 6 regular  }
	{ p_read2 int 1 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "codeOffsets", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bl1Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl2Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl3Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl4Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl5Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl6Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl7Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "lens", "interface" : "memory", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "huffman_eos_stream", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_input_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "nlen_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ndist_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 39} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read1 sc_in sc_lv 6 signal 1 } 
	{ codeOffsets_address0 sc_out sc_lv 4 signal 2 } 
	{ codeOffsets_ce0 sc_out sc_logic 1 signal 2 } 
	{ codeOffsets_q0 sc_in sc_lv 16 signal 2 } 
	{ codeOffsets_address1 sc_out sc_lv 4 signal 2 } 
	{ codeOffsets_ce1 sc_out sc_logic 1 signal 2 } 
	{ codeOffsets_q1 sc_in sc_lv 16 signal 2 } 
	{ bl1Codes_address0 sc_out sc_lv 1 signal 3 } 
	{ bl1Codes_ce0 sc_out sc_logic 1 signal 3 } 
	{ bl1Codes_q0 sc_in sc_lv 9 signal 3 } 
	{ bl2Codes_address0 sc_out sc_lv 2 signal 4 } 
	{ bl2Codes_ce0 sc_out sc_logic 1 signal 4 } 
	{ bl2Codes_q0 sc_in sc_lv 9 signal 4 } 
	{ bl3Codes_address0 sc_out sc_lv 3 signal 5 } 
	{ bl3Codes_ce0 sc_out sc_logic 1 signal 5 } 
	{ bl3Codes_q0 sc_in sc_lv 9 signal 5 } 
	{ bl4Codes_address0 sc_out sc_lv 4 signal 6 } 
	{ bl4Codes_ce0 sc_out sc_logic 1 signal 6 } 
	{ bl4Codes_q0 sc_in sc_lv 9 signal 6 } 
	{ bl5Codes_address0 sc_out sc_lv 5 signal 7 } 
	{ bl5Codes_ce0 sc_out sc_logic 1 signal 7 } 
	{ bl5Codes_q0 sc_in sc_lv 9 signal 7 } 
	{ bl6Codes_address0 sc_out sc_lv 6 signal 8 } 
	{ bl6Codes_ce0 sc_out sc_logic 1 signal 8 } 
	{ bl6Codes_q0 sc_in sc_lv 9 signal 8 } 
	{ bl7Codes_address0 sc_out sc_lv 7 signal 9 } 
	{ bl7Codes_ce0 sc_out sc_logic 1 signal 9 } 
	{ bl7Codes_q0 sc_in sc_lv 9 signal 9 } 
	{ lens_address0 sc_out sc_lv 9 signal 10 } 
	{ lens_ce0 sc_out sc_logic 1 signal 10 } 
	{ lens_we0 sc_out sc_logic 1 signal 10 } 
	{ lens_d0 sc_out sc_lv 5 signal 10 } 
	{ huffman_eos_stream_dout sc_in sc_lv 1 signal 11 } 
	{ huffman_eos_stream_empty_n sc_in sc_logic 1 signal 11 } 
	{ huffman_eos_stream_read sc_out sc_logic 1 signal 11 } 
	{ huffman_input_stream_dout sc_in sc_lv 16 signal 12 } 
	{ huffman_input_stream_empty_n sc_in sc_logic 1 signal 12 } 
	{ huffman_input_stream_read sc_out sc_logic 1 signal 12 } 
	{ nlen_val sc_in sc_lv 9 signal 13 } 
	{ ndist_val sc_in sc_lv 6 signal 14 } 
	{ p_read2 sc_in sc_lv 1 signal 15 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 6 signal -1 } 
	{ ap_return_2 sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "codeOffsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets", "role": "address0" }} , 
 	{ "name": "codeOffsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets", "role": "ce0" }} , 
 	{ "name": "codeOffsets_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets", "role": "q0" }} , 
 	{ "name": "codeOffsets_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets", "role": "address1" }} , 
 	{ "name": "codeOffsets_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets", "role": "ce1" }} , 
 	{ "name": "codeOffsets_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets", "role": "q1" }} , 
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
 	{ "name": "huffman_eos_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "dout" }} , 
 	{ "name": "huffman_eos_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_eos_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "read" }} , 
 	{ "name": "huffman_input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "dout" }} , 
 	{ "name": "huffman_input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "read" }} , 
 	{ "name": "nlen_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "nlen_val", "role": "default" }} , 
 	{ "name": "ndist_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ndist_val", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "byteGen",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl1Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl1Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl2Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl2Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl3Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl3Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl4Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl4Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl5Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl5Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl6Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl6Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl7Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl7Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "lens", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "lens", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "huffman_eos_stream", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "huffman_input_stream", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "nlen_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "ndist_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_byteGen_Pipeline_bytegen_fu_274", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_byteGen_Pipeline_bytegen_fu_274.sparsemux_15_3_5_1_1_U260", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_byteGen_Pipeline_bytegen_fu_274.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	byteGen {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		codeOffsets {Type I LastRead 4 FirstWrite -1}
		bl1Codes {Type I LastRead 1 FirstWrite -1}
		bl2Codes {Type I LastRead 1 FirstWrite -1}
		bl3Codes {Type I LastRead 1 FirstWrite -1}
		bl4Codes {Type I LastRead 1 FirstWrite -1}
		bl5Codes {Type I LastRead 1 FirstWrite -1}
		bl6Codes {Type I LastRead 1 FirstWrite -1}
		bl7Codes {Type I LastRead 1 FirstWrite -1}
		lens {Type O LastRead -1 FirstWrite 2}
		huffman_eos_stream {Type I LastRead 2 FirstWrite -1}
		huffman_input_stream {Type I LastRead 2 FirstWrite -1}
		nlen_val {Type I LastRead 0 FirstWrite -1}
		ndist_val {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 6 } } }
	codeOffsets { ap_memory {  { codeOffsets_address0 mem_address 1 4 }  { codeOffsets_ce0 mem_ce 1 1 }  { codeOffsets_q0 mem_dout 0 16 }  { codeOffsets_address1 MemPortADDR2 1 4 }  { codeOffsets_ce1 MemPortCE2 1 1 }  { codeOffsets_q1 MemPortDOUT2 0 16 } } }
	bl1Codes { ap_memory {  { bl1Codes_address0 mem_address 1 1 }  { bl1Codes_ce0 mem_ce 1 1 }  { bl1Codes_q0 mem_dout 0 9 } } }
	bl2Codes { ap_memory {  { bl2Codes_address0 mem_address 1 2 }  { bl2Codes_ce0 mem_ce 1 1 }  { bl2Codes_q0 mem_dout 0 9 } } }
	bl3Codes { ap_memory {  { bl3Codes_address0 mem_address 1 3 }  { bl3Codes_ce0 mem_ce 1 1 }  { bl3Codes_q0 mem_dout 0 9 } } }
	bl4Codes { ap_memory {  { bl4Codes_address0 mem_address 1 4 }  { bl4Codes_ce0 mem_ce 1 1 }  { bl4Codes_q0 mem_dout 0 9 } } }
	bl5Codes { ap_memory {  { bl5Codes_address0 mem_address 1 5 }  { bl5Codes_ce0 mem_ce 1 1 }  { bl5Codes_q0 mem_dout 0 9 } } }
	bl6Codes { ap_memory {  { bl6Codes_address0 mem_address 1 6 }  { bl6Codes_ce0 mem_ce 1 1 }  { bl6Codes_q0 mem_dout 0 9 } } }
	bl7Codes { ap_memory {  { bl7Codes_address0 mem_address 1 7 }  { bl7Codes_ce0 mem_ce 1 1 }  { bl7Codes_q0 mem_dout 0 9 } } }
	lens { ap_memory {  { lens_address0 mem_address 1 9 }  { lens_ce0 mem_ce 1 1 }  { lens_we0 mem_we 1 1 }  { lens_d0 mem_din 1 5 } } }
	huffman_eos_stream { ap_fifo {  { huffman_eos_stream_dout fifo_data_in 0 1 }  { huffman_eos_stream_empty_n fifo_status 0 1 }  { huffman_eos_stream_read fifo_port_we 1 1 } } }
	huffman_input_stream { ap_fifo {  { huffman_input_stream_dout fifo_data_in 0 16 }  { huffman_input_stream_empty_n fifo_status 0 1 }  { huffman_input_stream_read fifo_port_we 1 1 } } }
	nlen_val { ap_none {  { nlen_val in_data 0 9 } } }
	ndist_val { ap_none {  { ndist_val in_data 0 6 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 1 } } }
}
