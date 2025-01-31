# This script segment is generated automatically by AutoPilot

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
    id 176 \
    name codeOffsets \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename codeOffsets \
    op interface \
    ports { codeOffsets_address0 { O 4 vector } codeOffsets_ce0 { O 1 bit } codeOffsets_we0 { O 1 bit } codeOffsets_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'codeOffsets'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name count_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_13_reload \
    op interface \
    ports { count_13_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name count_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_12_reload \
    op interface \
    ports { count_12_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name count_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_11_reload \
    op interface \
    ports { count_11_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name count_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_10_reload \
    op interface \
    ports { count_10_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name count_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_9_reload \
    op interface \
    ports { count_9_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name count_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_8_reload \
    op interface \
    ports { count_8_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name count_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_7_reload \
    op interface \
    ports { count_7_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name count_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_6_reload \
    op interface \
    ports { count_6_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name count_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_5_reload \
    op interface \
    ports { count_5_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name count_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_4_reload \
    op interface \
    ports { count_4_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name count_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_3_reload \
    op interface \
    ports { count_3_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name count_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_2_reload \
    op interface \
    ports { count_2_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name count_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_1_reload \
    op interface \
    ports { count_1_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name count_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_reload \
    op interface \
    ports { count_reload { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name firstCode_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_14_out \
    op interface \
    ports { firstCode_14_out { O 15 vector } firstCode_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name firstCode_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_13_out \
    op interface \
    ports { firstCode_13_out { O 15 vector } firstCode_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name firstCode_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_12_out \
    op interface \
    ports { firstCode_12_out { O 15 vector } firstCode_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name firstCode_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_11_out \
    op interface \
    ports { firstCode_11_out { O 15 vector } firstCode_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name firstCode_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_10_out \
    op interface \
    ports { firstCode_10_out { O 15 vector } firstCode_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name firstCode_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_9_out \
    op interface \
    ports { firstCode_9_out { O 15 vector } firstCode_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name firstCode_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_8_out \
    op interface \
    ports { firstCode_8_out { O 15 vector } firstCode_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name firstCode_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_7_out \
    op interface \
    ports { firstCode_7_out { O 15 vector } firstCode_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name firstCode_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_6_out \
    op interface \
    ports { firstCode_6_out { O 15 vector } firstCode_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name firstCode_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_5_out \
    op interface \
    ports { firstCode_5_out { O 15 vector } firstCode_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name firstCode_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_4_out \
    op interface \
    ports { firstCode_4_out { O 15 vector } firstCode_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name firstCode_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_3_out \
    op interface \
    ports { firstCode_3_out { O 15 vector } firstCode_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name firstCode_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_2_out \
    op interface \
    ports { firstCode_2_out { O 15 vector } firstCode_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name firstCode_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_1_out \
    op interface \
    ports { firstCode_1_out { O 15 vector } firstCode_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name firstCode_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_firstCode_out \
    op interface \
    ports { firstCode_out { O 15 vector } firstCode_out_ap_vld { O 1 bit } } \
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


