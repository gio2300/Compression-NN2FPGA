set ModuleHierarchy {[{
"Name" : "decompressor_kernel","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_huffmanDecoderLL_2_0_s_fu_147","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "huffmanDecoder_label0","ID" : "2","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_loadBitStreamLL_fu_580","ID" : "3","Type" : "sequential"},
		{"Name" : "grp_discardBitStreamLL_fu_600","ID" : "4","Type" : "pipeline"},
		{"Name" : "grp_huffmanDecoderLL_2_0_Pipeline_read_fname_fu_636","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "read_fname","ID" : "6","Type" : "pipeline"},]},
		{"Name" : "grp_huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData_fu_801","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "consumeLeftOverData","ID" : "8","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_1009_1","ID" : "9","Type" : "no",
			"SubInsts" : [
			{"Name" : "call_ret29_discardBitStreamLL_fu_610","ID" : "10","Type" : "pipeline"},
			{"Name" : "call_ret30_discardBitStreamLL_fu_618","ID" : "11","Type" : "pipeline"},
			{"Name" : "grp_discardBitStreamLL_fu_626","ID" : "12","Type" : "pipeline"},
			{"Name" : "grp_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3_fu_651","ID" : "13","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_1130_3","ID" : "14","Type" : "pipeline"},]},
			{"Name" : "grp_huffmanBytegenLL_fu_661","ID" : "15","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_huffmanBytegenLL_Pipeline_ByteGen_fu_468","ID" : "16","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "ByteGen","ID" : "17","Type" : "pipeline"},]},]},
			{"Name" : "grp_huffmanDecoderLL_2_0_Pipeline_dyn_len_bits_fu_711","ID" : "18","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "dyn_len_bits","ID" : "19","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "discardBitStreamLL","ID" : "20","Type" : "pipeline"},]},]},
			{"Name" : "grp_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2_fu_729","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_1081_2","ID" : "22","Type" : "pipeline"},]},
			{"Name" : "grp_code_generator_array_dyn_new_fu_737","ID" : "23","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_code_generator_array_dyn_new_Pipeline_cnt_lens_fu_184","ID" : "24","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "cnt_lens","ID" : "25","Type" : "pipeline"},]},
					{"Name" : "grp_code_generator_array_dyn_new_Pipeline_firstCode_fu_208","ID" : "26","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "firstCode","ID" : "27","Type" : "pipeline"},]},
					{"Name" : "grp_code_generator_array_dyn_new_Pipeline_CodeGen_fu_243","ID" : "28","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "CodeGen","ID" : "29","Type" : "pipeline"},]},]},
			{"Name" : "grp_byteGen_fu_762","ID" : "30","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_byteGen_Pipeline_bytegen_fu_274","ID" : "31","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "bytegen","ID" : "32","Type" : "pipeline"},]},]},
			{"Name" : "grp_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy_fu_784","ID" : "33","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "strd_blk_cpy","ID" : "34","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_decompressor_kernel_Pipeline_VITIS_LOOP_64_4_fu_160","ID" : "35","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_64_4","ID" : "36","Type" : "pipeline"},]},
	{"Name" : "grp_decompressor_kernel_Pipeline_VITIS_LOOP_87_6_fu_168","ID" : "37","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_87_6","ID" : "38","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_35_1_VITIS_LOOP_37_2","ID" : "39","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_decompressor_kernel_Pipeline_VITIS_LOOP_39_3_fu_142","ID" : "40","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_39_3","ID" : "41","Type" : "pipeline"},]},]},]
}]}