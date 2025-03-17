// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module gig_ethernet_pcs_pma_0 (
  refclk,
  sgmii_clk_r,
  sgmii_clk_f,
  sgmii_clk_en,
  gmii_txd,
  gmii_tx_en,
  gmii_tx_er,
  gmii_rxd,
  gmii_rx_dv,
  gmii_rx_er,
  gmii_isolate,
  mdc,
  mdio_i,
  mdio_o,
  mdio_t,
  phyaddr,
  configuration_vector,
  configuration_valid,
  an_interrupt,
  an_adv_config_vector,
  an_adv_config_val,
  an_restart_config,
  gtx_clk,
  tx_code_group,
  pma_tx_clk,
  loc_ref,
  ewrap,
  rx_code_group,
  pma_rx_clk0,
  en_cdet,
  speed_is_10_100,
  speed_is_100,
  status_vector,
  reset,
  signal_detect
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 refclk_port CLK" *)
  (* X_INTERFACE_MODE = "slave refclk_port" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME refclk_port, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  input refclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output sgmii_clk_r;
  (* X_INTERFACE_IGNORE = "true" *)
  output sgmii_clk_f;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 sgmii_clk_en_port CE" *)
  (* X_INTERFACE_MODE = "master sgmii_clk_en_port" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sgmii_clk_en_port, POLARITY ACTIVE_LOW" *)
  output sgmii_clk_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii_pcs_pma TXD" *)
  (* X_INTERFACE_MODE = "slave gmii_pcs_pma" *)
  input [7:0]gmii_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii_pcs_pma TX_EN" *)
  input gmii_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii_pcs_pma TX_ER" *)
  input gmii_tx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii_pcs_pma RXD" *)
  output [7:0]gmii_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii_pcs_pma RX_DV" *)
  output gmii_rx_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gmii:1.0 gmii_pcs_pma RX_ER" *)
  output gmii_rx_er;
  (* X_INTERFACE_IGNORE = "true" *)
  output gmii_isolate;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_pcs_pma MDC" *)
  (* X_INTERFACE_MODE = "slave mdio_pcs_pma" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_pcs_pma, CAN_DEBUG false" *)
  input mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_pcs_pma MDIO_I" *)
  input mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_pcs_pma MDIO_O" *)
  output mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_pcs_pma MDIO_T" *)
  output mdio_t;
  (* X_INTERFACE_IGNORE = "true" *)
  input [4:0]phyaddr;
  (* X_INTERFACE_IGNORE = "true" *)
  input [4:0]configuration_vector;
  (* X_INTERFACE_IGNORE = "true" *)
  input configuration_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 an_interrupt_port INTERRUPT" *)
  (* X_INTERFACE_MODE = "master an_interrupt_port" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME an_interrupt_port, SENSITIVITY EDGE_RISING, PortWidth 1" *)
  output an_interrupt;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]an_adv_config_vector;
  (* X_INTERFACE_IGNORE = "true" *)
  input an_adv_config_val;
  (* X_INTERFACE_IGNORE = "true" *)
  input an_restart_config;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 gtx_clk_port CLK" *)
  (* X_INTERFACE_MODE = "slave gtx_clk_port" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtx_clk_port, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  input gtx_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output [9:0]tx_code_group;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pma_tx_clk_port CLK" *)
  (* X_INTERFACE_MODE = "master pma_tx_clk_port" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pma_tx_clk_port, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  output pma_tx_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output loc_ref;
  (* X_INTERFACE_IGNORE = "true" *)
  output ewrap;
  (* X_INTERFACE_IGNORE = "true" *)
  input [9:0]rx_code_group;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pma_rx_clk0_port CLK" *)
  (* X_INTERFACE_MODE = "slave pma_rx_clk0_port" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pma_rx_clk0_port, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  input pma_rx_clk0;
  (* X_INTERFACE_IGNORE = "true" *)
  output en_cdet;
  (* X_INTERFACE_IGNORE = "true" *)
  input speed_is_10_100;
  (* X_INTERFACE_IGNORE = "true" *)
  input speed_is_100;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]status_vector;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_port RST" *)
  (* X_INTERFACE_MODE = "slave reset_port" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_port, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_IGNORE = "true" *)
  input signal_detect;

  // stub module has no contents

endmodule
