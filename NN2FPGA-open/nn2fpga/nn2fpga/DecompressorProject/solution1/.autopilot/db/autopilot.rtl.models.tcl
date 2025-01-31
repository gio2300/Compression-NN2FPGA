set SynModuleInfo {
  {SRCNAME decompressor_kernel_Pipeline_VITIS_LOOP_39_3 MODELNAME decompressor_kernel_Pipeline_VITIS_LOOP_39_3 RTLNAME decompressor_kernel_decompressor_kernel_Pipeline_VITIS_LOOP_39_3
    SUBMODULES {
      {MODELNAME decompressor_kernel_flow_control_loop_pipe_sequential_init RTLNAME decompressor_kernel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME decompressor_kernel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME loadBitStreamLL MODELNAME loadBitStreamLL RTLNAME decompressor_kernel_loadBitStreamLL}
  {SRCNAME discardBitStreamLL MODELNAME discardBitStreamLL RTLNAME decompressor_kernel_discardBitStreamLL}
  {SRCNAME {huffmanDecoderLL<2, 0>_Pipeline_read_fname} MODELNAME huffmanDecoderLL_2_0_Pipeline_read_fname RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_read_fname}
  {SRCNAME {huffmanDecoderLL<2, 0>_Pipeline_VITIS_LOOP_1130_3} MODELNAME huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3 RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1130_3}
  {SRCNAME huffmanBytegenLL_Pipeline_ByteGen MODELNAME huffmanBytegenLL_Pipeline_ByteGen RTLNAME decompressor_kernel_huffmanBytegenLL_Pipeline_ByteGen
    SUBMODULES {
      {MODELNAME decompressor_kernel_sparsemux_31_4_9_1_1 RTLNAME decompressor_kernel_sparsemux_31_4_9_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME decompressor_kernel_sparsemux_31_4_5_1_1 RTLNAME decompressor_kernel_sparsemux_31_4_5_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME decompressor_kernel_huffmanBytegenLL_Pipeline_ByteGen_lext_ROM_AUTO_1R RTLNAME decompressor_kernel_huffmanBytegenLL_Pipeline_ByteGen_lext_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanBytegenLL_Pipeline_ByteGen_dext_ROM_AUTO_1R RTLNAME decompressor_kernel_huffmanBytegenLL_Pipeline_ByteGen_dext_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME huffmanBytegenLL MODELNAME huffmanBytegenLL RTLNAME decompressor_kernel_huffmanBytegenLL}
  {SRCNAME {huffmanDecoderLL<2, 0>_Pipeline_dyn_len_bits} MODELNAME huffmanDecoderLL_2_0_Pipeline_dyn_len_bits RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_dyn_len_bits}
  {SRCNAME {huffmanDecoderLL<2, 0>_Pipeline_VITIS_LOOP_1081_2} MODELNAME huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2 RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_VITIS_LOOP_1081_2}
  {SRCNAME code_generator_array_dyn_new_Pipeline_cnt_lens MODELNAME code_generator_array_dyn_new_Pipeline_cnt_lens RTLNAME decompressor_kernel_code_generator_array_dyn_new_Pipeline_cnt_lens
    SUBMODULES {
      {MODELNAME decompressor_kernel_sparsemux_33_4_9_1_1 RTLNAME decompressor_kernel_sparsemux_33_4_9_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME code_generator_array_dyn_new_Pipeline_firstCode MODELNAME code_generator_array_dyn_new_Pipeline_firstCode RTLNAME decompressor_kernel_code_generator_array_dyn_new_Pipeline_firstCode}
  {SRCNAME code_generator_array_dyn_new_Pipeline_CodeGen MODELNAME code_generator_array_dyn_new_Pipeline_CodeGen RTLNAME decompressor_kernel_code_generator_array_dyn_new_Pipeline_CodeGen
    SUBMODULES {
      {MODELNAME decompressor_kernel_sparsemux_31_4_15_1_1 RTLNAME decompressor_kernel_sparsemux_31_4_15_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME code_generator_array_dyn_new MODELNAME code_generator_array_dyn_new RTLNAME decompressor_kernel_code_generator_array_dyn_new}
  {SRCNAME byteGen_Pipeline_bytegen MODELNAME byteGen_Pipeline_bytegen RTLNAME decompressor_kernel_byteGen_Pipeline_bytegen
    SUBMODULES {
      {MODELNAME decompressor_kernel_sparsemux_15_3_5_1_1 RTLNAME decompressor_kernel_sparsemux_15_3_5_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME byteGen MODELNAME byteGen RTLNAME decompressor_kernel_byteGen}
  {SRCNAME {huffmanDecoderLL<2, 0>_Pipeline_strd_blk_cpy} MODELNAME huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_strd_blk_cpy}
  {SRCNAME {huffmanDecoderLL<2, 0>_Pipeline_consumeLeftOverData} MODELNAME huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_Pipeline_consumeLeftOverData}
  {SRCNAME {huffmanDecoderLL<2, 0>} MODELNAME huffmanDecoderLL_2_0_s RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s
    SUBMODULES {
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_order_ROM_AUTO_1R RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_order_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_dynamic_lens_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_dynamic_lens_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_codeOffsets_RAM_AUTO_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_codeOffsets_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl1Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl1Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl2Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl2Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl3Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl3Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl4Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl4Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl5Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl5Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl6Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl6Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl7Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl7Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl8Code_RAM_1P_LUTRAM_1R1W RTLNAME decompressor_kernel_huffmanDecoderLL_2_0_s_bl8Code_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decompressor_kernel_Pipeline_VITIS_LOOP_64_4 MODELNAME decompressor_kernel_Pipeline_VITIS_LOOP_64_4 RTLNAME decompressor_kernel_decompressor_kernel_Pipeline_VITIS_LOOP_64_4}
  {SRCNAME decompressor_kernel_Pipeline_VITIS_LOOP_87_6 MODELNAME decompressor_kernel_Pipeline_VITIS_LOOP_87_6 RTLNAME decompressor_kernel_decompressor_kernel_Pipeline_VITIS_LOOP_87_6}
  {SRCNAME decompressor_kernel MODELNAME decompressor_kernel RTLNAME decompressor_kernel IS_TOP 1
    SUBMODULES {
      {MODELNAME decompressor_kernel_fifo_w16_d2_S RTLNAME decompressor_kernel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME huffman_input_stream_U}
      {MODELNAME decompressor_kernel_fifo_w1_d2_S RTLNAME decompressor_kernel_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME huffman_eos_stream_U}
      {MODELNAME decompressor_kernel_fifo_w16_d2_S RTLNAME decompressor_kernel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME lz77_output_stream_U}
    }
  }
}
