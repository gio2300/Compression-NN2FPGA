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
    id 241 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 244 \
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
    id 245 \
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
    id 246 \
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
    id 247 \
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
    id 248 \
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
    id 249 \
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
    id 250 \
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
    id 251 \
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
    id 252 \
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
    id 253 \
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
    id 254 \
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
    id 255 \
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
    id 256 \
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
    id 257 \
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
    id 258 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
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
    id 259 \
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


