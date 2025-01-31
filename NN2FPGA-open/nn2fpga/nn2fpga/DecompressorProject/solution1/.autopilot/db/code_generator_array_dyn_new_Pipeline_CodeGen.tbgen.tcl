set moduleName code_generator_array_dyn_new_Pipeline_CodeGen
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
set C_modelName {code_generator_array_dyn_new_Pipeline_CodeGen}
set C_modelType { void 0 }
set C_modelArgList {
	{ firstCode_14_reload int 15 regular  }
	{ firstCode_13_reload int 15 regular  }
	{ firstCode_12_reload int 15 regular  }
	{ firstCode_11_reload int 15 regular  }
	{ firstCode_10_reload int 15 regular  }
	{ firstCode_9_reload int 15 regular  }
	{ firstCode_8_reload int 15 regular  }
	{ firstCode_7_reload int 15 regular  }
	{ firstCode_6_reload int 15 regular  }
	{ firstCode_5_reload int 15 regular  }
	{ firstCode_4_reload int 15 regular  }
	{ firstCode_3_reload int 15 regular  }
	{ firstCode_2_reload int 15 regular  }
	{ firstCode_1_reload int 15 regular  }
	{ firstCode_reload int 15 regular  }
	{ codes_val int 9 regular  }
	{ bl1Codes int 9 regular {array 2 { 0 } 0 1 }  }
	{ bl2Codes int 9 regular {array 4 { 0 } 0 1 }  }
	{ bl3Codes int 9 regular {array 8 { 0 } 0 1 }  }
	{ bl4Codes int 9 regular {array 16 { 0 } 0 1 }  }
	{ bl5Codes int 9 regular {array 32 { 0 } 0 1 }  }
	{ bl6Codes int 9 regular {array 64 { 0 } 0 1 }  }
	{ bl7Codes int 9 regular {array 128 { 0 } 0 1 }  }
	{ bl8Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl9Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl10Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl11Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl12Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl13Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl14Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ bl15Codes int 9 regular {array 256 { 0 } 0 1 }  }
	{ idx int 9 regular  }
	{ lens int 5 regular {array 318 { 1 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "firstCode_14_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_13_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_12_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_11_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_10_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_9_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_8_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_7_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_6_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_5_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_4_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_3_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_2_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_1_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "firstCode_reload", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "codes_val", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "bl1Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl2Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl3Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl4Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl5Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl6Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl7Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl8Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl9Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl10Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl11Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl12Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl13Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl14Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl15Codes", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "lens", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 86
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ firstCode_14_reload sc_in sc_lv 15 signal 0 } 
	{ firstCode_13_reload sc_in sc_lv 15 signal 1 } 
	{ firstCode_12_reload sc_in sc_lv 15 signal 2 } 
	{ firstCode_11_reload sc_in sc_lv 15 signal 3 } 
	{ firstCode_10_reload sc_in sc_lv 15 signal 4 } 
	{ firstCode_9_reload sc_in sc_lv 15 signal 5 } 
	{ firstCode_8_reload sc_in sc_lv 15 signal 6 } 
	{ firstCode_7_reload sc_in sc_lv 15 signal 7 } 
	{ firstCode_6_reload sc_in sc_lv 15 signal 8 } 
	{ firstCode_5_reload sc_in sc_lv 15 signal 9 } 
	{ firstCode_4_reload sc_in sc_lv 15 signal 10 } 
	{ firstCode_3_reload sc_in sc_lv 15 signal 11 } 
	{ firstCode_2_reload sc_in sc_lv 15 signal 12 } 
	{ firstCode_1_reload sc_in sc_lv 15 signal 13 } 
	{ firstCode_reload sc_in sc_lv 15 signal 14 } 
	{ codes_val sc_in sc_lv 9 signal 15 } 
	{ bl1Codes_address0 sc_out sc_lv 1 signal 16 } 
	{ bl1Codes_ce0 sc_out sc_logic 1 signal 16 } 
	{ bl1Codes_we0 sc_out sc_logic 1 signal 16 } 
	{ bl1Codes_d0 sc_out sc_lv 9 signal 16 } 
	{ bl2Codes_address0 sc_out sc_lv 2 signal 17 } 
	{ bl2Codes_ce0 sc_out sc_logic 1 signal 17 } 
	{ bl2Codes_we0 sc_out sc_logic 1 signal 17 } 
	{ bl2Codes_d0 sc_out sc_lv 9 signal 17 } 
	{ bl3Codes_address0 sc_out sc_lv 3 signal 18 } 
	{ bl3Codes_ce0 sc_out sc_logic 1 signal 18 } 
	{ bl3Codes_we0 sc_out sc_logic 1 signal 18 } 
	{ bl3Codes_d0 sc_out sc_lv 9 signal 18 } 
	{ bl4Codes_address0 sc_out sc_lv 4 signal 19 } 
	{ bl4Codes_ce0 sc_out sc_logic 1 signal 19 } 
	{ bl4Codes_we0 sc_out sc_logic 1 signal 19 } 
	{ bl4Codes_d0 sc_out sc_lv 9 signal 19 } 
	{ bl5Codes_address0 sc_out sc_lv 5 signal 20 } 
	{ bl5Codes_ce0 sc_out sc_logic 1 signal 20 } 
	{ bl5Codes_we0 sc_out sc_logic 1 signal 20 } 
	{ bl5Codes_d0 sc_out sc_lv 9 signal 20 } 
	{ bl6Codes_address0 sc_out sc_lv 6 signal 21 } 
	{ bl6Codes_ce0 sc_out sc_logic 1 signal 21 } 
	{ bl6Codes_we0 sc_out sc_logic 1 signal 21 } 
	{ bl6Codes_d0 sc_out sc_lv 9 signal 21 } 
	{ bl7Codes_address0 sc_out sc_lv 7 signal 22 } 
	{ bl7Codes_ce0 sc_out sc_logic 1 signal 22 } 
	{ bl7Codes_we0 sc_out sc_logic 1 signal 22 } 
	{ bl7Codes_d0 sc_out sc_lv 9 signal 22 } 
	{ bl8Codes_address0 sc_out sc_lv 8 signal 23 } 
	{ bl8Codes_ce0 sc_out sc_logic 1 signal 23 } 
	{ bl8Codes_we0 sc_out sc_logic 1 signal 23 } 
	{ bl8Codes_d0 sc_out sc_lv 9 signal 23 } 
	{ bl9Codes_address0 sc_out sc_lv 8 signal 24 } 
	{ bl9Codes_ce0 sc_out sc_logic 1 signal 24 } 
	{ bl9Codes_we0 sc_out sc_logic 1 signal 24 } 
	{ bl9Codes_d0 sc_out sc_lv 9 signal 24 } 
	{ bl10Codes_address0 sc_out sc_lv 8 signal 25 } 
	{ bl10Codes_ce0 sc_out sc_logic 1 signal 25 } 
	{ bl10Codes_we0 sc_out sc_logic 1 signal 25 } 
	{ bl10Codes_d0 sc_out sc_lv 9 signal 25 } 
	{ bl11Codes_address0 sc_out sc_lv 8 signal 26 } 
	{ bl11Codes_ce0 sc_out sc_logic 1 signal 26 } 
	{ bl11Codes_we0 sc_out sc_logic 1 signal 26 } 
	{ bl11Codes_d0 sc_out sc_lv 9 signal 26 } 
	{ bl12Codes_address0 sc_out sc_lv 8 signal 27 } 
	{ bl12Codes_ce0 sc_out sc_logic 1 signal 27 } 
	{ bl12Codes_we0 sc_out sc_logic 1 signal 27 } 
	{ bl12Codes_d0 sc_out sc_lv 9 signal 27 } 
	{ bl13Codes_address0 sc_out sc_lv 8 signal 28 } 
	{ bl13Codes_ce0 sc_out sc_logic 1 signal 28 } 
	{ bl13Codes_we0 sc_out sc_logic 1 signal 28 } 
	{ bl13Codes_d0 sc_out sc_lv 9 signal 28 } 
	{ bl14Codes_address0 sc_out sc_lv 8 signal 29 } 
	{ bl14Codes_ce0 sc_out sc_logic 1 signal 29 } 
	{ bl14Codes_we0 sc_out sc_logic 1 signal 29 } 
	{ bl14Codes_d0 sc_out sc_lv 9 signal 29 } 
	{ bl15Codes_address0 sc_out sc_lv 8 signal 30 } 
	{ bl15Codes_ce0 sc_out sc_logic 1 signal 30 } 
	{ bl15Codes_we0 sc_out sc_logic 1 signal 30 } 
	{ bl15Codes_d0 sc_out sc_lv 9 signal 30 } 
	{ idx sc_in sc_lv 9 signal 31 } 
	{ lens_address0 sc_out sc_lv 9 signal 32 } 
	{ lens_ce0 sc_out sc_logic 1 signal 32 } 
	{ lens_q0 sc_in sc_lv 5 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "firstCode_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_14_reload", "role": "default" }} , 
 	{ "name": "firstCode_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_13_reload", "role": "default" }} , 
 	{ "name": "firstCode_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_12_reload", "role": "default" }} , 
 	{ "name": "firstCode_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_11_reload", "role": "default" }} , 
 	{ "name": "firstCode_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_10_reload", "role": "default" }} , 
 	{ "name": "firstCode_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_9_reload", "role": "default" }} , 
 	{ "name": "firstCode_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_8_reload", "role": "default" }} , 
 	{ "name": "firstCode_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_7_reload", "role": "default" }} , 
 	{ "name": "firstCode_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_6_reload", "role": "default" }} , 
 	{ "name": "firstCode_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_5_reload", "role": "default" }} , 
 	{ "name": "firstCode_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_4_reload", "role": "default" }} , 
 	{ "name": "firstCode_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_3_reload", "role": "default" }} , 
 	{ "name": "firstCode_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_2_reload", "role": "default" }} , 
 	{ "name": "firstCode_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_1_reload", "role": "default" }} , 
 	{ "name": "firstCode_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "firstCode_reload", "role": "default" }} , 
 	{ "name": "codes_val", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "codes_val", "role": "default" }} , 
 	{ "name": "bl1Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes", "role": "address0" }} , 
 	{ "name": "bl1Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes", "role": "ce0" }} , 
 	{ "name": "bl1Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl1Codes", "role": "we0" }} , 
 	{ "name": "bl1Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl1Codes", "role": "d0" }} , 
 	{ "name": "bl2Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bl2Codes", "role": "address0" }} , 
 	{ "name": "bl2Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl2Codes", "role": "ce0" }} , 
 	{ "name": "bl2Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl2Codes", "role": "we0" }} , 
 	{ "name": "bl2Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl2Codes", "role": "d0" }} , 
 	{ "name": "bl3Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bl3Codes", "role": "address0" }} , 
 	{ "name": "bl3Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl3Codes", "role": "ce0" }} , 
 	{ "name": "bl3Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl3Codes", "role": "we0" }} , 
 	{ "name": "bl3Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl3Codes", "role": "d0" }} , 
 	{ "name": "bl4Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bl4Codes", "role": "address0" }} , 
 	{ "name": "bl4Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl4Codes", "role": "ce0" }} , 
 	{ "name": "bl4Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl4Codes", "role": "we0" }} , 
 	{ "name": "bl4Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl4Codes", "role": "d0" }} , 
 	{ "name": "bl5Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bl5Codes", "role": "address0" }} , 
 	{ "name": "bl5Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl5Codes", "role": "ce0" }} , 
 	{ "name": "bl5Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl5Codes", "role": "we0" }} , 
 	{ "name": "bl5Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl5Codes", "role": "d0" }} , 
 	{ "name": "bl6Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bl6Codes", "role": "address0" }} , 
 	{ "name": "bl6Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl6Codes", "role": "ce0" }} , 
 	{ "name": "bl6Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl6Codes", "role": "we0" }} , 
 	{ "name": "bl6Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl6Codes", "role": "d0" }} , 
 	{ "name": "bl7Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bl7Codes", "role": "address0" }} , 
 	{ "name": "bl7Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl7Codes", "role": "ce0" }} , 
 	{ "name": "bl7Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl7Codes", "role": "we0" }} , 
 	{ "name": "bl7Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl7Codes", "role": "d0" }} , 
 	{ "name": "bl8Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl8Codes", "role": "address0" }} , 
 	{ "name": "bl8Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl8Codes", "role": "ce0" }} , 
 	{ "name": "bl8Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl8Codes", "role": "we0" }} , 
 	{ "name": "bl8Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl8Codes", "role": "d0" }} , 
 	{ "name": "bl9Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl9Codes", "role": "address0" }} , 
 	{ "name": "bl9Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl9Codes", "role": "ce0" }} , 
 	{ "name": "bl9Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl9Codes", "role": "we0" }} , 
 	{ "name": "bl9Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl9Codes", "role": "d0" }} , 
 	{ "name": "bl10Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl10Codes", "role": "address0" }} , 
 	{ "name": "bl10Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl10Codes", "role": "ce0" }} , 
 	{ "name": "bl10Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl10Codes", "role": "we0" }} , 
 	{ "name": "bl10Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl10Codes", "role": "d0" }} , 
 	{ "name": "bl11Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl11Codes", "role": "address0" }} , 
 	{ "name": "bl11Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl11Codes", "role": "ce0" }} , 
 	{ "name": "bl11Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl11Codes", "role": "we0" }} , 
 	{ "name": "bl11Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl11Codes", "role": "d0" }} , 
 	{ "name": "bl12Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl12Codes", "role": "address0" }} , 
 	{ "name": "bl12Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl12Codes", "role": "ce0" }} , 
 	{ "name": "bl12Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl12Codes", "role": "we0" }} , 
 	{ "name": "bl12Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl12Codes", "role": "d0" }} , 
 	{ "name": "bl13Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl13Codes", "role": "address0" }} , 
 	{ "name": "bl13Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl13Codes", "role": "ce0" }} , 
 	{ "name": "bl13Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl13Codes", "role": "we0" }} , 
 	{ "name": "bl13Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl13Codes", "role": "d0" }} , 
 	{ "name": "bl14Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl14Codes", "role": "address0" }} , 
 	{ "name": "bl14Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl14Codes", "role": "ce0" }} , 
 	{ "name": "bl14Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl14Codes", "role": "we0" }} , 
 	{ "name": "bl14Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl14Codes", "role": "d0" }} , 
 	{ "name": "bl15Codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl15Codes", "role": "address0" }} , 
 	{ "name": "bl15Codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl15Codes", "role": "ce0" }} , 
 	{ "name": "bl15Codes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl15Codes", "role": "we0" }} , 
 	{ "name": "bl15Codes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "bl15Codes", "role": "d0" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "idx", "role": "default" }} , 
 	{ "name": "lens_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "lens", "role": "address0" }} , 
 	{ "name": "lens_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lens", "role": "ce0" }} , 
 	{ "name": "lens_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lens", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_31_4_15_1_1_U206", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		lens {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "513"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "513"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	firstCode_14_reload { ap_none {  { firstCode_14_reload in_data 0 15 } } }
	firstCode_13_reload { ap_none {  { firstCode_13_reload in_data 0 15 } } }
	firstCode_12_reload { ap_none {  { firstCode_12_reload in_data 0 15 } } }
	firstCode_11_reload { ap_none {  { firstCode_11_reload in_data 0 15 } } }
	firstCode_10_reload { ap_none {  { firstCode_10_reload in_data 0 15 } } }
	firstCode_9_reload { ap_none {  { firstCode_9_reload in_data 0 15 } } }
	firstCode_8_reload { ap_none {  { firstCode_8_reload in_data 0 15 } } }
	firstCode_7_reload { ap_none {  { firstCode_7_reload in_data 0 15 } } }
	firstCode_6_reload { ap_none {  { firstCode_6_reload in_data 0 15 } } }
	firstCode_5_reload { ap_none {  { firstCode_5_reload in_data 0 15 } } }
	firstCode_4_reload { ap_none {  { firstCode_4_reload in_data 0 15 } } }
	firstCode_3_reload { ap_none {  { firstCode_3_reload in_data 0 15 } } }
	firstCode_2_reload { ap_none {  { firstCode_2_reload in_data 0 15 } } }
	firstCode_1_reload { ap_none {  { firstCode_1_reload in_data 0 15 } } }
	firstCode_reload { ap_none {  { firstCode_reload in_data 0 15 } } }
	codes_val { ap_none {  { codes_val in_data 0 9 } } }
	bl1Codes { ap_memory {  { bl1Codes_address0 mem_address 1 1 }  { bl1Codes_ce0 mem_ce 1 1 }  { bl1Codes_we0 mem_we 1 1 }  { bl1Codes_d0 mem_din 1 9 } } }
	bl2Codes { ap_memory {  { bl2Codes_address0 mem_address 1 2 }  { bl2Codes_ce0 mem_ce 1 1 }  { bl2Codes_we0 mem_we 1 1 }  { bl2Codes_d0 mem_din 1 9 } } }
	bl3Codes { ap_memory {  { bl3Codes_address0 mem_address 1 3 }  { bl3Codes_ce0 mem_ce 1 1 }  { bl3Codes_we0 mem_we 1 1 }  { bl3Codes_d0 mem_din 1 9 } } }
	bl4Codes { ap_memory {  { bl4Codes_address0 mem_address 1 4 }  { bl4Codes_ce0 mem_ce 1 1 }  { bl4Codes_we0 mem_we 1 1 }  { bl4Codes_d0 mem_din 1 9 } } }
	bl5Codes { ap_memory {  { bl5Codes_address0 mem_address 1 5 }  { bl5Codes_ce0 mem_ce 1 1 }  { bl5Codes_we0 mem_we 1 1 }  { bl5Codes_d0 mem_din 1 9 } } }
	bl6Codes { ap_memory {  { bl6Codes_address0 mem_address 1 6 }  { bl6Codes_ce0 mem_ce 1 1 }  { bl6Codes_we0 mem_we 1 1 }  { bl6Codes_d0 mem_din 1 9 } } }
	bl7Codes { ap_memory {  { bl7Codes_address0 mem_address 1 7 }  { bl7Codes_ce0 mem_ce 1 1 }  { bl7Codes_we0 mem_we 1 1 }  { bl7Codes_d0 mem_din 1 9 } } }
	bl8Codes { ap_memory {  { bl8Codes_address0 mem_address 1 8 }  { bl8Codes_ce0 mem_ce 1 1 }  { bl8Codes_we0 mem_we 1 1 }  { bl8Codes_d0 mem_din 1 9 } } }
	bl9Codes { ap_memory {  { bl9Codes_address0 mem_address 1 8 }  { bl9Codes_ce0 mem_ce 1 1 }  { bl9Codes_we0 mem_we 1 1 }  { bl9Codes_d0 mem_din 1 9 } } }
	bl10Codes { ap_memory {  { bl10Codes_address0 mem_address 1 8 }  { bl10Codes_ce0 mem_ce 1 1 }  { bl10Codes_we0 mem_we 1 1 }  { bl10Codes_d0 mem_din 1 9 } } }
	bl11Codes { ap_memory {  { bl11Codes_address0 mem_address 1 8 }  { bl11Codes_ce0 mem_ce 1 1 }  { bl11Codes_we0 mem_we 1 1 }  { bl11Codes_d0 mem_din 1 9 } } }
	bl12Codes { ap_memory {  { bl12Codes_address0 mem_address 1 8 }  { bl12Codes_ce0 mem_ce 1 1 }  { bl12Codes_we0 mem_we 1 1 }  { bl12Codes_d0 mem_din 1 9 } } }
	bl13Codes { ap_memory {  { bl13Codes_address0 mem_address 1 8 }  { bl13Codes_ce0 mem_ce 1 1 }  { bl13Codes_we0 mem_we 1 1 }  { bl13Codes_d0 mem_din 1 9 } } }
	bl14Codes { ap_memory {  { bl14Codes_address0 mem_address 1 8 }  { bl14Codes_ce0 mem_ce 1 1 }  { bl14Codes_we0 mem_we 1 1 }  { bl14Codes_d0 mem_din 1 9 } } }
	bl15Codes { ap_memory {  { bl15Codes_address0 mem_address 1 8 }  { bl15Codes_ce0 mem_ce 1 1 }  { bl15Codes_we0 mem_we 1 1 }  { bl15Codes_d0 mem_din 1 9 } } }
	idx { ap_none {  { idx in_data 0 9 } } }
	lens { ap_memory {  { lens_address0 mem_address 1 9 }  { lens_ce0 mem_ce 1 1 }  { lens_q0 in_data 0 5 } } }
}
