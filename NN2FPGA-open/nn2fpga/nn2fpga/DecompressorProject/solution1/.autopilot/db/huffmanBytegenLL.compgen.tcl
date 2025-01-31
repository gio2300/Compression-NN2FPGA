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
    id 108 \
    name codeOffsets_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename codeOffsets_0 \
    op interface \
    ports { codeOffsets_0_address0 { O 4 vector } codeOffsets_0_ce0 { O 1 bit } codeOffsets_0_q0 { I 16 vector } codeOffsets_0_address1 { O 4 vector } codeOffsets_0_ce1 { O 1 bit } codeOffsets_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'codeOffsets_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name codeOffsets_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename codeOffsets_1 \
    op interface \
    ports { codeOffsets_1_address0 { O 4 vector } codeOffsets_1_ce0 { O 1 bit } codeOffsets_1_q0 { I 16 vector } codeOffsets_1_address1 { O 4 vector } codeOffsets_1_ce1 { O 1 bit } codeOffsets_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'codeOffsets_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name bl1Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl1Codes_0 \
    op interface \
    ports { bl1Codes_0_address0 { O 1 vector } bl1Codes_0_ce0 { O 1 bit } bl1Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl1Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name bl1Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl1Codes_1 \
    op interface \
    ports { bl1Codes_1_address0 { O 1 vector } bl1Codes_1_ce0 { O 1 bit } bl1Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl1Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name bl2Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl2Codes_0 \
    op interface \
    ports { bl2Codes_0_address0 { O 2 vector } bl2Codes_0_ce0 { O 1 bit } bl2Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl2Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name bl2Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl2Codes_1 \
    op interface \
    ports { bl2Codes_1_address0 { O 2 vector } bl2Codes_1_ce0 { O 1 bit } bl2Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl2Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name bl3Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl3Codes_0 \
    op interface \
    ports { bl3Codes_0_address0 { O 3 vector } bl3Codes_0_ce0 { O 1 bit } bl3Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl3Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name bl3Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl3Codes_1 \
    op interface \
    ports { bl3Codes_1_address0 { O 3 vector } bl3Codes_1_ce0 { O 1 bit } bl3Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl3Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name bl4Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl4Codes_0 \
    op interface \
    ports { bl4Codes_0_address0 { O 4 vector } bl4Codes_0_ce0 { O 1 bit } bl4Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl4Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name bl4Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl4Codes_1 \
    op interface \
    ports { bl4Codes_1_address0 { O 4 vector } bl4Codes_1_ce0 { O 1 bit } bl4Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl4Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name bl5Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl5Codes_0 \
    op interface \
    ports { bl5Codes_0_address0 { O 5 vector } bl5Codes_0_ce0 { O 1 bit } bl5Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl5Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name bl5Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl5Codes_1 \
    op interface \
    ports { bl5Codes_1_address0 { O 5 vector } bl5Codes_1_ce0 { O 1 bit } bl5Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl5Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name bl6Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl6Codes_0 \
    op interface \
    ports { bl6Codes_0_address0 { O 6 vector } bl6Codes_0_ce0 { O 1 bit } bl6Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl6Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name bl6Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl6Codes_1 \
    op interface \
    ports { bl6Codes_1_address0 { O 6 vector } bl6Codes_1_ce0 { O 1 bit } bl6Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl6Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name bl7Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl7Codes_0 \
    op interface \
    ports { bl7Codes_0_address0 { O 7 vector } bl7Codes_0_ce0 { O 1 bit } bl7Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl7Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name bl7Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl7Codes_1 \
    op interface \
    ports { bl7Codes_1_address0 { O 7 vector } bl7Codes_1_ce0 { O 1 bit } bl7Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl7Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name bl8Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl8Codes_0 \
    op interface \
    ports { bl8Codes_0_address0 { O 8 vector } bl8Codes_0_ce0 { O 1 bit } bl8Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl8Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name bl8Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl8Codes_1 \
    op interface \
    ports { bl8Codes_1_address0 { O 8 vector } bl8Codes_1_ce0 { O 1 bit } bl8Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl8Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name bl9Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl9Codes_0 \
    op interface \
    ports { bl9Codes_0_address0 { O 8 vector } bl9Codes_0_ce0 { O 1 bit } bl9Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl9Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name bl9Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl9Codes_1 \
    op interface \
    ports { bl9Codes_1_address0 { O 8 vector } bl9Codes_1_ce0 { O 1 bit } bl9Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl9Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name bl10Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl10Codes_0 \
    op interface \
    ports { bl10Codes_0_address0 { O 8 vector } bl10Codes_0_ce0 { O 1 bit } bl10Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl10Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name bl10Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl10Codes_1 \
    op interface \
    ports { bl10Codes_1_address0 { O 8 vector } bl10Codes_1_ce0 { O 1 bit } bl10Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl10Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name bl11Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl11Codes_0 \
    op interface \
    ports { bl11Codes_0_address0 { O 8 vector } bl11Codes_0_ce0 { O 1 bit } bl11Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl11Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name bl11Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl11Codes_1 \
    op interface \
    ports { bl11Codes_1_address0 { O 8 vector } bl11Codes_1_ce0 { O 1 bit } bl11Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl11Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name bl12Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl12Codes_0 \
    op interface \
    ports { bl12Codes_0_address0 { O 8 vector } bl12Codes_0_ce0 { O 1 bit } bl12Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl12Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name bl12Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl12Codes_1 \
    op interface \
    ports { bl12Codes_1_address0 { O 8 vector } bl12Codes_1_ce0 { O 1 bit } bl12Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl12Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name bl13Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl13Codes_0 \
    op interface \
    ports { bl13Codes_0_address0 { O 8 vector } bl13Codes_0_ce0 { O 1 bit } bl13Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl13Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name bl13Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl13Codes_1 \
    op interface \
    ports { bl13Codes_1_address0 { O 8 vector } bl13Codes_1_ce0 { O 1 bit } bl13Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl13Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name bl14Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl14Codes_0 \
    op interface \
    ports { bl14Codes_0_address0 { O 8 vector } bl14Codes_0_ce0 { O 1 bit } bl14Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl14Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name bl14Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl14Codes_1 \
    op interface \
    ports { bl14Codes_1_address0 { O 8 vector } bl14Codes_1_ce0 { O 1 bit } bl14Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl14Codes_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name bl15Codes_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl15Codes_0 \
    op interface \
    ports { bl15Codes_0_address0 { O 8 vector } bl15Codes_0_ce0 { O 1 bit } bl15Codes_0_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl15Codes_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name bl15Codes_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bl15Codes_1 \
    op interface \
    ports { bl15Codes_1_address0 { O 8 vector } bl15Codes_1_ce0 { O 1 bit } bl15Codes_1_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bl15Codes_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_bitbuffer_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_bitbuffer_read \
    op interface \
    ports { p_bitbuffer_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name bits_cntr_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bits_cntr_read \
    op interface \
    ports { bits_cntr_read { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name lz77_output_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_lz77_output_stream \
    op interface \
    ports { lz77_output_stream_din { O 16 vector } lz77_output_stream_full_n { I 1 bit } lz77_output_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
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
    id 107 \
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
    id 140 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name ignoreValue \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ignoreValue \
    op interface \
    ports { ignoreValue { I 3 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


