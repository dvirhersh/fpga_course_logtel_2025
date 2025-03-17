// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 17 22:21:29 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FPGA/logtel/lab20_axi/lab20_axi.gen/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* core_generation_info = "gig_ethernet_pcs_pma_0,gig_ethernet_pcs_pma_v16_2_21,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=16.2,x_ipCoreRevision=21,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,c_elaboration_transient_dir=.,c_component_name=gig_ethernet_pcs_pma_0,c_family=artix7,c_architecture=artix7,c_is_sgmii=true,c_enable_async_sgmii=false,c_enable_async_lvds=false,c_enable_async_lvds_rx_only=false,c_use_transceiver=false,c_use_tbi=true,c_is_2_5g=false,c_use_lvds=false,c_has_an=true,characterization=false,c_has_mdio=true,c_has_axil=false,c_has_ext_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_sgmii_fabric_buffer=true,c_1588=0,gt_rx_byte_width=1,C_EMAC_IF_TEMAC=true,EXAMPLE_SIMULATION=0,c_support_level=false,c_RxNibbleBitslice0Used=false,c_InstantiateBitslice0=false,c_tx_in_upper_nibble=1,c_TxLane0_Placement=DIFF_PAIR_0,c_TxLane1_Placement=DIFF_PAIR_1,c_RxLane0_Placement=DIFF_PAIR_0,c_RxLane1_Placement=DIFF_PAIR_1,c_sub_core_name=gig_ethernet_pcs_pma_0_gt,c_transceiver_type=GTPE2,c_gt_type=GTH,c_rx_gmii_clk_src=TXOUTCLK,c_transceivercontrol=false,c_gtinex=false,c_xdevicefamily=xc7a100t,c_clock_selection=Sync,c_gt_dmonitorout_width=15,c_gt_drpaddr_width=9,c_gt_txdiffctrl_width=4,c_gt_rxmonitorout_width=7,c_num_of_lanes=1,c_refclkrate=125,c_drpclkrate=50.0,c_gt_loc=X0Y0,c_refclk_src=clk0,c_enable_tx_userclk_reset_port=false,c_8_or_9_family=false,VERSAL_GT_BOARD_FLOW=0}" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_21,Vivado 2024.2" *) 
module gig_ethernet_pcs_pma_0(gtx_clk, refclk, tx_code_group, pma_tx_clk, 
  loc_ref, ewrap, rx_code_group, pma_rx_clk0, en_cdet, sgmii_clk_r, sgmii_clk_f, sgmii_clk_en, 
  gmii_txd, gmii_tx_en, gmii_tx_er, gmii_rxd, gmii_rx_dv, gmii_rx_er, gmii_isolate, mdc, mdio_i, 
  mdio_o, mdio_t, configuration_vector, phyaddr, configuration_valid, an_interrupt, 
  an_adv_config_vector, an_adv_config_val, an_restart_config, speed_is_10_100, 
  speed_is_100, status_vector, reset, signal_detect)
/* synthesis syn_black_box black_box_pad_pin="tx_code_group[9:0],pma_tx_clk,loc_ref,ewrap,rx_code_group[9:0],en_cdet,sgmii_clk_r,sgmii_clk_f,sgmii_clk_en,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,mdc,mdio_i,mdio_o,mdio_t,configuration_vector[4:0],phyaddr[4:0],configuration_valid,an_interrupt,an_adv_config_vector[15:0],an_adv_config_val,an_restart_config,speed_is_10_100,speed_is_100,status_vector[15:0],reset,signal_detect" */
/* synthesis syn_force_seq_prim="gtx_clk" */
/* synthesis syn_force_seq_prim="refclk" */
/* synthesis syn_force_seq_prim="pma_rx_clk0" */;
  input gtx_clk /* synthesis syn_isclock = 1 */;
  input refclk /* synthesis syn_isclock = 1 */;
  output [9:0]tx_code_group;
  output pma_tx_clk;
  output loc_ref;
  output ewrap;
  input [9:0]rx_code_group;
  input pma_rx_clk0 /* synthesis syn_isclock = 1 */;
  output en_cdet;
  output sgmii_clk_r;
  output sgmii_clk_f;
  output sgmii_clk_en;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]configuration_vector;
  input [4:0]phyaddr;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  input speed_is_10_100;
  input speed_is_100;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
endmodule
