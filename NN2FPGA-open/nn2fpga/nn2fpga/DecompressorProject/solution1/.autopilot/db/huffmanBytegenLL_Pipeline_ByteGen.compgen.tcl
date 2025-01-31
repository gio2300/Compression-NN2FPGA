# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler decompressor_kernel_sparsemux_31_4_9_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler decompressor_kernel_sparsemux_31_4_5_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler decompressor_kernel_huffmanBytegenLL_Pipeline_ByteGen_lext_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler decompressor_kernel_huffmanBytegenLL_Pipeline_ByteGen_dext_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 66 \
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
    id 67 \
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
    id 68 \
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
    id 69 \
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
    id 70 \
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
    id 71 \
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
    id 72 \
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
    id 73 \
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
    id 74 \
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
    id 75 \
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
    id 76 \
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
    id 77 \
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
    id 78 \
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
    id 79 \
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
    id 80 \
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
    id 81 \
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
    id 82 \
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
    id 83 \
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
    id 84 \
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
    id 85 \
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
    id 86 \
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
    id 87 \
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
    id 88 \
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
    id 89 \
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
    id 90 \
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
    id 91 \
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
    id 92 \
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
    id 93 \
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
    id 94 \
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
    id 95 \
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
    id 33 \
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
    id 34 \
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
    id 35 \
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
    id 36 \
    name codeOffsets_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load \
    op interface \
    ports { codeOffsets_0_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name codeOffsets_0_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_1 \
    op interface \
    ports { codeOffsets_0_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name codeOffsets_0_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_2 \
    op interface \
    ports { codeOffsets_0_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name codeOffsets_0_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_3 \
    op interface \
    ports { codeOffsets_0_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name codeOffsets_0_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_4 \
    op interface \
    ports { codeOffsets_0_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name codeOffsets_0_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_5 \
    op interface \
    ports { codeOffsets_0_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name codeOffsets_0_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_6 \
    op interface \
    ports { codeOffsets_0_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name codeOffsets_0_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_7 \
    op interface \
    ports { codeOffsets_0_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name codeOffsets_0_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_8 \
    op interface \
    ports { codeOffsets_0_load_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name codeOffsets_0_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_9 \
    op interface \
    ports { codeOffsets_0_load_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name codeOffsets_0_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_10 \
    op interface \
    ports { codeOffsets_0_load_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name codeOffsets_0_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_11 \
    op interface \
    ports { codeOffsets_0_load_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name codeOffsets_0_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_12 \
    op interface \
    ports { codeOffsets_0_load_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name codeOffsets_0_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_13 \
    op interface \
    ports { codeOffsets_0_load_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name codeOffsets_0_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_0_load_14 \
    op interface \
    ports { codeOffsets_0_load_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name codeOffsets_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load \
    op interface \
    ports { codeOffsets_1_load { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name codeOffsets_1_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_1 \
    op interface \
    ports { codeOffsets_1_load_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name codeOffsets_1_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_2 \
    op interface \
    ports { codeOffsets_1_load_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name codeOffsets_1_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_3 \
    op interface \
    ports { codeOffsets_1_load_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name codeOffsets_1_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_4 \
    op interface \
    ports { codeOffsets_1_load_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name codeOffsets_1_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_5 \
    op interface \
    ports { codeOffsets_1_load_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name codeOffsets_1_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_6 \
    op interface \
    ports { codeOffsets_1_load_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name codeOffsets_1_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_7 \
    op interface \
    ports { codeOffsets_1_load_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name codeOffsets_1_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_8 \
    op interface \
    ports { codeOffsets_1_load_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name codeOffsets_1_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_9 \
    op interface \
    ports { codeOffsets_1_load_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name codeOffsets_1_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_10 \
    op interface \
    ports { codeOffsets_1_load_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name codeOffsets_1_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_11 \
    op interface \
    ports { codeOffsets_1_load_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name codeOffsets_1_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_12 \
    op interface \
    ports { codeOffsets_1_load_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name codeOffsets_1_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_13 \
    op interface \
    ports { codeOffsets_1_load_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name codeOffsets_1_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_codeOffsets_1_load_14 \
    op interface \
    ports { codeOffsets_1_load_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name ignoreValue_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ignoreValue_cast \
    op interface \
    ports { ignoreValue_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
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
    id 98 \
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
    id 99 \
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
    id 100 \
    name done_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_done_0_out \
    op interface \
    ports { done_0_out { O 1 vector } done_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name buffer_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_buffer_out \
    op interface \
    ports { buffer_out { O 32 vector } buffer_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name counter_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_counter_out \
    op interface \
    ports { counter_out { O 6 vector } counter_out_ap_vld { O 1 bit } } \
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


