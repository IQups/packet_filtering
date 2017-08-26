vlib work
vlib msim

vlib msim/blk_mem_gen_v8_3_0
vlib msim/xil_defaultlib
vlib msim/axi_bram_ctrl_v4_0_5
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_8
vlib msim/generic_baseblocks_v2_1_0
vlib msim/fifo_generator_v13_0_0
vlib msim/axi_data_fifo_v2_1_5
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_6
vlib msim/axi_protocol_converter_v2_1_6

vmap blk_mem_gen_v8_3_0 msim/blk_mem_gen_v8_3_0
vmap xil_defaultlib msim/xil_defaultlib
vmap axi_bram_ctrl_v4_0_5 msim/axi_bram_ctrl_v4_0_5
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_0_0 msim/fifo_generator_v13_0_0
vmap axi_data_fifo_v2_1_5 msim/axi_data_fifo_v2_1_5
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_6 msim/axi_register_slice_v2_1_6
vmap axi_protocol_converter_v2_1_6 msim/axi_protocol_converter_v2_1_6

vcom -work blk_mem_gen_v8_3_0 -64 \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.vhd" \
"./../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.vhd" \

vcom -work axi_bram_ctrl_v4_0_5 -64 \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/srl_fifo.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_funcs.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/coregen_comp_defs.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite_if.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler_64.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit_64.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/xor18.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/parity.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/ecc_gen.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/lite_ecc_reg.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/sng_port_arb.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/ua_narrow.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/wrap_brst.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/rd_chnl.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/wr_chnl.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/full_axi.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_top.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \
"./../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \

vcom -work lib_cdc_v1_0_2 -64 \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_8 -64 \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"./../../../bd/design_1/ip/design_1_rst_processing_system7_0_50M_0/sim/design_1_rst_processing_system7_0_50M_0.vhd" \

vlog -work xil_defaultlib -64 +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \
"./../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \

vlog -work generic_baseblocks_v2_1_0 -64 +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vcom -work fifo_generator_v13_0_0 -64 \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vlog -work axi_data_fifo_v2_1_5 -64 +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_infrastructure_v1_1_0 -64 +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_6 -64 +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work axi_protocol_converter_v2_1_6 -64 +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"./../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -64 +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/axi_infrastructure_v1_1/hdl/verilog" +incdir+"../../../../project.srcs/sources_1/bd/design_1/ipshared/xilinx.com/processing_system7_bfm_v2_0/hdl" +incdir+"../../../bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../../project.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1" +incdir+"./../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" +incdir+"./../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"./../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"./../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"./../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib "glbl.v"

