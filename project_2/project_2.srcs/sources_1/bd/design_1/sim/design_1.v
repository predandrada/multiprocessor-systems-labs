//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jan 20 02:37:33 2021
//Host        : shoebox running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    reset_n_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_n_0;

  wire clk_0_1;
  wire decoder_0_o;
  wire [23:0]mc68000_0_a;
  wire mc68000_0_as_n;
  wire [15:0]mc68000_0_d;
  wire mc68000_0_lds_n;
  wire mc68000_0_rw_n;
  wire mc68000_0_uds_n;
  wire nand_gate_0_c;
  wire nand_gate_1_c;
  wire nand_gate_2_c;
  wire nor_gate_0_c;
  wire not_gate_0_b;
  wire reset_n_0_1;
  wire [9:0]splitter_addresses_0_a1;
  wire [12:0]splitter_addresses_0_a2;
  wire [7:0]splitter_data_0_d1;
  wire [7:0]splitter_data_0_d2;

  assign clk_0_1 = clk_0;
  assign reset_n_0_1 = reset_n_0;
  design_1_decoder_0_0 decoder_0
       (.address(splitter_addresses_0_a1),
        .o(decoder_0_o));
  design_1_mc68000_0_0 mc68000_0
       (.a(mc68000_0_a),
        .as_n(mc68000_0_as_n),
        .berr_n(1'b0),
        .bgack_n(1'b0),
        .br_n(1'b0),
        .clk(clk_0_1),
        .d(mc68000_0_d),
        .dtack_n(nor_gate_0_c),
        .ip_n({1'b0,1'b0,1'b0}),
        .lds_n(mc68000_0_lds_n),
        .reset_n(reset_n_0_1),
        .rw_n(mc68000_0_rw_n),
        .uds_n(mc68000_0_uds_n),
        .vpa_n(1'b0));
  design_1_nand_gate_0_0 nand_gate_0
       (.a(mc68000_0_as_n),
        .b(mc68000_0_rw_n),
        .c(nand_gate_0_c));
  design_1_nand_gate_1_0 nand_gate_1
       (.a(mc68000_0_lds_n),
        .b(decoder_0_o),
        .c(nand_gate_1_c));
  design_1_nand_gate_2_0 nand_gate_2
       (.a(mc68000_0_uds_n),
        .b(decoder_0_o),
        .c(nand_gate_2_c));
  design_1_nor_gate_0_0 nor_gate_0
       (.a(nand_gate_2_c),
        .b(nand_gate_1_c),
        .c(nor_gate_0_c));
  design_1_not_gate_0_0 not_gate_0
       (.a(mc68000_0_rw_n),
        .b(not_gate_0_b));
  design_1_ram8kx8_0_0 ram8kx8_0
       (.a(splitter_addresses_0_a2),
        .cs_n(nand_gate_2_c),
        .d(splitter_data_0_d2),
        .oe_n(not_gate_0_b),
        .rw_n(nand_gate_0_c));
  design_1_ram8kx8_1_0 ram8kx8_1
       (.a(splitter_addresses_0_a2),
        .cs_n(nand_gate_1_c),
        .d(splitter_data_0_d1),
        .oe_n(not_gate_0_b),
        .rw_n(nand_gate_0_c));
  design_1_splitter_addresses_0_0 splitter_addresses_0
       (.a(mc68000_0_a),
        .a1(splitter_addresses_0_a1),
        .a2(splitter_addresses_0_a2));
  design_1_splitter_data_0_0 splitter_data_0
       (.d(mc68000_0_d),
        .d1(splitter_data_0_d1),
        .d2(splitter_data_0_d2));
endmodule
