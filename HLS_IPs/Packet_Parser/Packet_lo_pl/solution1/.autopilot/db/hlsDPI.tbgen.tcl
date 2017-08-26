set C_TypeInfoList {{ 
"hlsDPI" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inData": [[], {"reference": "0"}] }, {"outData": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<axiWord>", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "axiWord", {"struct": [[],[],[{ "data": [[], "3"]},{ "strb": [[], "4"]},{ "user": [[], "5"]},{ "last": [[], "6"]}],""]}], 
"4": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"5": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}], 
"3": [ "ap_uint<64>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName hlsDPI
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {hlsDPI}
set C_modelType { void 0 }
set C_modelArgList { 
	{ inData_V_data_V int 64 regular {axi_s 0 volatile  { inData data } }  }
	{ inData_V_strb_V int 8 regular {axi_s 0 volatile  { inData strb } }  }
	{ inData_V_user_V int 128 regular {axi_s 0 volatile  { inData user } }  }
	{ inData_V_last_V int 1 regular {axi_s 0 volatile  { inData last } }  }
	{ outData_V_data_V int 64 regular {axi_s 1 volatile  { outData data } }  }
	{ outData_V_strb_V int 8 regular {axi_s 1 volatile  { outData strb } }  }
	{ outData_V_user_V int 128 regular {axi_s 1 volatile  { outData user } }  }
	{ outData_V_last_V int 1 regular {axi_s 1 volatile  { outData last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inData_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "inData.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inData.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_user_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "inData.V.user.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inData.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "outData.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outData.V.strb.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_user_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "outData.V.user.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outData.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ inData_TDATA sc_in sc_lv 64 signal 0 } 
	{ inData_TSTRB sc_in sc_lv 8 signal 1 } 
	{ inData_TUSER sc_in sc_lv 128 signal 2 } 
	{ inData_TLAST sc_in sc_lv 1 signal 3 } 
	{ outData_TDATA sc_out sc_lv 64 signal 4 } 
	{ outData_TSTRB sc_out sc_lv 8 signal 5 } 
	{ outData_TUSER sc_out sc_lv 128 signal 6 } 
	{ outData_TLAST sc_out sc_lv 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inData_TVALID sc_in sc_logic 1 invld 3 } 
	{ inData_TREADY sc_out sc_logic 1 inacc 3 } 
	{ outData_TVALID sc_out sc_logic 1 outvld 7 } 
	{ outData_TREADY sc_in sc_logic 1 outacc 7 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "inData_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inData_V_data_V", "role": "default" }} , 
 	{ "name": "inData_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inData_V_strb_V", "role": "default" }} , 
 	{ "name": "inData_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "inData_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inData_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outData_V_data_V", "role": "default" }} , 
 	{ "name": "outData_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outData_V_strb_V", "role": "default" }} , 
 	{ "name": "outData_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "outData_V_user_V", "role": "default" }} , 
 	{ "name": "outData_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outData_V_last_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inData_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inData_V_last_V", "role": "default" }} , 
 	{ "name": "inData_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inData_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outData_V_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}
set Spec2ImplPortList { 
	inData_V_data_V { axis {  { inData_TDATA in_data 0 64 } } }
	inData_V_strb_V { axis {  { inData_TSTRB in_data 0 8 } } }
	inData_V_user_V { axis {  { inData_TUSER in_data 0 128 } } }
	inData_V_last_V { axis {  { inData_TLAST in_data 0 1 }  { inData_TVALID in_vld 0 1 }  { inData_TREADY in_acc 1 1 } } }
	outData_V_data_V { axis {  { outData_TDATA out_data 1 64 } } }
	outData_V_strb_V { axis {  { outData_TSTRB out_data 1 8 } } }
	outData_V_user_V { axis {  { outData_TUSER out_data 1 128 } } }
	outData_V_last_V { axis {  { outData_TLAST out_data 1 1 }  { outData_TVALID out_vld 1 1 }  { outData_TREADY out_acc 0 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
