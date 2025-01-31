set moduleName code_generator_array_dyn_new_Pipeline_firstCode
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
set C_modelName {code_generator_array_dyn_new_Pipeline_firstCode}
set C_modelType { void 0 }
set C_modelArgList {
	{ codeOffsets int 16 regular {array 15 { 0 3 } 0 1 }  }
	{ count_13_reload int 9 regular  }
	{ count_12_reload int 9 regular  }
	{ count_11_reload int 9 regular  }
	{ count_10_reload int 9 regular  }
	{ count_9_reload int 9 regular  }
	{ count_8_reload int 9 regular  }
	{ count_7_reload int 9 regular  }
	{ count_6_reload int 9 regular  }
	{ count_5_reload int 9 regular  }
	{ count_4_reload int 9 regular  }
	{ count_3_reload int 9 regular  }
	{ count_2_reload int 9 regular  }
	{ count_1_reload int 9 regular  }
	{ count_reload int 9 regular  }
	{ firstCode_14_out int 15 regular {pointer 1}  }
	{ firstCode_13_out int 15 regular {pointer 1}  }
	{ firstCode_12_out int 15 regular {pointer 1}  }
	{ firstCode_11_out int 15 regular {pointer 1}  }
	{ firstCode_10_out int 15 regular {pointer 1}  }
	{ firstCode_9_out int 15 regular {pointer 1}  }
	{ firstCode_8_out int 15 regular {pointer 1}  }
	{ firstCode_7_out int 15 regular {pointer 1}  }
	{ firstCode_6_out int 15 regular {pointer 1}  }
	{ firstCode_5_out int 15 regular {pointer 1}  }
	{ firstCode_4_out int 15 regular {pointer 1}  }
	{ firstCode_3_out int 15 regular {pointer 1}  }
	{ firstCode_2_out int 15 regular {pointer 1}  }
	{ firstCode_1_out int 15 regular {pointer 1}  }
	{ firstCode_out int 15 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "codeOffsets", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_13_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_12_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_11_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_10_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_9_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_8_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_7_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_6_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_5_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_4_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_3_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_2_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_1_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "count_reload", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_14_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_13_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_12_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_11_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_10_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_9_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_8_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_7_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_6_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_5_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_4_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_3_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_2_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_1_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "firstCode_out", "interface" : "wire", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ codeOffsets_address0 sc_out sc_lv 4 signal 0 } 
	{ codeOffsets_ce0 sc_out sc_logic 1 signal 0 } 
	{ codeOffsets_we0 sc_out sc_logic 1 signal 0 } 
	{ codeOffsets_d0 sc_out sc_lv 16 signal 0 } 
	{ count_13_reload sc_in sc_lv 9 signal 1 } 
	{ count_12_reload sc_in sc_lv 9 signal 2 } 
	{ count_11_reload sc_in sc_lv 9 signal 3 } 
	{ count_10_reload sc_in sc_lv 9 signal 4 } 
	{ count_9_reload sc_in sc_lv 9 signal 5 } 
	{ count_8_reload sc_in sc_lv 9 signal 6 } 
	{ count_7_reload sc_in sc_lv 9 signal 7 } 
	{ count_6_reload sc_in sc_lv 9 signal 8 } 
	{ count_5_reload sc_in sc_lv 9 signal 9 } 
	{ count_4_reload sc_in sc_lv 9 signal 10 } 
	{ count_3_reload sc_in sc_lv 9 signal 11 } 
	{ count_2_reload sc_in sc_lv 9 signal 12 } 
	{ count_1_reload sc_in sc_lv 9 signal 13 } 
	{ count_reload sc_in sc_lv 9 signal 14 } 
	{ firstCode_14_out sc_out sc_lv 15 signal 15 } 
	{ firstCode_14_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ firstCode_13_out sc_out sc_lv 15 signal 16 } 
	{ firstCode_13_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ firstCode_12_out sc_out sc_lv 15 signal 17 } 
	{ firstCode_12_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ firstCode_11_out sc_out sc_lv 15 signal 18 } 
	{ firstCode_11_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ firstCode_10_out sc_out sc_lv 15 signal 19 } 
	{ firstCode_10_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ firstCode_9_out sc_out sc_lv 15 signal 20 } 
	{ firstCode_9_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ firstCode_8_out sc_out sc_lv 15 signal 21 } 
	{ firstCode_8_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ firstCode_7_out sc_out sc_lv 15 signal 22 } 
	{ firstCode_7_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ firstCode_6_out sc_out sc_lv 15 signal 23 } 
	{ firstCode_6_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ firstCode_5_out sc_out sc_lv 15 signal 24 } 
	{ firstCode_5_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ firstCode_4_out sc_out sc_lv 15 signal 25 } 
	{ firstCode_4_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ firstCode_3_out sc_out sc_lv 15 signal 26 } 
	{ firstCode_3_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ firstCode_2_out sc_out sc_lv 15 signal 27 } 
	{ firstCode_2_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ firstCode_1_out sc_out sc_lv 15 signal 28 } 
	{ firstCode_1_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ firstCode_out sc_out sc_lv 15 signal 29 } 
	{ firstCode_out_ap_vld sc_out sc_logic 1 outvld 29 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "codeOffsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "codeOffsets", "role": "address0" }} , 
 	{ "name": "codeOffsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets", "role": "ce0" }} , 
 	{ "name": "codeOffsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "codeOffsets", "role": "we0" }} , 
 	{ "name": "codeOffsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "codeOffsets", "role": "d0" }} , 
 	{ "name": "count_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_13_reload", "role": "default" }} , 
 	{ "name": "count_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_12_reload", "role": "default" }} , 
 	{ "name": "count_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_11_reload", "role": "default" }} , 
 	{ "name": "count_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_10_reload", "role": "default" }} , 
 	{ "name": "count_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_9_reload", "role": "default" }} , 
 	{ "name": "count_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_8_reload", "role": "default" }} , 
 	{ "name": "count_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_7_reload", "role": "default" }} , 
 	{ "name": "count_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_6_reload", "role": "default" }} , 
 	{ "name": "count_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_5_reload", "role": "default" }} , 
 	{ "name": "count_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_4_reload", "role": "default" }} , 
 	{ "name": "count_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_3_reload", "role": "default" }} , 
 	{ "name": "count_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_2_reload", "role": "default" }} , 
 	{ "name": "count_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_1_reload", "role": "default" }} , 
 	{ "name": "count_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "count_reload", "role": "default" }} , 
 	{ "name": "firstCode_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_14_out", "role": "default" }} , 
 	{ "name": "firstCode_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_14_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_13_out", "role": "default" }} , 
 	{ "name": "firstCode_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_13_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_12_out", "role": "default" }} , 
 	{ "name": "firstCode_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_12_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_11_out", "role": "default" }} , 
 	{ "name": "firstCode_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_11_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_10_out", "role": "default" }} , 
 	{ "name": "firstCode_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_10_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_9_out", "role": "default" }} , 
 	{ "name": "firstCode_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_9_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_8_out", "role": "default" }} , 
 	{ "name": "firstCode_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_8_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_7_out", "role": "default" }} , 
 	{ "name": "firstCode_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_7_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_6_out", "role": "default" }} , 
 	{ "name": "firstCode_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_6_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_5_out", "role": "default" }} , 
 	{ "name": "firstCode_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_5_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_4_out", "role": "default" }} , 
 	{ "name": "firstCode_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_4_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_3_out", "role": "default" }} , 
 	{ "name": "firstCode_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_3_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_2_out", "role": "default" }} , 
 	{ "name": "firstCode_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_2_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_1_out", "role": "default" }} , 
 	{ "name": "firstCode_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_1_out", "role": "ap_vld" }} , 
 	{ "name": "firstCode_out", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_out", "role": "default" }} , 
 	{ "name": "firstCode_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "firstCode_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_31_4_9_1_1_U175", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		firstCode_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	codeOffsets { ap_memory {  { codeOffsets_address0 mem_address 1 4 }  { codeOffsets_ce0 mem_ce 1 1 }  { codeOffsets_we0 mem_we 1 1 }  { codeOffsets_d0 mem_din 1 16 } } }
	count_13_reload { ap_none {  { count_13_reload in_data 0 9 } } }
	count_12_reload { ap_none {  { count_12_reload in_data 0 9 } } }
	count_11_reload { ap_none {  { count_11_reload in_data 0 9 } } }
	count_10_reload { ap_none {  { count_10_reload in_data 0 9 } } }
	count_9_reload { ap_none {  { count_9_reload in_data 0 9 } } }
	count_8_reload { ap_none {  { count_8_reload in_data 0 9 } } }
	count_7_reload { ap_none {  { count_7_reload in_data 0 9 } } }
	count_6_reload { ap_none {  { count_6_reload in_data 0 9 } } }
	count_5_reload { ap_none {  { count_5_reload in_data 0 9 } } }
	count_4_reload { ap_none {  { count_4_reload in_data 0 9 } } }
	count_3_reload { ap_none {  { count_3_reload in_data 0 9 } } }
	count_2_reload { ap_none {  { count_2_reload in_data 0 9 } } }
	count_1_reload { ap_none {  { count_1_reload in_data 0 9 } } }
	count_reload { ap_none {  { count_reload in_data 0 9 } } }
	firstCode_14_out { ap_vld {  { firstCode_14_out out_data 1 15 }  { firstCode_14_out_ap_vld out_vld 1 1 } } }
	firstCode_13_out { ap_vld {  { firstCode_13_out out_data 1 15 }  { firstCode_13_out_ap_vld out_vld 1 1 } } }
	firstCode_12_out { ap_vld {  { firstCode_12_out out_data 1 15 }  { firstCode_12_out_ap_vld out_vld 1 1 } } }
	firstCode_11_out { ap_vld {  { firstCode_11_out out_data 1 15 }  { firstCode_11_out_ap_vld out_vld 1 1 } } }
	firstCode_10_out { ap_vld {  { firstCode_10_out out_data 1 15 }  { firstCode_10_out_ap_vld out_vld 1 1 } } }
	firstCode_9_out { ap_vld {  { firstCode_9_out out_data 1 15 }  { firstCode_9_out_ap_vld out_vld 1 1 } } }
	firstCode_8_out { ap_vld {  { firstCode_8_out out_data 1 15 }  { firstCode_8_out_ap_vld out_vld 1 1 } } }
	firstCode_7_out { ap_vld {  { firstCode_7_out out_data 1 15 }  { firstCode_7_out_ap_vld out_vld 1 1 } } }
	firstCode_6_out { ap_vld {  { firstCode_6_out out_data 1 15 }  { firstCode_6_out_ap_vld out_vld 1 1 } } }
	firstCode_5_out { ap_vld {  { firstCode_5_out out_data 1 15 }  { firstCode_5_out_ap_vld out_vld 1 1 } } }
	firstCode_4_out { ap_vld {  { firstCode_4_out out_data 1 15 }  { firstCode_4_out_ap_vld out_vld 1 1 } } }
	firstCode_3_out { ap_vld {  { firstCode_3_out out_data 1 15 }  { firstCode_3_out_ap_vld out_vld 1 1 } } }
	firstCode_2_out { ap_vld {  { firstCode_2_out out_data 1 15 }  { firstCode_2_out_ap_vld out_vld 1 1 } } }
	firstCode_1_out { ap_vld {  { firstCode_1_out out_data 1 15 }  { firstCode_1_out_ap_vld out_vld 1 1 } } }
	firstCode_out { ap_vld {  { firstCode_out out_data 1 15 }  { firstCode_out_ap_vld out_vld 1 1 } } }
}
