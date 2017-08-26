// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _hlsDPI_HH_
#define _hlsDPI_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "hlsDPI_ethernetDetection.h"
#include "hlsDPI_dpi.h"
#include "FIFO_hlsDPI_parser2dpi_V_data_V.h"
#include "FIFO_hlsDPI_parser2dpi_V_strb_V.h"
#include "FIFO_hlsDPI_parser2dpi_V_user_V.h"
#include "FIFO_hlsDPI_parser2dpi_V_last_V.h"

namespace ap_rtl {

struct hlsDPI : public sc_module {
    // Port declarations 18
    sc_in< sc_lv<64> > inData_TDATA;
    sc_in< sc_lv<8> > inData_TSTRB;
    sc_in< sc_lv<128> > inData_TUSER;
    sc_in< sc_lv<1> > inData_TLAST;
    sc_out< sc_lv<64> > outData_TDATA;
    sc_out< sc_lv<8> > outData_TSTRB;
    sc_out< sc_lv<128> > outData_TUSER;
    sc_out< sc_lv<1> > outData_TLAST;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > inData_TVALID;
    sc_out< sc_logic > inData_TREADY;
    sc_out< sc_logic > outData_TVALID;
    sc_in< sc_logic > outData_TREADY;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;


    // Module declarations
    hlsDPI(sc_module_name name);
    SC_HAS_PROCESS(hlsDPI);

    ~hlsDPI();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    hlsDPI_ethernetDetection* hlsDPI_ethernetDetection_U0;
    hlsDPI_dpi* hlsDPI_dpi_U0;
    FIFO_hlsDPI_parser2dpi_V_data_V* parser2dpi_V_data_V_U;
    FIFO_hlsDPI_parser2dpi_V_strb_V* parser2dpi_V_strb_V_U;
    FIFO_hlsDPI_parser2dpi_V_user_V* parser2dpi_V_user_V_U;
    FIFO_hlsDPI_parser2dpi_V_last_V* parser2dpi_V_last_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_ap_start;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_ap_done;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_ap_continue;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_ap_idle;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_ap_ready;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_inData_TVALID;
    sc_signal< sc_lv<64> > hlsDPI_ethernetDetection_U0_inData_TDATA;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_inData_TREADY;
    sc_signal< sc_lv<8> > hlsDPI_ethernetDetection_U0_inData_TSTRB;
    sc_signal< sc_lv<128> > hlsDPI_ethernetDetection_U0_inData_TUSER;
    sc_signal< sc_lv<1> > hlsDPI_ethernetDetection_U0_inData_TLAST;
    sc_signal< sc_lv<64> > hlsDPI_ethernetDetection_U0_parser2dpi_V_data_V_din;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_data_V_full_n;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_data_V_write;
    sc_signal< sc_lv<8> > hlsDPI_ethernetDetection_U0_parser2dpi_V_strb_V_din;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_strb_V_full_n;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_strb_V_write;
    sc_signal< sc_lv<128> > hlsDPI_ethernetDetection_U0_parser2dpi_V_user_V_din;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_user_V_full_n;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_user_V_write;
    sc_signal< sc_lv<1> > hlsDPI_ethernetDetection_U0_parser2dpi_V_last_V_din;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_last_V_full_n;
    sc_signal< sc_logic > hlsDPI_ethernetDetection_U0_parser2dpi_V_last_V_write;
    sc_signal< sc_logic > hlsDPI_dpi_U0_ap_start;
    sc_signal< sc_logic > hlsDPI_dpi_U0_ap_done;
    sc_signal< sc_logic > hlsDPI_dpi_U0_ap_continue;
    sc_signal< sc_logic > hlsDPI_dpi_U0_ap_idle;
    sc_signal< sc_logic > hlsDPI_dpi_U0_ap_ready;
    sc_signal< sc_logic > hlsDPI_dpi_U0_outData_TREADY;
    sc_signal< sc_lv<64> > hlsDPI_dpi_U0_outData_TDATA;
    sc_signal< sc_logic > hlsDPI_dpi_U0_outData_TVALID;
    sc_signal< sc_lv<8> > hlsDPI_dpi_U0_outData_TSTRB;
    sc_signal< sc_lv<128> > hlsDPI_dpi_U0_outData_TUSER;
    sc_signal< sc_lv<1> > hlsDPI_dpi_U0_outData_TLAST;
    sc_signal< sc_lv<64> > hlsDPI_dpi_U0_parser2dpi_V_data_V_dout;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_data_V_empty_n;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_data_V_read;
    sc_signal< sc_lv<8> > hlsDPI_dpi_U0_parser2dpi_V_strb_V_dout;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_strb_V_empty_n;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_strb_V_read;
    sc_signal< sc_lv<128> > hlsDPI_dpi_U0_parser2dpi_V_user_V_dout;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_user_V_empty_n;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_user_V_read;
    sc_signal< sc_lv<1> > hlsDPI_dpi_U0_parser2dpi_V_last_V_dout;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_last_V_empty_n;
    sc_signal< sc_logic > hlsDPI_dpi_U0_parser2dpi_V_last_V_read;
    sc_signal< sc_logic > ap_sig_hs_continue;
    sc_signal< sc_logic > parser2dpi_V_data_V_U_ap_dummy_ce;
    sc_signal< sc_lv<64> > parser2dpi_V_data_V_din;
    sc_signal< sc_logic > parser2dpi_V_data_V_full_n;
    sc_signal< sc_logic > parser2dpi_V_data_V_write;
    sc_signal< sc_lv<64> > parser2dpi_V_data_V_dout;
    sc_signal< sc_logic > parser2dpi_V_data_V_empty_n;
    sc_signal< sc_logic > parser2dpi_V_data_V_read;
    sc_signal< sc_logic > parser2dpi_V_strb_V_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > parser2dpi_V_strb_V_din;
    sc_signal< sc_logic > parser2dpi_V_strb_V_full_n;
    sc_signal< sc_logic > parser2dpi_V_strb_V_write;
    sc_signal< sc_lv<8> > parser2dpi_V_strb_V_dout;
    sc_signal< sc_logic > parser2dpi_V_strb_V_empty_n;
    sc_signal< sc_logic > parser2dpi_V_strb_V_read;
    sc_signal< sc_logic > parser2dpi_V_user_V_U_ap_dummy_ce;
    sc_signal< sc_lv<128> > parser2dpi_V_user_V_din;
    sc_signal< sc_logic > parser2dpi_V_user_V_full_n;
    sc_signal< sc_logic > parser2dpi_V_user_V_write;
    sc_signal< sc_lv<128> > parser2dpi_V_user_V_dout;
    sc_signal< sc_logic > parser2dpi_V_user_V_empty_n;
    sc_signal< sc_logic > parser2dpi_V_user_V_read;
    sc_signal< sc_logic > parser2dpi_V_last_V_U_ap_dummy_ce;
    sc_signal< sc_lv<1> > parser2dpi_V_last_V_din;
    sc_signal< sc_logic > parser2dpi_V_last_V_full_n;
    sc_signal< sc_logic > parser2dpi_V_last_V_write;
    sc_signal< sc_lv<1> > parser2dpi_V_last_V_dout;
    sc_signal< sc_logic > parser2dpi_V_last_V_empty_n;
    sc_signal< sc_logic > parser2dpi_V_last_V_read;
    sc_signal< sc_logic > ap_reg_procdone_hlsDPI_ethernetDetection_U0;
    sc_signal< sc_logic > ap_sig_hs_done;
    sc_signal< sc_logic > ap_reg_procdone_hlsDPI_dpi_U0;
    sc_signal< sc_logic > ap_CS;
    sc_signal< sc_logic > ap_sig_top_allready;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_hs_continue();
    void thread_ap_sig_hs_done();
    void thread_ap_sig_top_allready();
    void thread_hlsDPI_dpi_U0_ap_continue();
    void thread_hlsDPI_dpi_U0_outData_TREADY();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_data_V_dout();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_data_V_empty_n();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_last_V_dout();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_last_V_empty_n();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_strb_V_dout();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_strb_V_empty_n();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_user_V_dout();
    void thread_hlsDPI_dpi_U0_parser2dpi_V_user_V_empty_n();
    void thread_hlsDPI_ethernetDetection_U0_ap_continue();
    void thread_hlsDPI_ethernetDetection_U0_ap_start();
    void thread_hlsDPI_ethernetDetection_U0_inData_TDATA();
    void thread_hlsDPI_ethernetDetection_U0_inData_TLAST();
    void thread_hlsDPI_ethernetDetection_U0_inData_TSTRB();
    void thread_hlsDPI_ethernetDetection_U0_inData_TUSER();
    void thread_hlsDPI_ethernetDetection_U0_inData_TVALID();
    void thread_hlsDPI_ethernetDetection_U0_parser2dpi_V_data_V_full_n();
    void thread_hlsDPI_ethernetDetection_U0_parser2dpi_V_last_V_full_n();
    void thread_hlsDPI_ethernetDetection_U0_parser2dpi_V_strb_V_full_n();
    void thread_hlsDPI_ethernetDetection_U0_parser2dpi_V_user_V_full_n();
    void thread_inData_TREADY();
    void thread_outData_TDATA();
    void thread_outData_TLAST();
    void thread_outData_TSTRB();
    void thread_outData_TUSER();
    void thread_outData_TVALID();
    void thread_parser2dpi_V_data_V_U_ap_dummy_ce();
    void thread_parser2dpi_V_data_V_din();
    void thread_parser2dpi_V_data_V_read();
    void thread_parser2dpi_V_data_V_write();
    void thread_parser2dpi_V_last_V_U_ap_dummy_ce();
    void thread_parser2dpi_V_last_V_din();
    void thread_parser2dpi_V_last_V_read();
    void thread_parser2dpi_V_last_V_write();
    void thread_parser2dpi_V_strb_V_U_ap_dummy_ce();
    void thread_parser2dpi_V_strb_V_din();
    void thread_parser2dpi_V_strb_V_read();
    void thread_parser2dpi_V_strb_V_write();
    void thread_parser2dpi_V_user_V_U_ap_dummy_ce();
    void thread_parser2dpi_V_user_V_din();
    void thread_parser2dpi_V_user_V_read();
    void thread_parser2dpi_V_user_V_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
