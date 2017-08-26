# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 9 \
    name outData2merge_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {outData} \
    metadata {  } \
    op interface \
    ports { outData_TDATA { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outData2merge_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 10 \
    name outData2merge_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {outData} \
    metadata {  } \
    op interface \
    ports { outData_TSTRB { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outData2merge_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 11 \
    name outData2merge_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {outData} \
    metadata {  } \
    op interface \
    ports { outData_TUSER { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outData2merge_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 12 \
    name outData2merge_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {outData} \
    metadata {  } \
    op interface \
    ports { outData_TREADY { I 1 bit } outData_TVALID { O 1 bit } outData_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outData2merge_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name parser2dpi_V_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parser2dpi_V_data_V \
    op interface \
    ports { parser2dpi_V_data_V_dout { I 64 vector } parser2dpi_V_data_V_empty_n { I 1 bit } parser2dpi_V_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name parser2dpi_V_strb_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parser2dpi_V_strb_V \
    op interface \
    ports { parser2dpi_V_strb_V_dout { I 8 vector } parser2dpi_V_strb_V_empty_n { I 1 bit } parser2dpi_V_strb_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name parser2dpi_V_user_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parser2dpi_V_user_V \
    op interface \
    ports { parser2dpi_V_user_V_dout { I 128 vector } parser2dpi_V_user_V_empty_n { I 1 bit } parser2dpi_V_user_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name parser2dpi_V_last_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_parser2dpi_V_last_V \
    op interface \
    ports { parser2dpi_V_last_V_dout { I 1 vector } parser2dpi_V_last_V_empty_n { I 1 bit } parser2dpi_V_last_V_read { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


