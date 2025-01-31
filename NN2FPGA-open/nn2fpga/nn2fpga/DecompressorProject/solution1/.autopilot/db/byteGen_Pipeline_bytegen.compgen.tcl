# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler decompressor_kernel_sparsemux_15_3_5_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name bl1Codes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl1Codes \
    op interface \
    ports { bl1Codes_address0 { O 1 vector } bl1Codes_ce0 { O 1 bit } bl1Codes_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl1Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name bl2Codes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl2Codes \
    op interface \
    ports { bl2Codes_address0 { O 2 vector } bl2Codes_ce0 { O 1 bit } bl2Codes_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl2Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name bl3Codes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl3Codes \
    op interface \
    ports { bl3Codes_address0 { O 3 vector } bl3Codes_ce0 { O 1 bit } bl3Codes_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl3Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name bl4Codes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl4Codes \
    op interface \
    ports { bl4Codes_address0 { O 4 vector } bl4Codes_ce0 { O 1 bit } bl4Codes_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl4Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name bl5Codes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl5Codes \
    op interface \
    ports { bl5Codes_address0 { O 5 vector } bl5Codes_ce0 { O 1 bit } bl5Codes_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl5Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name bl6Codes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl6Codes \
    op interface \
    ports { bl6Codes_address0 { O 6 vector } bl6Codes_ce0 { O 1 bit } bl6Codes_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl6Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name bl7Codes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl7Codes \
    op interface \
    ports { bl7Codes_address0 { O 7 vector } bl7Codes_ce0 { O 1 bit } bl7Codes_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl7Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name lens \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename lens \
    op interface \
    ports { lens_address0 { O 9 vector } lens_ce0 { O 1 bit } lens_we0 { O 1 bit } lens_d0 { O 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lens'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name write_flag_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_write_flag_0 \
    op interface \
    ports { write_flag_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name empty_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_39 \
    op interface \
    ports { empty_39 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name p_bitbuffer_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_bitbuffer_0 \
    op interface \
    ports { p_bitbuffer_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name add_i307_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_i307_cast \
    op interface \
    ports { add_i307_cast { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name codeOffsets_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_load \
    op interface \
    ports { codeOffsets_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name codeOffsets_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_load_1 \
    op interface \
    ports { codeOffsets_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name codeOffsets_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_load_2 \
    op interface \
    ports { codeOffsets_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name codeOffsets_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_load_3 \
    op interface \
    ports { codeOffsets_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name codeOffsets_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_load_4 \
    op interface \
    ports { codeOffsets_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name codeOffsets_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_load_5 \
    op interface \
    ports { codeOffsets_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name codeOffsets_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_load_6 \
    op interface \
    ports { codeOffsets_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name huffman_input_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_huffman_input_stream \
    op interface \
    ports { huffman_input_stream_dout { I 16 vector } huffman_input_stream_empty_n { I 1 bit } huffman_input_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name huffman_eos_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_huffman_eos_stream \
    op interface \
    ports { huffman_eos_stream_dout { I 1 vector } huffman_eos_stream_empty_n { I 1 bit } huffman_eos_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name write_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_write_flag_1_out \
    op interface \
    ports { write_flag_1_out { O 1 vector } write_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name bits_cntr_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bits_cntr_1_out \
    op interface \
    ports { bits_cntr_1_out { O 6 vector } bits_cntr_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name write_flag3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_write_flag3_1_out \
    op interface \
    ports { write_flag3_1_out { O 1 vector } write_flag3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name p_bitbuffer_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_bitbuffer_1_out \
    op interface \
    ports { p_bitbuffer_1_out { O 32 vector } p_bitbuffer_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name done_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_done_1_out \
    op interface \
    ports { done_1_out { O 1 vector } done_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName decompressor_kernel_flow_control_loop_pipe_sequential_init_U
set CompName decompressor_kernel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix decompressor_kernel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


