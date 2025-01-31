set moduleName huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy
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
set C_modelName {huffmanDecoderLL<2, 0>_Pipeline_strd_blk_cpy}
set C_modelType { void 0 }
set C_modelArgList {
	{ done_25 int 1 regular  }
	{ bitbuffer_33 int 32 regular  }
	{ bits_cntr_35 int 6 regular  }
	{ empty int 16 regular  }
	{ huffman_input_stream int 16 regular {fifo 0 volatile }  }
	{ huffman_eos_stream int 1 regular {fifo 0 volatile }  }
	{ lz77_output_stream int 16 regular {fifo 1 volatile }  }
	{ done_6_out int 1 regular {pointer 1}  }
	{ bitbuffer_6338_out int 32 regular {pointer 1}  }
	{ bits_cntr_5_out int 6 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "done_25", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bitbuffer_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bits_cntr_35", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_input_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_eos_stream", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "lz77_output_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "done_6_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bitbuffer_6338_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bits_cntr_5_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ huffman_eos_stream_dout sc_in sc_lv 1 signal 5 } 
	{ huffman_eos_stream_empty_n sc_in sc_logic 1 signal 5 } 
	{ huffman_eos_stream_read sc_out sc_logic 1 signal 5 } 
	{ lz77_output_stream_din sc_out sc_lv 16 signal 6 } 
	{ lz77_output_stream_full_n sc_in sc_logic 1 signal 6 } 
	{ lz77_output_stream_write sc_out sc_logic 1 signal 6 } 
	{ huffman_input_stream_dout sc_in sc_lv 16 signal 4 } 
	{ huffman_input_stream_empty_n sc_in sc_logic 1 signal 4 } 
	{ huffman_input_stream_read sc_out sc_logic 1 signal 4 } 
	{ done_25 sc_in sc_lv 1 signal 0 } 
	{ bitbuffer_33 sc_in sc_lv 32 signal 1 } 
	{ bits_cntr_35 sc_in sc_lv 6 signal 2 } 
	{ empty sc_in sc_lv 16 signal 3 } 
	{ done_6_out sc_out sc_lv 1 signal 7 } 
	{ done_6_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ bitbuffer_6338_out sc_out sc_lv 32 signal 8 } 
	{ bitbuffer_6338_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ bits_cntr_5_out sc_out sc_lv 6 signal 9 } 
	{ bits_cntr_5_out_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "huffman_eos_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "dout" }} , 
 	{ "name": "huffman_eos_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_eos_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "read" }} , 
 	{ "name": "lz77_output_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "din" }} , 
 	{ "name": "lz77_output_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "full_n" }} , 
 	{ "name": "lz77_output_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lz77_output_stream", "role": "write" }} , 
 	{ "name": "huffman_input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "dout" }} , 
 	{ "name": "huffman_input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "read" }} , 
 	{ "name": "done_25", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "done_25", "role": "default" }} , 
 	{ "name": "bitbuffer_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitbuffer_33", "role": "default" }} , 
 	{ "name": "bits_cntr_35", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bits_cntr_35", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "done_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "done_6_out", "role": "default" }} , 
 	{ "name": "done_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "done_6_out", "role": "ap_vld" }} , 
 	{ "name": "bitbuffer_6338_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitbuffer_6338_out", "role": "default" }} , 
 	{ "name": "bitbuffer_6338_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bitbuffer_6338_out", "role": "ap_vld" }} , 
 	{ "name": "bits_cntr_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bits_cntr_5_out", "role": "default" }} , 
 	{ "name": "bits_cntr_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bits_cntr_5_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		bits_cntr_5_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "65538"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "65538"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	done_25 { ap_none {  { done_25 in_data 0 1 } } }
	bitbuffer_33 { ap_none {  { bitbuffer_33 in_data 0 32 } } }
	bits_cntr_35 { ap_none {  { bits_cntr_35 in_data 0 6 } } }
	empty { ap_none {  { empty in_data 0 16 } } }
	huffman_input_stream { ap_fifo {  { huffman_input_stream_dout fifo_data_in 0 16 }  { huffman_input_stream_empty_n fifo_status 0 1 }  { huffman_input_stream_read fifo_port_we 1 1 } } }
	huffman_eos_stream { ap_fifo {  { huffman_eos_stream_dout fifo_data_in 0 1 }  { huffman_eos_stream_empty_n fifo_status 0 1 }  { huffman_eos_stream_read fifo_port_we 1 1 } } }
	lz77_output_stream { ap_fifo {  { lz77_output_stream_din fifo_data_in 1 16 }  { lz77_output_stream_full_n fifo_status 0 1 }  { lz77_output_stream_write fifo_port_we 1 1 } } }
	done_6_out { ap_vld {  { done_6_out out_data 1 1 }  { done_6_out_ap_vld out_vld 1 1 } } }
	bitbuffer_6338_out { ap_vld {  { bitbuffer_6338_out out_data 1 32 }  { bitbuffer_6338_out_ap_vld out_vld 1 1 } } }
	bits_cntr_5_out { ap_vld {  { bits_cntr_5_out out_data 1 6 }  { bits_cntr_5_out_ap_vld out_vld 1 1 } } }
}
