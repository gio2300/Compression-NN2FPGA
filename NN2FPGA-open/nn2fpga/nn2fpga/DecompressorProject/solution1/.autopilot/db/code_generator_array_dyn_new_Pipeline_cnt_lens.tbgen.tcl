set moduleName code_generator_array_dyn_new_Pipeline_cnt_lens
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
set C_modelName {code_generator_array_dyn_new_Pipeline_cnt_lens}
set C_modelType { void 0 }
set C_modelArgList {
	{ codes_val int 9 regular  }
	{ idx int 9 regular  }
	{ lens int 5 regular {array 318 { 1 } 1 1 }  }
	{ count_out int 9 regular {pointer 1}  }
	{ count_1_out int 9 regular {pointer 1}  }
	{ count_2_out int 9 regular {pointer 1}  }
	{ count_3_out int 9 regular {pointer 1}  }
	{ count_4_out int 9 regular {pointer 1}  }
	{ count_5_out int 9 regular {pointer 1}  }
	{ count_6_out int 9 regular {pointer 1}  }
	{ count_7_out int 9 regular {pointer 1}  }
	{ count_8_out int 9 regular {pointer 1}  }
	{ count_9_out int 9 regular {pointer 1}  }
	{ count_10_out int 9 regular {pointer 1}  }
	{ count_11_out int 9 regular {pointer 1}  }
	{ count_12_out int 9 regular {pointer 1}  }
	{ count_13_out int 9 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "codes_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "lens", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "count_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_1_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_2_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_3_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_4_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_5_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_6_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_7_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_8_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_9_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_10_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_11_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_12_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_13_out", "interface" : "wire", "bitwidth" : 9, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ codes_val sc_in sc_lv 9 signal 0 } 
	{ idx sc_in sc_lv 9 signal 1 } 
	{ lens_address0 sc_out sc_lv 9 signal 2 } 
	{ lens_ce0 sc_out sc_logic 1 signal 2 } 
	{ lens_q0 sc_in sc_lv 5 signal 2 } 
	{ count_out sc_out sc_lv 9 signal 3 } 
	{ count_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ count_1_out sc_out sc_lv 9 signal 4 } 
	{ count_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ count_2_out sc_out sc_lv 9 signal 5 } 
	{ count_2_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ count_3_out sc_out sc_lv 9 signal 6 } 
	{ count_3_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ count_4_out sc_out sc_lv 9 signal 7 } 
	{ count_4_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ count_5_out sc_out sc_lv 9 signal 8 } 
	{ count_5_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ count_6_out sc_out sc_lv 9 signal 9 } 
	{ count_6_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ count_7_out sc_out sc_lv 9 signal 10 } 
	{ count_7_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ count_8_out sc_out sc_lv 9 signal 11 } 
	{ count_8_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ count_9_out sc_out sc_lv 9 signal 12 } 
	{ count_9_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ count_10_out sc_out sc_lv 9 signal 13 } 
	{ count_10_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ count_11_out sc_out sc_lv 9 signal 14 } 
	{ count_11_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ count_12_out sc_out sc_lv 9 signal 15 } 
	{ count_12_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ count_13_out sc_out sc_lv 9 signal 16 } 
	{ count_13_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "codes_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "codes_val", "role": "default" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "idx", "role": "default" }} , 
 	{ "name": "lens_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lens", "role": "address0" }} , 
 	{ "name": "lens_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lens", "role": "ce0" }} , 
 	{ "name": "lens_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lens", "role": "q0" }} , 
 	{ "name": "count_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_out", "role": "default" }} , 
 	{ "name": "count_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_out", "role": "ap_vld" }} , 
 	{ "name": "count_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_1_out", "role": "default" }} , 
 	{ "name": "count_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_1_out", "role": "ap_vld" }} , 
 	{ "name": "count_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_2_out", "role": "default" }} , 
 	{ "name": "count_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_2_out", "role": "ap_vld" }} , 
 	{ "name": "count_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_3_out", "role": "default" }} , 
 	{ "name": "count_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_3_out", "role": "ap_vld" }} , 
 	{ "name": "count_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_4_out", "role": "default" }} , 
 	{ "name": "count_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_4_out", "role": "ap_vld" }} , 
 	{ "name": "count_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_5_out", "role": "default" }} , 
 	{ "name": "count_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_5_out", "role": "ap_vld" }} , 
 	{ "name": "count_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_6_out", "role": "default" }} , 
 	{ "name": "count_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_6_out", "role": "ap_vld" }} , 
 	{ "name": "count_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_7_out", "role": "default" }} , 
 	{ "name": "count_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_7_out", "role": "ap_vld" }} , 
 	{ "name": "count_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_8_out", "role": "default" }} , 
 	{ "name": "count_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_8_out", "role": "ap_vld" }} , 
 	{ "name": "count_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_9_out", "role": "default" }} , 
 	{ "name": "count_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_9_out", "role": "ap_vld" }} , 
 	{ "name": "count_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_10_out", "role": "default" }} , 
 	{ "name": "count_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_10_out", "role": "ap_vld" }} , 
 	{ "name": "count_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_11_out", "role": "default" }} , 
 	{ "name": "count_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_11_out", "role": "ap_vld" }} , 
 	{ "name": "count_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_12_out", "role": "default" }} , 
 	{ "name": "count_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_12_out", "role": "ap_vld" }} , 
 	{ "name": "count_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_13_out", "role": "default" }} , 
 	{ "name": "count_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "count_13_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_9_1_1_U156", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		count_13_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "513"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	codes_val { ap_none {  { codes_val in_data 0 9 } } }
	idx { ap_none {  { idx in_data 0 9 } } }
	lens { ap_memory {  { lens_address0 mem_address 1 9 }  { lens_ce0 mem_ce 1 1 }  { lens_q0 in_data 0 5 } } }
	count_out { ap_vld {  { count_out out_data 1 9 }  { count_out_ap_vld out_vld 1 1 } } }
	count_1_out { ap_vld {  { count_1_out out_data 1 9 }  { count_1_out_ap_vld out_vld 1 1 } } }
	count_2_out { ap_vld {  { count_2_out out_data 1 9 }  { count_2_out_ap_vld out_vld 1 1 } } }
	count_3_out { ap_vld {  { count_3_out out_data 1 9 }  { count_3_out_ap_vld out_vld 1 1 } } }
	count_4_out { ap_vld {  { count_4_out out_data 1 9 }  { count_4_out_ap_vld out_vld 1 1 } } }
	count_5_out { ap_vld {  { count_5_out out_data 1 9 }  { count_5_out_ap_vld out_vld 1 1 } } }
	count_6_out { ap_vld {  { count_6_out out_data 1 9 }  { count_6_out_ap_vld out_vld 1 1 } } }
	count_7_out { ap_vld {  { count_7_out out_data 1 9 }  { count_7_out_ap_vld out_vld 1 1 } } }
	count_8_out { ap_vld {  { count_8_out out_data 1 9 }  { count_8_out_ap_vld out_vld 1 1 } } }
	count_9_out { ap_vld {  { count_9_out out_data 1 9 }  { count_9_out_ap_vld out_vld 1 1 } } }
	count_10_out { ap_vld {  { count_10_out out_data 1 9 }  { count_10_out_ap_vld out_vld 1 1 } } }
	count_11_out { ap_vld {  { count_11_out out_data 1 9 }  { count_11_out_ap_vld out_vld 1 1 } } }
	count_12_out { ap_vld {  { count_12_out out_data 1 9 }  { count_12_out_ap_vld out_vld 1 1 } } }
	count_13_out { ap_vld {  { count_13_out out_data 1 9 }  { count_13_out_ap_vld out_vld 1 1 } } }
}
