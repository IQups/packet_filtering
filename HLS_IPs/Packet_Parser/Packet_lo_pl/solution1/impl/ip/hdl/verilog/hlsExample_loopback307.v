// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hlsExample_loopback307 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        parser2loopback_V_data_V_dout,
        parser2loopback_V_data_V_empty_n,
        parser2loopback_V_data_V_read,
        parser2loopback_V_strb_V_dout,
        parser2loopback_V_strb_V_empty_n,
        parser2loopback_V_strb_V_read,
        parser2loopback_V_user_V_dout,
        parser2loopback_V_user_V_empty_n,
        parser2loopback_V_user_V_read,
        parser2loopback_V_last_V_dout,
        parser2loopback_V_last_V_empty_n,
        parser2loopback_V_last_V_read,
        mod2merge_V_data_V_2_din,
        mod2merge_V_data_V_2_full_n,
        mod2merge_V_data_V_2_write,
        mod2merge_V_strb_V_2_din,
        mod2merge_V_strb_V_2_full_n,
        mod2merge_V_strb_V_2_write,
        mod2merge_V_user_V_2_din,
        mod2merge_V_user_V_2_full_n,
        mod2merge_V_user_V_2_write,
        mod2merge_V_last_V_2_din,
        mod2merge_V_last_V_2_full_n,
        mod2merge_V_last_V_2_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm0_0 = 1'b1;
parameter    ap_ST_st2_fsm1_1 = 2'b10;
parameter    ap_ST_st0_fsm1_0 = 2'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] parser2loopback_V_data_V_dout;
input   parser2loopback_V_data_V_empty_n;
output   parser2loopback_V_data_V_read;
input  [7:0] parser2loopback_V_strb_V_dout;
input   parser2loopback_V_strb_V_empty_n;
output   parser2loopback_V_strb_V_read;
input  [127:0] parser2loopback_V_user_V_dout;
input   parser2loopback_V_user_V_empty_n;
output   parser2loopback_V_user_V_read;
input  [0:0] parser2loopback_V_last_V_dout;
input   parser2loopback_V_last_V_empty_n;
output   parser2loopback_V_last_V_read;
output  [63:0] mod2merge_V_data_V_2_din;
input   mod2merge_V_data_V_2_full_n;
output   mod2merge_V_data_V_2_write;
output  [7:0] mod2merge_V_strb_V_2_din;
input   mod2merge_V_strb_V_2_full_n;
output   mod2merge_V_strb_V_2_write;
output  [127:0] mod2merge_V_user_V_2_din;
input   mod2merge_V_user_V_2_full_n;
output   mod2merge_V_user_V_2_write;
output  [0:0] mod2merge_V_last_V_2_din;
input   mod2merge_V_last_V_2_full_n;
output   mod2merge_V_last_V_2_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm0 = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm0_0;
reg    ap_sig_bdd_23;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm1 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm1_0;
reg    ap_sig_bdd_34;
wire    parser2loopback_V_data_V0_status;
wire   [0:0] tmp_nbreadreq_fu_38_p6;
reg    ap_sig_bdd_49;
wire    mod2merge_V_data_V_21_status;
reg   [0:0] tmp_reg_96;
reg    ap_sig_bdd_57;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_63;
reg   [63:0] tmp_data_V_4_reg_100;
reg   [7:0] tmp_strb_V_reg_105;
reg   [127:0] tmp_user_V_reg_110;
reg   [0:0] tmp_last_V_reg_115;
reg    parser2loopback_V_data_V0_update;
reg    mod2merge_V_data_V_21_update;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;




/// the current state (ap_CS_fsm0) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm0
    if (ap_rst == 1'b1) begin
        ap_CS_fsm0 <= ap_ST_st1_fsm0_0;
    end else begin
        ap_CS_fsm0 <= ap_NS_fsm0;
    end
end

/// the current state (ap_CS_fsm1) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm1
    if (ap_rst == 1'b1) begin
        ap_CS_fsm1 <= ap_ST_st0_fsm1_0;
    end else begin
        ap_CS_fsm1 <= ap_NS_fsm1;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_57))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_38_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_49 | (ap_sig_bdd_57 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_data_V_4_reg_100 <= parser2loopback_V_data_V_dout;
        tmp_last_V_reg_115 <= parser2loopback_V_last_V_dout;
        tmp_strb_V_reg_105 <= parser2loopback_V_strb_V_dout;
        tmp_user_V_reg_110 <= parser2loopback_V_user_V_dout;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_49 | (ap_sig_bdd_57 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_reg_96 <= tmp_nbreadreq_fu_38_p6;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_57 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_57)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_cseq_ST_st0_fsm1_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm1_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_49 or ap_sig_bdd_57 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_49 | (ap_sig_bdd_57 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm1_0 assign process. ///
always @ (ap_sig_bdd_34) begin
    if (ap_sig_bdd_34) begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm0_0 assign process. ///
always @ (ap_sig_bdd_23) begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm1_1 assign process. ///
always @ (ap_sig_bdd_63) begin
    if (ap_sig_bdd_63) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// mod2merge_V_data_V_21_update assign process. ///
always @ (ap_done_reg or tmp_reg_96 or ap_sig_bdd_57 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if ((~(ap_const_lv1_0 == tmp_reg_96) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_57))) begin
        mod2merge_V_data_V_21_update = ap_const_logic_1;
    end else begin
        mod2merge_V_data_V_21_update = ap_const_logic_0;
    end
end

/// parser2loopback_V_data_V0_update assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_38_p6 or ap_sig_bdd_49 or ap_sig_bdd_57 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_38_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_49 | (ap_sig_bdd_57 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        parser2loopback_V_data_V0_update = ap_const_logic_1;
    end else begin
        parser2loopback_V_data_V0_update = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_49 or ap_sig_bdd_57 or ap_sig_cseq_ST_st2_fsm1_1) begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_57) & ~ap_sig_bdd_49)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_57) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_49)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_49 | (ap_sig_bdd_57 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end
        end
        default : 
        begin
            ap_NS_fsm1 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm0) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_49 or ap_sig_bdd_57 or ap_sig_cseq_ST_st2_fsm1_1) begin
    case (ap_CS_fsm0)
        ap_ST_st1_fsm0_0 : 
        begin
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
        end
        default : 
        begin
            ap_NS_fsm0 = 'bx;
        end
    endcase
end


/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm0) begin
    ap_sig_bdd_23 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_34 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_34 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_49 assign process. ///
always @ (ap_start or ap_done_reg or parser2loopback_V_data_V0_status or tmp_nbreadreq_fu_38_p6) begin
    ap_sig_bdd_49 = (((parser2loopback_V_data_V0_status == ap_const_logic_0) & ~(tmp_nbreadreq_fu_38_p6 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_57 assign process. ///
always @ (mod2merge_V_data_V_21_status or tmp_reg_96) begin
    ap_sig_bdd_57 = ((mod2merge_V_data_V_21_status == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_96));
end

/// ap_sig_bdd_63 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_63 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end
assign mod2merge_V_data_V_21_status = (mod2merge_V_data_V_2_full_n & mod2merge_V_strb_V_2_full_n & mod2merge_V_user_V_2_full_n & mod2merge_V_last_V_2_full_n);
assign mod2merge_V_data_V_2_din = tmp_data_V_4_reg_100;
assign mod2merge_V_data_V_2_write = mod2merge_V_data_V_21_update;
assign mod2merge_V_last_V_2_din = tmp_last_V_reg_115;
assign mod2merge_V_last_V_2_write = mod2merge_V_data_V_21_update;
assign mod2merge_V_strb_V_2_din = tmp_strb_V_reg_105;
assign mod2merge_V_strb_V_2_write = mod2merge_V_data_V_21_update;
assign mod2merge_V_user_V_2_din = tmp_user_V_reg_110;
assign mod2merge_V_user_V_2_write = mod2merge_V_data_V_21_update;
assign parser2loopback_V_data_V0_status = (parser2loopback_V_data_V_empty_n & parser2loopback_V_strb_V_empty_n & parser2loopback_V_user_V_empty_n & parser2loopback_V_last_V_empty_n);
assign parser2loopback_V_data_V_read = parser2loopback_V_data_V0_update;
assign parser2loopback_V_last_V_read = parser2loopback_V_data_V0_update;
assign parser2loopback_V_strb_V_read = parser2loopback_V_data_V0_update;
assign parser2loopback_V_user_V_read = parser2loopback_V_data_V0_update;
assign tmp_nbreadreq_fu_38_p6 = (parser2loopback_V_data_V_empty_n & parser2loopback_V_strb_V_empty_n & parser2loopback_V_user_V_empty_n & parser2loopback_V_last_V_empty_n);


endmodule //hlsExample_loopback307

