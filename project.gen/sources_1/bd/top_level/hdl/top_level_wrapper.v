//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Mon Jul 13 01:15:07 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level_wrapper.bd
//Design      : top_level_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_wrapper
   (HBM_CATTRIP_LS,
    QSFP28_0_ACTIVITY_LED,
    SYSCLK2_clk_n,
    SYSCLK2_clk_p,
    pcie0_refclk_clk_n,
    pcie0_refclk_clk_p,
    pcie1_refclk_clk_n,
    pcie1_refclk_clk_p,
    pcie_mgt_0_rxn,
    pcie_mgt_0_rxp,
    pcie_mgt_0_txn,
    pcie_mgt_0_txp,
    pcie_mgt_1_rxn,
    pcie_mgt_1_rxp,
    pcie_mgt_1_txn,
    pcie_mgt_1_txp,
    pcie_perst_l);
  output HBM_CATTRIP_LS;
  output QSFP28_0_ACTIVITY_LED;
  input [0:0]SYSCLK2_clk_n;
  input [0:0]SYSCLK2_clk_p;
  input [0:0]pcie0_refclk_clk_n;
  input [0:0]pcie0_refclk_clk_p;
  input [0:0]pcie1_refclk_clk_n;
  input [0:0]pcie1_refclk_clk_p;
  input [7:0]pcie_mgt_0_rxn;
  input [7:0]pcie_mgt_0_rxp;
  output [7:0]pcie_mgt_0_txn;
  output [7:0]pcie_mgt_0_txp;
  input [7:0]pcie_mgt_1_rxn;
  input [7:0]pcie_mgt_1_rxp;
  output [7:0]pcie_mgt_1_txn;
  output [7:0]pcie_mgt_1_txp;
  input pcie_perst_l;

  wire HBM_CATTRIP_LS;
  wire QSFP28_0_ACTIVITY_LED;
  wire [0:0]SYSCLK2_clk_n;
  wire [0:0]SYSCLK2_clk_p;
  wire [0:0]pcie0_refclk_clk_n;
  wire [0:0]pcie0_refclk_clk_p;
  wire [0:0]pcie1_refclk_clk_n;
  wire [0:0]pcie1_refclk_clk_p;
  wire [7:0]pcie_mgt_0_rxn;
  wire [7:0]pcie_mgt_0_rxp;
  wire [7:0]pcie_mgt_0_txn;
  wire [7:0]pcie_mgt_0_txp;
  wire [7:0]pcie_mgt_1_rxn;
  wire [7:0]pcie_mgt_1_rxp;
  wire [7:0]pcie_mgt_1_txn;
  wire [7:0]pcie_mgt_1_txp;
  wire pcie_perst_l;

  top_level top_level_i
       (.HBM_CATTRIP_LS(HBM_CATTRIP_LS),
        .QSFP28_0_ACTIVITY_LED(QSFP28_0_ACTIVITY_LED),
        .SYSCLK2_clk_n(SYSCLK2_clk_n),
        .SYSCLK2_clk_p(SYSCLK2_clk_p),
        .pcie0_refclk_clk_n(pcie0_refclk_clk_n),
        .pcie0_refclk_clk_p(pcie0_refclk_clk_p),
        .pcie1_refclk_clk_n(pcie1_refclk_clk_n),
        .pcie1_refclk_clk_p(pcie1_refclk_clk_p),
        .pcie_mgt_0_rxn(pcie_mgt_0_rxn),
        .pcie_mgt_0_rxp(pcie_mgt_0_rxp),
        .pcie_mgt_0_txn(pcie_mgt_0_txn),
        .pcie_mgt_0_txp(pcie_mgt_0_txp),
        .pcie_mgt_1_rxn(pcie_mgt_1_rxn),
        .pcie_mgt_1_rxp(pcie_mgt_1_rxp),
        .pcie_mgt_1_txn(pcie_mgt_1_txn),
        .pcie_mgt_1_txp(pcie_mgt_1_txp),
        .pcie_perst_l(pcie_perst_l));
endmodule
