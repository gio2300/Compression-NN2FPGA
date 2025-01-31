# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler decompressor_kernel_sparsemux_31_4_15_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
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
    id 224 \
    name bl1Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl1Codes \
    op interface \
    ports { bl1Codes_address0 { O 1 vector } bl1Codes_ce0 { O 1 bit } bl1Codes_we0 { O 1 bit } bl1Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl1Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name bl2Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl2Codes \
    op interface \
    ports { bl2Codes_address0 { O 2 vector } bl2Codes_ce0 { O 1 bit } bl2Codes_we0 { O 1 bit } bl2Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl2Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name bl3Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl3Codes \
    op interface \
    ports { bl3Codes_address0 { O 3 vector } bl3Codes_ce0 { O 1 bit } bl3Codes_we0 { O 1 bit } bl3Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl3Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name bl4Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl4Codes \
    op interface \
    ports { bl4Codes_address0 { O 4 vector } bl4Codes_ce0 { O 1 bit } bl4Codes_we0 { O 1 bit } bl4Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl4Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name bl5Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl5Codes \
    op interface \
    ports { bl5Codes_address0 { O 5 vector } bl5Codes_ce0 { O 1 bit } bl5Codes_we0 { O 1 bit } bl5Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl5Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name bl6Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl6Codes \
    op interface \
    ports { bl6Codes_address0 { O 6 vector } bl6Codes_ce0 { O 1 bit } bl6Codes_we0 { O 1 bit } bl6Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl6Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name bl7Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl7Codes \
    op interface \
    ports { bl7Codes_address0 { O 7 vector } bl7Codes_ce0 { O 1 bit } bl7Codes_we0 { O 1 bit } bl7Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl7Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name bl8Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl8Codes \
    op interface \
    ports { bl8Codes_address0 { O 8 vector } bl8Codes_ce0 { O 1 bit } bl8Codes_we0 { O 1 bit } bl8Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl8Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name bl9Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl9Codes \
    op interface \
    ports { bl9Codes_address0 { O 8 vector } bl9Codes_ce0 { O 1 bit } bl9Codes_we0 { O 1 bit } bl9Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl9Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name bl10Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl10Codes \
    op interface \
    ports { bl10Codes_address0 { O 8 vector } bl10Codes_ce0 { O 1 bit } bl10Codes_we0 { O 1 bit } bl10Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl10Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 234 \
    name bl11Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl11Codes \
    op interface \
    ports { bl11Codes_address0 { O 8 vector } bl11Codes_ce0 { O 1 bit } bl11Codes_we0 { O 1 bit } bl11Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl11Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name bl12Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl12Codes \
    op interface \
    ports { bl12Codes_address0 { O 8 vector } bl12Codes_ce0 { O 1 bit } bl12Codes_we0 { O 1 bit } bl12Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl12Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 236 \
    name bl13Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl13Codes \
    op interface \
    ports { bl13Codes_address0 { O 8 vector } bl13Codes_ce0 { O 1 bit } bl13Codes_we0 { O 1 bit } bl13Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl13Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name bl14Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl14Codes \
    op interface \
    ports { bl14Codes_address0 { O 8 vector } bl14Codes_ce0 { O 1 bit } bl14Codes_we0 { O 1 bit } bl14Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl14Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name bl15Codes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename bl15Codes \
    op interface \
    ports { bl15Codes_address0 { O 8 vector } bl15Codes_ce0 { O 1 bit } bl15Codes_we0 { O 1 bit } bl15Codes_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl15Codes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name lens \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lens \
    op interface \
    ports { lens_address0 { O 9 vector } lens_ce0 { O 1 bit } lens_q0 { I 5 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lens'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name firstCode_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_14_reload \
    op interface \
    ports { firstCode_14_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name firstCode_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_13_reload \
    op interface \
    ports { firstCode_13_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name firstCode_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_12_reload \
    op interface \
    ports { firstCode_12_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name firstCode_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_11_reload \
    op interface \
    ports { firstCode_11_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name firstCode_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_10_reload \
    op interface \
    ports { firstCode_10_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name firstCode_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_9_reload \
    op interface \
    ports { firstCode_9_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name firstCode_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_8_reload \
    op interface \
    ports { firstCode_8_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name firstCode_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_7_reload \
    op interface \
    ports { firstCode_7_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name firstCode_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_6_reload \
    op interface \
    ports { firstCode_6_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name firstCode_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_5_reload \
    op interface \
    ports { firstCode_5_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name firstCode_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_4_reload \
    op interface \
    ports { firstCode_4_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name firstCode_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_3_reload \
    op interface \
    ports { firstCode_3_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name firstCode_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_2_reload \
    op interface \
    ports { firstCode_2_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name firstCode_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_1_reload \
    op interface \
    ports { firstCode_1_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name firstCode_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_reload \
    op interface \
    ports { firstCode_reload { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name codes_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codes_val \
    op interface \
    ports { codes_val { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_idx \
    op interface \
    ports { idx { I 9 vector } } \
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


