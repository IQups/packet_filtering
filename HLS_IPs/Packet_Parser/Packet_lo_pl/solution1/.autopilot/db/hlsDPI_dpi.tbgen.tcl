set moduleName hlsDPI_dpi
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {hlsDPI_dpi}
set C_modelType { void 0 }
set C_modelArgList { 
	{ outData2merge_V_data_V int 64 regular {axi_s 1 volatile  { outData data } }  }
	{ outData2merge_V_strb_V int 8 regular {axi_s 1 volatile  { outData strb } }  }
	{ outData2merge_V_user_V int 128 regular {axi_s 1 volatile  { outData user } }  }
	{ outData2merge_V_last_V int 1 regular {axi_s 1 volatile  { outData last } }  }
	{ parser2dpi_V_data_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ parser2dpi_V_strb_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ parser2dpi_V_user_V int 128 regular {fifo 0 volatile } {global 0}  }
	{ parser2dpi_V_last_V int 1 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outData2merge_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData2merge_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData2merge_V_user_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData2merge_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "parser2dpi_V_data_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "parser2dpi_V_strb_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "parser2dpi_V_user_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "parser2dpi_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outData_TREADY sc_in sc_logic 1 outacc 3 } 
	{ outData_TDATA sc_out sc_lv 64 signal 0 } 
	{ outData_TVALID sc_out sc_logic 1 outvld 3 } 
	{ outData_TSTRB sc_out sc_lv 8 signal 1 } 
	{ outData_TUSER sc_out sc_lv 128 signal 2 } 
	{ outData_TLAST sc_out sc_lv 1 signal 3 } 
	{ parser2dpi_V_data_V_dout sc_in sc_lv 64 signal 4 } 
	{ parser2dpi_V_data_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ parser2dpi_V_data_V_read sc_out sc_logic 1 signal 4 } 
	{ parser2dpi_V_strb_V_dout sc_in sc_lv 8 signal 5 } 
	{ parser2dpi_V_strb_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ parser2dpi_V_strb_V_read sc_out sc_logic 1 signal 5 } 
	{ parser2dpi_V_user_V_dout sc_in sc_lv 128 signal 6 } 
	{ parser2dpi_V_user_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ parser2dpi_V_user_V_read sc_out sc_logic 1 signal 6 } 
	{ parser2dpi_V_last_V_dout sc_in sc_lv 1 signal 7 } 
	{ parser2dpi_V_last_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ parser2dpi_V_last_V_read sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outData_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outData2merge_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outData2merge_V_data_V", "role": "default" }} , 
 	{ "name": "outData_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData2merge_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outData2merge_V_strb_V", "role": "default" }} , 
 	{ "name": "outData_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "outData2merge_V_user_V", "role": "default" }} , 
 	{ "name": "outData_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outData2merge_V_last_V", "role": "default" }} , 
 	{ "name": "parser2dpi_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "parser2dpi_V_data_V", "role": "dout" }} , 
 	{ "name": "parser2dpi_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_data_V", "role": "empty_n" }} , 
 	{ "name": "parser2dpi_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_data_V", "role": "read" }} , 
 	{ "name": "parser2dpi_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "parser2dpi_V_strb_V", "role": "dout" }} , 
 	{ "name": "parser2dpi_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "parser2dpi_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_strb_V", "role": "read" }} , 
 	{ "name": "parser2dpi_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "parser2dpi_V_user_V", "role": "dout" }} , 
 	{ "name": "parser2dpi_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_user_V", "role": "empty_n" }} , 
 	{ "name": "parser2dpi_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_user_V", "role": "read" }} , 
 	{ "name": "parser2dpi_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_last_V", "role": "dout" }} , 
 	{ "name": "parser2dpi_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_last_V", "role": "empty_n" }} , 
 	{ "name": "parser2dpi_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parser2dpi_V_last_V", "role": "read" }}  ]}
set Spec2ImplPortList { 
	outData2merge_V_data_V { axis {  { outData_TDATA out_data 1 64 } } }
	outData2merge_V_strb_V { axis {  { outData_TSTRB out_data 1 8 } } }
	outData2merge_V_user_V { axis {  { outData_TUSER out_data 1 128 } } }
	outData2merge_V_last_V { axis {  { outData_TREADY out_acc 0 1 }  { outData_TVALID out_vld 1 1 }  { outData_TLAST out_data 1 1 } } }
	parser2dpi_V_data_V { ap_fifo {  { parser2dpi_V_data_V_dout fifo_data 0 64 }  { parser2dpi_V_data_V_empty_n fifo_status 0 1 }  { parser2dpi_V_data_V_read fifo_update 1 1 } } }
	parser2dpi_V_strb_V { ap_fifo {  { parser2dpi_V_strb_V_dout fifo_data 0 8 }  { parser2dpi_V_strb_V_empty_n fifo_status 0 1 }  { parser2dpi_V_strb_V_read fifo_update 1 1 } } }
	parser2dpi_V_user_V { ap_fifo {  { parser2dpi_V_user_V_dout fifo_data 0 128 }  { parser2dpi_V_user_V_empty_n fifo_status 0 1 }  { parser2dpi_V_user_V_read fifo_update 1 1 } } }
	parser2dpi_V_last_V { ap_fifo {  { parser2dpi_V_last_V_dout fifo_data 0 1 }  { parser2dpi_V_last_V_empty_n fifo_status 0 1 }  { parser2dpi_V_last_V_read fifo_update 1 1 } } }
}
