set moduleName decompressor_kernel
set isTopModule 1
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
set C_modelName {decompressor_kernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_axi_input int 1024 regular {pointer 0}  }
	{ out_stream int 32 regular {fifo 1 volatile }  }
	{ out_eos int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "m_axi_input", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_eos", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_input sc_in sc_lv 1024 signal 0 } 
	{ out_stream_din sc_out sc_lv 32 signal 1 } 
	{ out_stream_full_n sc_in sc_logic 1 signal 1 } 
	{ out_stream_write sc_out sc_logic 1 signal 1 } 
	{ out_eos_din sc_out sc_lv 1 signal 2 } 
	{ out_eos_full_n sc_in sc_logic 1 signal 2 } 
	{ out_eos_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_input", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "m_axi_input", "role": "default" }} , 
 	{ "name": "out_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream", "role": "din" }} , 
 	{ "name": "out_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream", "role": "full_n" }} , 
 	{ "name": "out_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream", "role": "write" }} , 
 	{ "name": "out_eos_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_eos", "role": "din" }} , 
 	{ "name": "out_eos_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_eos", "role": "full_n" }} , 
 	{ "name": "out_eos_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_eos", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "76", "78", "80", "81", "82"],
		"CDFG" : "decompressor_kernel",
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
			{"Name" : "m_axi_input", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_decompressor_kernel_Pipeline_VITIS_LOOP_64_4_fu_160", "Port" : "out_stream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "out_eos", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_eos_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "order", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_huffmanDecoderLL_2_0_s_fu_147", "Port" : "order", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "lext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_huffmanDecoderLL_2_0_s_fu_147", "Port" : "lext", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "dext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_huffmanDecoderLL_2_0_s_fu_147", "Port" : "dext", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_1_VITIS_LOOP_37_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decompressor_kernel_Pipeline_VITIS_LOOP_39_3_fu_142", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "decompressor_kernel_Pipeline_VITIS_LOOP_39_3",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decompressor_kernel_Pipeline_VITIS_LOOP_39_3_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "45", "47", "54", "56", "58", "68", "72", "74"],
		"CDFG" : "huffmanDecoderLL_2_0_s",
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
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_huffmanBytegenLL_fu_661", "Port" : "huffman_input_stream", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "38", "SubInstance" : "grp_loadBitStreamLL_fu_580", "Port" : "huffman_input_stream", "Inst_start_state" : "45", "Inst_end_state" : "45"},
					{"ID" : "72", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy_fu_784", "Port" : "huffman_input_stream", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "54", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_dyn_len_bits_fu_711", "Port" : "huffman_input_stream", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "68", "SubInstance" : "grp_byteGen_fu_762", "Port" : "huffman_input_stream", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "43", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_read_fname_fu_636", "Port" : "huffman_input_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "74", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData_fu_801", "Port" : "huffman_input_stream", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_huffmanBytegenLL_fu_661", "Port" : "huffman_eos_stream", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "38", "SubInstance" : "grp_loadBitStreamLL_fu_580", "Port" : "huffman_eos_stream", "Inst_start_state" : "45", "Inst_end_state" : "45"},
					{"ID" : "72", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy_fu_784", "Port" : "huffman_eos_stream", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "54", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_dyn_len_bits_fu_711", "Port" : "huffman_eos_stream", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "68", "SubInstance" : "grp_byteGen_fu_762", "Port" : "huffman_eos_stream", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "43", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_read_fname_fu_636", "Port" : "huffman_eos_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "74", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData_fu_801", "Port" : "huffman_eos_stream", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "lz77_output_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz77_output_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_huffmanBytegenLL_fu_661", "Port" : "lz77_output_stream", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "72", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy_fu_784", "Port" : "lz77_output_stream", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "order", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2_fu_729", "Port" : "order", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "54", "SubInstance" : "grp_huffmanDecoderLL_2_0_Pipeline_dyn_len_bits_fu_711", "Port" : "order", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "lext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_huffmanBytegenLL_fu_661", "Port" : "lext", "Inst_start_state" : "32", "Inst_end_state" : "33"}]},
			{"Name" : "dext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_huffmanBytegenLL_fu_661", "Port" : "dext", "Inst_start_state" : "32", "Inst_end_state" : "33"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_loadBitStreamLL_fu_580", "SubBlockPort" : ["huffman_input_stream_blk_n", "huffman_eos_stream_blk_n"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1009_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "46", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state11"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "huffmanDecoder_label0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "46", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state46"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.order_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.dynamic_lens_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.codeOffsets_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.codeOffsets_1_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl1Code_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl1Code_1_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl2Code_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl2Code_1_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl3Code_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl3Code_1_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl4Code_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl4Code_1_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl5Code_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl5Code_1_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl6Code_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl6Code_1_U", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl7Code_U", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl7Code_1_U", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl8Code_U", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl8Code_1_U", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl9Code_U", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl9Code_1_U", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl10Code_U", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl10Code_1_U", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl11Code_U", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl11Code_1_U", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl12Code_U", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl12Code_1_U", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl13Code_U", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl13Code_1_U", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl14Code_U", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl14Code_1_U", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl15Code_U", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.bl15Code_1_U", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_loadBitStreamLL_fu_580", "Parent" : "3",
		"CDFG" : "loadBitStreamLL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuffer_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "done_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "done_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_discardBitStreamLL_fu_600", "Parent" : "3",
		"CDFG" : "discardBitStreamLL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuffer_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_bits_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.call_ret29_discardBitStreamLL_fu_610", "Parent" : "3",
		"CDFG" : "discardBitStreamLL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuffer_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_bits_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.call_ret30_discardBitStreamLL_fu_618", "Parent" : "3",
		"CDFG" : "discardBitStreamLL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuffer_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_bits_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_discardBitStreamLL_fu_626", "Parent" : "3",
		"CDFG" : "discardBitStreamLL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuffer_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_bits_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_read_fname_fu_636", "Parent" : "3", "Child" : ["44"],
		"CDFG" : "huffmanDecoderLL_2_0_Pipeline_read_fname",
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
			{"Name" : "done_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitbuffer_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitbuffer_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "done_1346_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bits_cntr_1340_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuffer_1333_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "read_fname", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_read_fname_fu_636.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3_fu_651", "Parent" : "3", "Child" : ["46"],
		"CDFG" : "huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "290", "EstimateLatencyMax" : "290",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bl8Code", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "codeOffsets", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "codeOffsets_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl9Code", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl7Code", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl5Code_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1130_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3_fu_651.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanBytegenLL_fu_661", "Parent" : "3", "Child" : ["48"],
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
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "lz77_output_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "huffman_eos_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "huffman_input_stream", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "codeOffsets_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "codeOffsets_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bl1Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl1Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl1Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl1Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl2Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl2Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl2Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl2Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl3Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl3Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl3Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl3Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl4Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl4Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl4Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl4Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl5Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl5Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl5Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl5Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl6Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl6Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl6Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl6Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl7Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl7Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl7Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl7Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl8Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl8Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl8Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl8Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl9Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl9Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl9Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl9Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl10Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl10Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl10Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl10Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl11Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl11Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl11Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl11Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl12Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl12Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl12Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl12Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl13Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl13Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl13Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl13Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl14Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl14Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl14Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl14Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl15Codes_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl15Codes_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bl15Codes_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "bl15Codes_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ignoreValue", "Type" : "None", "Direction" : "I"},
			{"Name" : "lext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "lext", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "dext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Port" : "dext", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanBytegenLL_fu_661.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468", "Parent" : "47", "Child" : ["49", "50", "51", "52", "53"],
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
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanBytegenLL_fu_661.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.lext_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanBytegenLL_fu_661.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.dext_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanBytegenLL_fu_661.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.sparsemux_31_4_9_1_1_U27", "Parent" : "48"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanBytegenLL_fu_661.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.sparsemux_31_4_5_1_1_U28", "Parent" : "48"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanBytegenLL_fu_661.grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_dyn_len_bits_fu_711", "Parent" : "3", "Child" : ["55"],
		"CDFG" : "huffmanDecoderLL_2_0_Pipeline_dyn_len_bits",
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
			{"Name" : "done_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitbuffer_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1069_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dynamic_lens", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "done_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bits_cntr_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuffer_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "order", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "dyn_len_bits", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_dyn_len_bits_fu_711.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2_fu_729", "Parent" : "3", "Child" : ["57"],
		"CDFG" : "huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "513",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln1069", "Type" : "None", "Direction" : "I"},
			{"Name" : "dynamic_lens", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "order", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1081_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2_fu_729.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737", "Parent" : "3", "Child" : ["59", "62", "65"],
		"CDFG" : "code_generator_array_dyn_new",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "1048",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lens", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_cnt_lens_fu_184", "Port" : "lens", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "lens", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "codes_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "codeOffsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_firstCode_fu_208", "Port" : "codeOffsets", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bl1Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl1Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl2Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl2Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl3Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl3Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl4Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl4Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl5Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl5Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl6Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl6Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl7Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl7Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl8Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl8Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl9Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl9Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl10Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl10Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl11Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl11Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl12Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl12Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl13Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl13Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl14Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl14Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl15Codes", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Port" : "bl15Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_cnt_lens_fu_184", "Parent" : "58", "Child" : ["60", "61"],
		"CDFG" : "code_generator_array_dyn_new_Pipeline_cnt_lens",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "513",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "codes_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "lens", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "count_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "count_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "cnt_lens", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_cnt_lens_fu_184.sparsemux_33_4_9_1_1_U156", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_cnt_lens_fu_184.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_firstCode_fu_208", "Parent" : "58", "Child" : ["63", "64"],
		"CDFG" : "code_generator_array_dyn_new_Pipeline_firstCode",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "codeOffsets", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "count_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "count_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstCode_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "firstCode", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_firstCode_fu_208.sparsemux_31_4_9_1_1_U175", "Parent" : "62"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_firstCode_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243", "Parent" : "58", "Child" : ["66", "67"],
		"CDFG" : "code_generator_array_dyn_new_Pipeline_CodeGen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "513",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "firstCode_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "firstCode_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "codes_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "bl1Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl2Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl3Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl4Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl5Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl6Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl7Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl8Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl9Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl10Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl11Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl12Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl13Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl14Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bl15Codes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "lens", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "CodeGen", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243.sparsemux_31_4_15_1_1_U206", "Parent" : "65"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_code_generator_array_dyn_new_fu_737.grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_byteGen_fu_762", "Parent" : "3", "Child" : ["69"],
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
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl1Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl2Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl2Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl3Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl3Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl4Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl4Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl5Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl5Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl6Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl6Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bl7Codes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "bl7Codes", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "lens", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "lens", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "huffman_eos_stream", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_byteGen_Pipeline_bytegen_fu_274", "Port" : "huffman_input_stream", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "nlen_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "ndist_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_byteGen_fu_762.grp_byteGen_Pipeline_bytegen_fu_274", "Parent" : "68", "Child" : ["70", "71"],
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
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_byteGen_fu_762.grp_byteGen_Pipeline_bytegen_fu_274.sparsemux_15_3_5_1_1_U260", "Parent" : "69"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_byteGen_fu_762.grp_byteGen_Pipeline_bytegen_fu_274.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy_fu_784", "Parent" : "3", "Child" : ["73"],
		"CDFG" : "huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "65538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "done_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitbuffer_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "bits_cntr_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lz77_output_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "lz77_output_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "done_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuffer_6338_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bits_cntr_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "strd_blk_cpy", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy_fu_784.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData_fu_801", "Parent" : "3", "Child" : ["75"],
		"CDFG" : "huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData",
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
			{"Name" : "done_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "huffman_input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "huffman_eos_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "huffman_eos_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "consumeLeftOverData", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_huffmanDecoderLL_2_0_s_fu_147.grp_huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData_fu_801.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decompressor_kernel_Pipeline_VITIS_LOOP_64_4_fu_160", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "decompressor_kernel_Pipeline_VITIS_LOOP_64_4",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lz77_output_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lz77_output_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "decompressed_count_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_64_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decompressor_kernel_Pipeline_VITIS_LOOP_64_4_fu_160.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_decompressor_kernel_Pipeline_VITIS_LOOP_87_6_fu_168", "Parent" : "0", "Child" : ["79"],
		"CDFG" : "decompressor_kernel_Pipeline_VITIS_LOOP_87_6",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "lz77_output_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "lz77_output_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_decompressor_kernel_Pipeline_VITIS_LOOP_87_6_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.huffman_input_stream_fifo_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.huffman_eos_stream_fifo_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lz77_output_stream_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decompressor_kernel {
		m_axi_input {Type I LastRead 1 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 1}
		out_eos {Type O LastRead -1 FirstWrite 9}
		order {Type I LastRead -1 FirstWrite -1}
		lext {Type I LastRead -1 FirstWrite -1}
		dext {Type I LastRead -1 FirstWrite -1}}
	decompressor_kernel_Pipeline_VITIS_LOOP_39_3 {
		huffman_input_stream {Type I LastRead 0 FirstWrite -1}}
	huffmanDecoderLL_2_0_s {
		huffman_input_stream {Type I LastRead 2 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 2 FirstWrite -1}
		lz77_output_stream {Type O LastRead -1 FirstWrite 1}
		order {Type I LastRead -1 FirstWrite -1}
		lext {Type I LastRead -1 FirstWrite -1}
		dext {Type I LastRead -1 FirstWrite -1}}
	loadBitStreamLL {
		bitbuffer_read {Type I LastRead 0 FirstWrite -1}
		bits_cntr_read_2 {Type I LastRead 0 FirstWrite -1}
		bits_cntr_read {Type I LastRead 0 FirstWrite -1}
		huffman_input_stream {Type I LastRead 0 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 0 FirstWrite -1}
		done_read_2 {Type I LastRead 0 FirstWrite -1}
		done_read {Type I LastRead 0 FirstWrite -1}}
	discardBitStreamLL {
		bitbuffer_read {Type I LastRead 0 FirstWrite -1}
		bits_cntr_read {Type I LastRead 0 FirstWrite -1}
		n_bits_val {Type I LastRead 0 FirstWrite -1}}
	discardBitStreamLL {
		bitbuffer_read {Type I LastRead 0 FirstWrite -1}
		bits_cntr_read {Type I LastRead 0 FirstWrite -1}
		n_bits_val {Type I LastRead 0 FirstWrite -1}}
	discardBitStreamLL {
		bitbuffer_read {Type I LastRead 0 FirstWrite -1}
		bits_cntr_read {Type I LastRead 0 FirstWrite -1}
		n_bits_val {Type I LastRead 0 FirstWrite -1}}
	discardBitStreamLL {
		bitbuffer_read {Type I LastRead 0 FirstWrite -1}
		bits_cntr_read {Type I LastRead 0 FirstWrite -1}
		n_bits_val {Type I LastRead 0 FirstWrite -1}}
	huffmanDecoderLL_2_0_Pipeline_read_fname {
		done_17 {Type I LastRead 0 FirstWrite -1}
		bits_cntr_16 {Type I LastRead 0 FirstWrite -1}
		bitbuffer_15 {Type I LastRead 0 FirstWrite -1}
		bitbuffer_14 {Type I LastRead 0 FirstWrite -1}
		huffman_input_stream {Type I LastRead 1 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 1 FirstWrite -1}
		done_1346_out {Type O LastRead -1 FirstWrite 1}
		bits_cntr_1340_out {Type O LastRead -1 FirstWrite 1}
		bitbuffer_1333_out {Type O LastRead -1 FirstWrite 1}}
	huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3 {
		bl8Code {Type O LastRead -1 FirstWrite 1}
		codeOffsets {Type O LastRead -1 FirstWrite 1}
		codeOffsets_1 {Type O LastRead -1 FirstWrite 1}
		bl9Code {Type O LastRead -1 FirstWrite 1}
		bl7Code {Type O LastRead -1 FirstWrite 1}
		bl5Code_1 {Type O LastRead -1 FirstWrite 1}}
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
		dext {Type I LastRead -1 FirstWrite -1}}
	huffmanDecoderLL_2_0_Pipeline_dyn_len_bits {
		done_26 {Type I LastRead 0 FirstWrite -1}
		bits_cntr_39 {Type I LastRead 0 FirstWrite -1}
		bitbuffer_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln1069_1 {Type I LastRead 0 FirstWrite -1}
		dynamic_lens {Type O LastRead -1 FirstWrite 2}
		huffman_input_stream {Type I LastRead 2 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 2 FirstWrite -1}
		done_9_out {Type O LastRead -1 FirstWrite 1}
		bits_cntr_7_out {Type O LastRead -1 FirstWrite 1}
		bitbuffer_9_out {Type O LastRead -1 FirstWrite 1}
		order {Type I LastRead 1 FirstWrite -1}}
	huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2 {
		zext_ln1069 {Type I LastRead 0 FirstWrite -1}
		dynamic_lens {Type O LastRead -1 FirstWrite 1}
		order {Type I LastRead 0 FirstWrite -1}}
	code_generator_array_dyn_new {
		lens {Type I LastRead 0 FirstWrite -1}
		codes_val {Type I LastRead 0 FirstWrite -1}
		codeOffsets {Type O LastRead -1 FirstWrite 0}
		bl1Codes {Type O LastRead -1 FirstWrite 1}
		bl2Codes {Type O LastRead -1 FirstWrite 1}
		bl3Codes {Type O LastRead -1 FirstWrite 1}
		bl4Codes {Type O LastRead -1 FirstWrite 1}
		bl5Codes {Type O LastRead -1 FirstWrite 1}
		bl6Codes {Type O LastRead -1 FirstWrite 1}
		bl7Codes {Type O LastRead -1 FirstWrite 1}
		bl8Codes {Type O LastRead -1 FirstWrite 1}
		bl9Codes {Type O LastRead -1 FirstWrite 1}
		bl10Codes {Type O LastRead -1 FirstWrite 1}
		bl11Codes {Type O LastRead -1 FirstWrite 1}
		bl12Codes {Type O LastRead -1 FirstWrite 1}
		bl13Codes {Type O LastRead -1 FirstWrite 1}
		bl14Codes {Type O LastRead -1 FirstWrite 1}
		bl15Codes {Type O LastRead -1 FirstWrite 1}
		idx {Type I LastRead 0 FirstWrite -1}}
	code_generator_array_dyn_new_Pipeline_cnt_lens {
		codes_val {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}
		lens {Type I LastRead 0 FirstWrite -1}
		count_out {Type O LastRead -1 FirstWrite 0}
		count_1_out {Type O LastRead -1 FirstWrite 0}
		count_2_out {Type O LastRead -1 FirstWrite 0}
		count_3_out {Type O LastRead -1 FirstWrite 0}
		count_4_out {Type O LastRead -1 FirstWrite 0}
		count_5_out {Type O LastRead -1 FirstWrite 0}
		count_6_out {Type O LastRead -1 FirstWrite 0}
		count_7_out {Type O LastRead -1 FirstWrite 0}
		count_8_out {Type O LastRead -1 FirstWrite 0}
		count_9_out {Type O LastRead -1 FirstWrite 0}
		count_10_out {Type O LastRead -1 FirstWrite 0}
		count_11_out {Type O LastRead -1 FirstWrite 0}
		count_12_out {Type O LastRead -1 FirstWrite 0}
		count_13_out {Type O LastRead -1 FirstWrite 0}}
	code_generator_array_dyn_new_Pipeline_firstCode {
		codeOffsets {Type O LastRead -1 FirstWrite 0}
		count_13_reload {Type I LastRead 0 FirstWrite -1}
		count_12_reload {Type I LastRead 0 FirstWrite -1}
		count_11_reload {Type I LastRead 0 FirstWrite -1}
		count_10_reload {Type I LastRead 0 FirstWrite -1}
		count_9_reload {Type I LastRead 0 FirstWrite -1}
		count_8_reload {Type I LastRead 0 FirstWrite -1}
		count_7_reload {Type I LastRead 0 FirstWrite -1}
		count_6_reload {Type I LastRead 0 FirstWrite -1}
		count_5_reload {Type I LastRead 0 FirstWrite -1}
		count_4_reload {Type I LastRead 0 FirstWrite -1}
		count_3_reload {Type I LastRead 0 FirstWrite -1}
		count_2_reload {Type I LastRead 0 FirstWrite -1}
		count_1_reload {Type I LastRead 0 FirstWrite -1}
		count_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_14_out {Type O LastRead -1 FirstWrite 0}
		firstCode_13_out {Type O LastRead -1 FirstWrite 0}
		firstCode_12_out {Type O LastRead -1 FirstWrite 0}
		firstCode_11_out {Type O LastRead -1 FirstWrite 0}
		firstCode_10_out {Type O LastRead -1 FirstWrite 0}
		firstCode_9_out {Type O LastRead -1 FirstWrite 0}
		firstCode_8_out {Type O LastRead -1 FirstWrite 0}
		firstCode_7_out {Type O LastRead -1 FirstWrite 0}
		firstCode_6_out {Type O LastRead -1 FirstWrite 0}
		firstCode_5_out {Type O LastRead -1 FirstWrite 0}
		firstCode_4_out {Type O LastRead -1 FirstWrite 0}
		firstCode_3_out {Type O LastRead -1 FirstWrite 0}
		firstCode_2_out {Type O LastRead -1 FirstWrite 0}
		firstCode_1_out {Type O LastRead -1 FirstWrite 0}
		firstCode_out {Type O LastRead -1 FirstWrite 0}}
	code_generator_array_dyn_new_Pipeline_CodeGen {
		firstCode_14_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_13_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_12_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_11_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_10_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_9_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_8_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_7_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_6_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_5_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_4_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_3_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_2_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_1_reload {Type I LastRead 0 FirstWrite -1}
		firstCode_reload {Type I LastRead 0 FirstWrite -1}
		codes_val {Type I LastRead 0 FirstWrite -1}
		bl1Codes {Type O LastRead -1 FirstWrite 1}
		bl2Codes {Type O LastRead -1 FirstWrite 1}
		bl3Codes {Type O LastRead -1 FirstWrite 1}
		bl4Codes {Type O LastRead -1 FirstWrite 1}
		bl5Codes {Type O LastRead -1 FirstWrite 1}
		bl6Codes {Type O LastRead -1 FirstWrite 1}
		bl7Codes {Type O LastRead -1 FirstWrite 1}
		bl8Codes {Type O LastRead -1 FirstWrite 1}
		bl9Codes {Type O LastRead -1 FirstWrite 1}
		bl10Codes {Type O LastRead -1 FirstWrite 1}
		bl11Codes {Type O LastRead -1 FirstWrite 1}
		bl12Codes {Type O LastRead -1 FirstWrite 1}
		bl13Codes {Type O LastRead -1 FirstWrite 1}
		bl14Codes {Type O LastRead -1 FirstWrite 1}
		bl15Codes {Type O LastRead -1 FirstWrite 1}
		idx {Type I LastRead 0 FirstWrite -1}
		lens {Type I LastRead 0 FirstWrite -1}}
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
		done_1_out {Type O LastRead -1 FirstWrite 2}}
	huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy {
		done_25 {Type I LastRead 0 FirstWrite -1}
		bitbuffer_33 {Type I LastRead 0 FirstWrite -1}
		bits_cntr_35 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		huffman_input_stream {Type I LastRead 2 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 1 FirstWrite -1}
		lz77_output_stream {Type O LastRead -1 FirstWrite 2}
		done_6_out {Type O LastRead -1 FirstWrite 1}
		bitbuffer_6338_out {Type O LastRead -1 FirstWrite 1}
		bits_cntr_5_out {Type O LastRead -1 FirstWrite 1}}
	huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData {
		done_19 {Type I LastRead 0 FirstWrite -1}
		huffman_input_stream {Type I LastRead 1 FirstWrite -1}
		huffman_eos_stream {Type I LastRead 0 FirstWrite -1}}
	decompressor_kernel_Pipeline_VITIS_LOOP_64_4 {
		lz77_output_stream {Type I LastRead 0 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 1}
		decompressed_count_out {Type O LastRead -1 FirstWrite 0}}
	decompressor_kernel_Pipeline_VITIS_LOOP_87_6 {
		lz77_output_stream {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	m_axi_input { ap_none {  { m_axi_input in_data 0 1024 } } }
	out_stream { ap_fifo {  { out_stream_din fifo_data_in 1 32 }  { out_stream_full_n fifo_status 0 1 }  { out_stream_write fifo_port_we 1 1 } } }
	out_eos { ap_fifo {  { out_eos_din fifo_data_in 1 1 }  { out_eos_full_n fifo_status 0 1 }  { out_eos_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	out_stream { fifo_write 1 no_conditional }
	out_eos { fifo_write 2 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
