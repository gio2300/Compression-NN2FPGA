set moduleName huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3
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
set C_modelName {huffmanDecoderLL<2, 0>_Pipeline_VITIS_LOOP_1130_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ bl8Code int 9 regular {array 256 { 0 } 0 1 }  }
	{ codeOffsets int 16 regular {array 15 { 0 3 } 0 1 }  }
	{ codeOffsets_1 int 16 regular {array 15 { 0 3 } 0 1 }  }
	{ bl9Code int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl7Code int 9 regular {array 128 { 0 } 0 1 }  }
	{ bl5Code_1 int 9 regular {array 32 { 0 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bl8Code", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "codeOffsets", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "codeOffsets_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl9Code", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl7Code", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl5Code_1", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bl8Code_address0 sc_out sc_lv 8 signal 0 } 
	{ bl8Code_ce0 sc_out sc_logic 1 signal 0 } 
	{ bl8Code_we0 sc_out sc_logic 1 signal 0 } 
	{ bl8Code_d0 sc_out sc_lv 9 signal 0 } 
	{ codeOffsets_address0 sc_out sc_lv 4 signal 1 } 
	{ codeOffsets_ce0 sc_out sc_logic 1 signal 1 } 
	{ codeOffsets_we0 sc_out sc_logic 1 signal 1 } 
	{ codeOffsets_d0 sc_out sc_lv 16 signal 1 } 
	{ codeOffsets_1_address0 sc_out sc_lv 4 signal 2 } 
	{ codeOffsets_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ codeOffsets_1_we0 sc_out sc_logic 1 signal 2 } 
	{ codeOffsets_1_d0 sc_out sc_lv 16 signal 2 } 
	{ bl9Code_address0 sc_out sc_lv 8 signal 3 } 
	{ bl9Code_ce0 sc_out sc_logic 1 signal 3 } 
	{ bl9Code_we0 sc_out sc_logic 1 signal 3 } 
	{ bl9Code_d0 sc_out sc_lv 9 signal 3 } 
	{ bl7Code_address0 sc_out sc_lv 7 signal 4 } 
	{ bl7Code_ce0 sc_out sc_logic 1 signal 4 } 
	{ bl7Code_we0 sc_out sc_logic 1 signal 4 } 
	{ bl7Code_d0 sc_out sc_lv 9 signal 4 } 
	{ bl5Code_1_address0 sc_out sc_lv 5 signal 5 } 
	{ bl5Code_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ bl5Code_1_we0 sc_out sc_logic 1 signal 5 } 
	{ bl5Code_1_d0 sc_out sc_lv 9 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bl8Code_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl8Code", "role": "address0" }} , 
 	{ "name": "bl8Code_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl8Code", "role": "ce0" }} , 
 	{ "name": "bl8Code_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl8Code", "role": "we0" }} , 
 	{ "name": "bl8Code_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl8Code", "role": "d0" }} , 
 	{ "name": "codeOffsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets", "role": "address0" }} , 
 	{ "name": "codeOffsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets", "role": "ce0" }} , 
 	{ "name": "codeOffsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets", "role": "we0" }} , 
 	{ "name": "codeOffsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets", "role": "d0" }} , 
 	{ "name": "codeOffsets_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "address0" }} , 
 	{ "name": "codeOffsets_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "ce0" }} , 
 	{ "name": "codeOffsets_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "we0" }} , 
 	{ "name": "codeOffsets_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets_1", "role": "d0" }} , 
 	{ "name": "bl9Code_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl9Code", "role": "address0" }} , 
 	{ "name": "bl9Code_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl9Code", "role": "ce0" }} , 
 	{ "name": "bl9Code_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl9Code", "role": "we0" }} , 
 	{ "name": "bl9Code_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl9Code", "role": "d0" }} , 
 	{ "name": "bl7Code_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bl7Code", "role": "address0" }} , 
 	{ "name": "bl7Code_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl7Code", "role": "ce0" }} , 
 	{ "name": "bl7Code_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl7Code", "role": "we0" }} , 
 	{ "name": "bl7Code_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl7Code", "role": "d0" }} , 
 	{ "name": "bl5Code_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bl5Code_1", "role": "address0" }} , 
 	{ "name": "bl5Code_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl5Code_1", "role": "ce0" }} , 
 	{ "name": "bl5Code_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl5Code_1", "role": "we0" }} , 
 	{ "name": "bl5Code_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl5Code_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3 {
		bl8Code {Type O LastRead -1 FirstWrite 1}
		codeOffsets {Type O LastRead -1 FirstWrite 1}
		codeOffsets_1 {Type O LastRead -1 FirstWrite 1}
		bl9Code {Type O LastRead -1 FirstWrite 1}
		bl7Code {Type O LastRead -1 FirstWrite 1}
		bl5Code_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "290", "Max" : "290"}
	, {"Name" : "Interval", "Min" : "290", "Max" : "290"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bl8Code { ap_memory {  { bl8Code_address0 mem_address 1 8 }  { bl8Code_ce0 mem_ce 1 1 }  { bl8Code_we0 mem_we 1 1 }  { bl8Code_d0 mem_din 1 9 } } }
	codeOffsets { ap_memory {  { codeOffsets_address0 mem_address 1 4 }  { codeOffsets_ce0 mem_ce 1 1 }  { codeOffsets_we0 mem_we 1 1 }  { codeOffsets_d0 mem_din 1 16 } } }
	codeOffsets_1 { ap_memory {  { codeOffsets_1_address0 mem_address 1 4 }  { codeOffsets_1_ce0 mem_ce 1 1 }  { codeOffsets_1_we0 mem_we 1 1 }  { codeOffsets_1_d0 mem_din 1 16 } } }
	bl9Code { ap_memory {  { bl9Code_address0 mem_address 1 8 }  { bl9Code_ce0 mem_ce 1 1 }  { bl9Code_we0 mem_we 1 1 }  { bl9Code_d0 mem_din 1 9 } } }
	bl7Code { ap_memory {  { bl7Code_address0 mem_address 1 7 }  { bl7Code_ce0 mem_ce 1 1 }  { bl7Code_we0 mem_we 1 1 }  { bl7Code_d0 mem_din 1 9 } } }
	bl5Code_1 { ap_memory {  { bl5Code_1_address0 mem_address 1 5 }  { bl5Code_1_ce0 mem_ce 1 1 }  { bl5Code_1_we0 mem_we 1 1 }  { bl5Code_1_d0 mem_din 1 9 } } }
}
