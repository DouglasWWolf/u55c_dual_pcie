// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module top_level (
  pcie0_refclk_clk_p,
  pcie0_refclk_clk_n,
  pcie_mgt_0_rxn,
  pcie_mgt_0_rxp,
  pcie_mgt_0_txn,
  pcie_mgt_0_txp,
  pcie_mgt_1_rxn,
  pcie_mgt_1_rxp,
  pcie_mgt_1_txn,
  pcie_mgt_1_txp,
  pcie1_refclk_clk_p,
  pcie1_refclk_clk_n,
  SYSCLK2_clk_p,
  SYSCLK2_clk_n,
  QSFP28_0_ACTIVITY_LED,
  HBM_CATTRIP_LS,
  pcie_perst_l
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_P" *)
  (* X_INTERFACE_MODE = "slave pcie0_refclk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]pcie0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_N" *)
  input [0:0]pcie0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxn" *)
  (* X_INTERFACE_MODE = "master pcie_mgt_0" *)
  input [7:0]pcie_mgt_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 rxp" *)
  input [7:0]pcie_mgt_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txn" *)
  output [7:0]pcie_mgt_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_0 txp" *)
  output [7:0]pcie_mgt_0_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxn" *)
  (* X_INTERFACE_MODE = "master pcie_mgt_1" *)
  input [7:0]pcie_mgt_1_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 rxp" *)
  input [7:0]pcie_mgt_1_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txn" *)
  output [7:0]pcie_mgt_1_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt_1 txp" *)
  output [7:0]pcie_mgt_1_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_P" *)
  (* X_INTERFACE_MODE = "slave pcie1_refclk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]pcie1_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie1_refclk CLK_N" *)
  input [0:0]pcie1_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SYSCLK2 CLK_P" *)
  (* X_INTERFACE_MODE = "slave SYSCLK2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SYSCLK2, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]SYSCLK2_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SYSCLK2 CLK_N" *)
  input [0:0]SYSCLK2_clk_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output QSFP28_0_ACTIVITY_LED;
  (* X_INTERFACE_IGNORE = "true" *)
  output HBM_CATTRIP_LS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERST_L RST" *)
  (* X_INTERFACE_MODE = "slave RST.PCIE_PERST_L" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERST_L, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input pcie_perst_l;

  // stub module has no contents

endmodule
