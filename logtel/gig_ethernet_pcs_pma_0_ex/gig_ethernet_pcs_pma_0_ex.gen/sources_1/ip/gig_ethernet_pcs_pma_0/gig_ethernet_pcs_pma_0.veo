// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:gig_ethernet_pcs_pma:16.2
// IP Revision: 21

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
gig_ethernet_pcs_pma_0 your_instance_name (
  .refclk(refclk),                              // input wire refclk
  .sgmii_clk_r(sgmii_clk_r),                    // output wire sgmii_clk_r
  .sgmii_clk_f(sgmii_clk_f),                    // output wire sgmii_clk_f
  .sgmii_clk_en(sgmii_clk_en),                  // output wire sgmii_clk_en
  .gmii_txd(gmii_txd),                          // input wire [7 : 0] gmii_txd
  .gmii_tx_en(gmii_tx_en),                      // input wire gmii_tx_en
  .gmii_tx_er(gmii_tx_er),                      // input wire gmii_tx_er
  .gmii_rxd(gmii_rxd),                          // output wire [7 : 0] gmii_rxd
  .gmii_rx_dv(gmii_rx_dv),                      // output wire gmii_rx_dv
  .gmii_rx_er(gmii_rx_er),                      // output wire gmii_rx_er
  .gmii_isolate(gmii_isolate),                  // output wire gmii_isolate
  .mdc(mdc),                                    // input wire mdc
  .mdio_i(mdio_i),                              // input wire mdio_i
  .mdio_o(mdio_o),                              // output wire mdio_o
  .mdio_t(mdio_t),                              // output wire mdio_t
  .phyaddr(phyaddr),                            // input wire [4 : 0] phyaddr
  .configuration_vector(configuration_vector),  // input wire [4 : 0] configuration_vector
  .configuration_valid(configuration_valid),    // input wire configuration_valid
  .an_interrupt(an_interrupt),                  // output wire an_interrupt
  .an_adv_config_vector(an_adv_config_vector),  // input wire [15 : 0] an_adv_config_vector
  .an_adv_config_val(an_adv_config_val),        // input wire an_adv_config_val
  .an_restart_config(an_restart_config),        // input wire an_restart_config
  .gtx_clk(gtx_clk),                            // input wire gtx_clk
  .tx_code_group(tx_code_group),                // output wire [9 : 0] tx_code_group
  .pma_tx_clk(pma_tx_clk),                      // output wire pma_tx_clk
  .loc_ref(loc_ref),                            // output wire loc_ref
  .ewrap(ewrap),                                // output wire ewrap
  .rx_code_group(rx_code_group),                // input wire [9 : 0] rx_code_group
  .pma_rx_clk0(pma_rx_clk0),                    // input wire pma_rx_clk0
  .en_cdet(en_cdet),                            // output wire en_cdet
  .speed_is_10_100(speed_is_10_100),            // input wire speed_is_10_100
  .speed_is_100(speed_is_100),                  // input wire speed_is_100
  .status_vector(status_vector),                // output wire [15 : 0] status_vector
  .reset(reset),                                // input wire reset
  .signal_detect(signal_detect)                // input wire signal_detect
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file gig_ethernet_pcs_pma_0.v when simulating
// the core, gig_ethernet_pcs_pma_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

