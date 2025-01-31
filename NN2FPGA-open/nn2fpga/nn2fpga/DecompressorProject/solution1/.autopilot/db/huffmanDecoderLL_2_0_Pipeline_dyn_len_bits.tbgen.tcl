set moduleName huffmanDecoderLL_2_0_Pipeline_dyn_len_bits
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
set C_modelName {huffmanDecoderLL<2, 0>_Pipeline_dyn_len_bits}
set C_modelType { void 0 }
set C_modelArgList {
	{ done_26 int 1 regular  }
	{ bits_cntr_39 int 6 regular  }
	{ bitbuffer_37 int 32 regular  }
	{ zext_ln1069_1 int 4 regular  }
	{ dynamic_lens int 5 regular {array 318 { 0 } 0 1 }  }
	{ huffman_input_stream int 16 regular {fifo 0 volatile }  }
	{ huffman_eos_stream int 1 regular {fifo 0 volatile }  }
	{ done_9_out int 1 regular {pointer 1}  }
	{ bits_cntr_7_out int 6 regular {pointer 1}  }
	{ bitbuffer_9_out int 32 regular {pointer 1}  }
	{ order int 5 regular {array 19 { 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "done_26", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bits_cntr_39", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "bitbuffer_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1069_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "dynamic_lens", "interface" : "memory", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "huffman_input_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_eos_stream", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "done_9_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bits_cntr_7_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bitbuffer_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "order", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ done_26 sc_in sc_lv 1 signal 0 } 
	{ bits_cntr_39 sc_in sc_lv 6 signal 1 } 
	{ bitbuffer_37 sc_in sc_lv 32 signal 2 } 
	{ zext_ln1069_1 sc_in sc_lv 4 signal 3 } 
	{ dynamic_lens_address0 sc_out sc_lv 9 signal 4 } 
	{ dynamic_lens_ce0 sc_out sc_logic 1 signal 4 } 
	{ dynamic_lens_we0 sc_out sc_logic 1 signal 4 } 
	{ dynamic_lens_d0 sc_out sc_lv 5 signal 4 } 
	{ huffman_input_stream_dout sc_in sc_lv 16 signal 5 } 
	{ huffman_input_stream_empty_n sc_in sc_logic 1 signal 5 } 
	{ huffman_input_stream_read sc_out sc_logic 1 signal 5 } 
	{ huffman_eos_stream_dout sc_in sc_lv 1 signal 6 } 
	{ huffman_eos_stream_empty_n sc_in sc_logic 1 signal 6 } 
	{ huffman_eos_stream_read sc_out sc_logic 1 signal 6 } 
	{ done_9_out sc_out sc_lv 1 signal 7 } 
	{ done_9_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ bits_cntr_7_out sc_out sc_lv 6 signal 8 } 
	{ bits_cntr_7_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ bitbuffer_9_out sc_out sc_lv 32 signal 9 } 
	{ bitbuffer_9_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ order_address0 sc_out sc_lv 5 signal 10 } 
	{ order_ce0 sc_out sc_logic 1 signal 10 } 
	{ order_q0 sc_in sc_lv 5 signal 10 } 
	{ call_ret29_discardBitStreamLL_fu_610_p_din1 sc_out sc_lv 32 signal -1 } 
	{ call_ret29_discardBitStreamLL_fu_610_p_din2 sc_out sc_lv 6 signal -1 } 
	{ call_ret29_discardBitStreamLL_fu_610_p_din3 sc_out sc_lv 5 signal -1 } 
	{ call_ret29_discardBitStreamLL_fu_610_p_dout0_0 sc_in sc_lv 32 signal -1 } 
	{ call_ret29_discardBitStreamLL_fu_610_p_dout0_1 sc_in sc_lv 6 signal -1 } 
	{ call_ret29_discardBitStreamLL_fu_610_p_ready sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "done_26", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "done_26", "role": "default" }} , 
 	{ "name": "bits_cntr_39", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bits_cntr_39", "role": "default" }} , 
 	{ "name": "bitbuffer_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitbuffer_37", "role": "default" }} , 
 	{ "name": "zext_ln1069_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln1069_1", "role": "default" }} , 
 	{ "name": "dynamic_lens_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dynamic_lens", "role": "address0" }} , 
 	{ "name": "dynamic_lens_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dynamic_lens", "role": "ce0" }} , 
 	{ "name": "dynamic_lens_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dynamic_lens", "role": "we0" }} , 
 	{ "name": "dynamic_lens_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dynamic_lens", "role": "d0" }} , 
 	{ "name": "huffman_input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "dout" }} , 
 	{ "name": "huffman_input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_input_stream", "role": "read" }} , 
 	{ "name": "huffman_eos_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "dout" }} , 
 	{ "name": "huffman_eos_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "empty_n" }} , 
 	{ "name": "huffman_eos_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_eos_stream", "role": "read" }} , 
 	{ "name": "done_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "done_9_out", "role": "default" }} , 
 	{ "name": "done_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "done_9_out", "role": "ap_vld" }} , 
 	{ "name": "bits_cntr_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bits_cntr_7_out", "role": "default" }} , 
 	{ "name": "bits_cntr_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bits_cntr_7_out", "role": "ap_vld" }} , 
 	{ "name": "bitbuffer_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitbuffer_9_out", "role": "default" }} , 
 	{ "name": "bitbuffer_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bitbuffer_9_out", "role": "ap_vld" }} , 
 	{ "name": "order_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "order", "role": "address0" }} , 
 	{ "name": "order_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "order", "role": "ce0" }} , 
 	{ "name": "order_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "order", "role": "q0" }} , 
 	{ "name": "call_ret29_discardBitStreamLL_fu_610_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "call_ret29_discardBitStreamLL_fu_610_p_din1", "role": "default" }} , 
 	{ "name": "call_ret29_discardBitStreamLL_fu_610_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "call_ret29_discardBitStreamLL_fu_610_p_din2", "role": "default" }} , 
 	{ "name": "call_ret29_discardBitStreamLL_fu_610_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "call_ret29_discardBitStreamLL_fu_610_p_din3", "role": "default" }} , 
 	{ "name": "call_ret29_discardBitStreamLL_fu_610_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "call_ret29_discardBitStreamLL_fu_610_p_dout0_0", "role": "default" }} , 
 	{ "name": "call_ret29_discardBitStreamLL_fu_610_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "call_ret29_discardBitStreamLL_fu_610_p_dout0_1", "role": "default" }} , 
 	{ "name": "call_ret29_discardBitStreamLL_fu_610_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "call_ret29_discardBitStreamLL_fu_610_p_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		order {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	done_26 { ap_none {  { done_26 in_data 0 1 } } }
	bits_cntr_39 { ap_none {  { bits_cntr_39 in_data 0 6 } } }
	bitbuffer_37 { ap_none {  { bitbuffer_37 in_data 0 32 } } }
	zext_ln1069_1 { ap_none {  { zext_ln1069_1 in_data 0 4 } } }
	dynamic_lens { ap_memory {  { dynamic_lens_address0 mem_address 1 9 }  { dynamic_lens_ce0 mem_ce 1 1 }  { dynamic_lens_we0 mem_we 1 1 }  { dynamic_lens_d0 mem_din 1 5 } } }
	huffman_input_stream { ap_fifo {  { huffman_input_stream_dout fifo_data_in 0 16 }  { huffman_input_stream_empty_n fifo_status 0 1 }  { huffman_input_stream_read fifo_port_we 1 1 } } }
	huffman_eos_stream { ap_fifo {  { huffman_eos_stream_dout fifo_data_in 0 1 }  { huffman_eos_stream_empty_n fifo_status 0 1 }  { huffman_eos_stream_read fifo_port_we 1 1 } } }
	done_9_out { ap_vld {  { done_9_out out_data 1 1 }  { done_9_out_ap_vld out_vld 1 1 } } }
	bits_cntr_7_out { ap_vld {  { bits_cntr_7_out out_data 1 6 }  { bits_cntr_7_out_ap_vld out_vld 1 1 } } }
	bitbuffer_9_out { ap_vld {  { bitbuffer_9_out out_data 1 32 }  { bitbuffer_9_out_ap_vld out_vld 1 1 } } }
	order { ap_memory {  { order_address0 mem_address 1 5 }  { order_ce0 mem_ce 1 1 }  { order_q0 in_data 0 5 } } }
}
