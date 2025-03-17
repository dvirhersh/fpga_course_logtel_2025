--------------------------------------------------------------------------------
-- File       : gig_ethernet_pcs_pma_0.vhd
-- Author     : AMD Inc.
--------------------------------------------------------------------------------
-- (c) Copyright 2002-2008 AMD, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
-- Description: This Core Block Level wrapper instantiates IOB flip-flops
--              and input/output buffers on the TBI interface of the
--              core.
--
--              All of the clock circuitry required for a single
--              instance of the core is included.
--
--              The SGMII adaptation module is provided to convert
--              between 1Gbps and 10/100 Mbps rates.  This is connected
--              to the MAC side of the core to provide a GMII style
--              interface.  When the core is running at 1Gbps speeds,
--              the GMII (8-bitdata pathway) is used at a clock
--              frequency of 125MHz.  When the core is running at
--              100Mbps, a clock frequency of 12.5MHz is used.  When
--              running at 100Mbps speeds, a clock frequency of 1.25MHz
--              is used.
--
--           -----------------------------------------------------
--           |                 Core Block Level wrapper          |
--           |                                                   |
--           |                  -----------------------          |
--           |                  |        Core         |          |
--           |                  |                     |          |
--           |                  |                     |          |
--           |    ---------     |                     |          |
--       ----|    |       |     | GMII            TBI |--------------->
--           |    | SGMII |     | Tx              Tx  |          |
--           ---->| Adapt |---->|                     |          |
--           |    | Module|     |                     |    TBI   |
--           |    |       |     |                     |    IOBs  |
--           |    |       |     |                     |          |
--           |    |       |     |                     |          |
--           |    |       |     | GMII            TBI |          |
--       <---|    |       |     | Rx              Rx  |<---------------
--           |    |       |     |                     |          |
--           -----|       |<----|                     |          |
--           |    |       |     |                     |          |
--           |    ---------     ----------------------           |
--           |                                                   |
--       -----------------------------------------------------
--


library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

library gig_ethernet_pcs_pma_v16_2_21;
use gig_ethernet_pcs_pma_v16_2_21.all;

--------------------------------------------------------------------------------
-- The entity declaration for the Core Block Level wrapper.
--------------------------------------------------------------------------------

entity gig_ethernet_pcs_pma_0 is
      port(
      -- TBI Interface (PCS <=> PMA)
      ------------------------------

      gtx_clk              : in std_logic;                     -- Reference 125MHz clock.
      refclk               : in std_logic;                     -- Reference 125MHz clock.
      tx_code_group        : out std_logic_vector(9 downto 0); -- The ten bit parallel transmit data presented to the PMA.
      pma_tx_clk           : out std_logic;                    -- The 125 MHz transmit code group clock.
      loc_ref              : out std_logic;                    -- Causes the SERDES clock recovery to lock to PMA_TX_CLK.
      ewrap                : out std_logic;                    -- This instructs the PMA to loopback the data.
      rx_code_group        : in std_logic_vector(9 downto 0);  -- The ten bit parallel received data from the PMA.
      pma_rx_clk0          : in std_logic;                     -- 62.5MHz rx clock used to reclock even code-groups.
      en_cdet              : out std_logic;                    -- Enables the PMA sublayer to perform the code-group alignment function on a comma.

      -- GMII Interface (client MAC <=> PCS)
      --------------------------------------

      sgmii_clk_r            : out std_logic;                    -- Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      sgmii_clk_f            : out std_logic;                    -- Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      sgmii_clk_en         : out std_logic;                    -- Clock enable for client MAC

      gmii_txd             : in  std_logic_vector(7 downto 0); -- Transmit data from client MAC.
      gmii_tx_en           : in  std_logic;                    -- Transmit control signal from client MAC.
      gmii_tx_er           : in  std_logic;                    -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: MDIO Interface
      -----------------------------

      mdc                  : in  std_logic;                    -- Management Data Clock
      mdio_i               : in  std_logic;                    -- Management Data In
      mdio_o               : out std_logic;                    -- Management Data Out
      mdio_t               : out std_logic;                    -- Management Data Tristate
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
      phyaddr              : in std_logic_vector(4 downto 0);  
      configuration_valid  : in std_logic;                     -- Validation signal for Config vector.

      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
      an_adv_config_val    : in std_logic;                     -- Validation signal for AN ADV
      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0

      -- Speed Control
      ----------------
      speed_is_10_100      : in std_logic;                     -- Core should operate at either 10Mbps or 100Mbps speeds
      speed_is_100         : in std_logic;                     -- Core should operate at 100Mbps speed

      -- General IO's
      ---------------

      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
      signal_detect        : in std_logic                      -- Input from PMD to indicate presence of optical input.
      );
end gig_ethernet_pcs_pma_0;


architecture block_level of gig_ethernet_pcs_pma_0 is


component gig_ethernet_pcs_pma_0_block
      port(
      -- TBI Interface (PCS <=> PMA)
      ------------------------------

      gtx_clk              : in std_logic;                     -- Reference 125MHz clock.
      refclk              : in std_logic;                     -- Reference 125MHz clock.
      tx_code_group        : out std_logic_vector(9 downto 0); -- The ten bit parallel transmit data presented to the PMA.
      pma_tx_clk           : out std_logic;                    -- The 125 MHz transmit code group clock.
      loc_ref              : out std_logic;                    -- Causes the SERDES clock recovery to lock to PMA_TX_CLK.
      ewrap                : out std_logic;                    -- This instructs the PMA to loopback the data.
      rx_code_group        : in std_logic_vector(9 downto 0);  -- The ten bit parallel received data from the PMA.
      pma_rx_clk0          : in std_logic;                     -- 62.5MHz rx clock used to reclock even code-groups.
      en_cdet              : out std_logic;                    -- Enables the PMA sublayer to perform the code-group alignment function on a comma.

      -- GMII Interface (client MAC <=> PCS)
      --------------------------------------

      sgmii_clk_r            : out std_logic;                    -- Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      sgmii_clk_f            : out std_logic;                    -- Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      sgmii_clk_en         : out std_logic;                    -- Clock enable for client MAC

      gmii_txd             : in  std_logic_vector(7 downto 0); -- Transmit data from client MAC.
      gmii_tx_en           : in  std_logic;                    -- Transmit control signal from client MAC.
      gmii_tx_er           : in  std_logic;                    -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: MDIO Interface
      -----------------------------

      mdc                  : in  std_logic;                    -- Management Data Clock
      mdio_i               : in  std_logic;                    -- Management Data In
      mdio_o               : out std_logic;                    -- Management Data Out
      mdio_t               : out std_logic;                    -- Management Data Tristate
      phyad                : in std_logic_vector(4 downto 0);  -- Port address for MDIO.
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
      configuration_valid  : in std_logic;                     -- Validation signal for Config vector.

      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
      an_adv_config_val    : in std_logic;                     -- Validation signal for AN ADV
      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0
      link_timer_value     : in std_logic_vector(9 downto 0);  -- Programmable Auto-Negotiation Link Timer Control

      -- Speed Control
      ----------------
      speed_is_10_100      : in std_logic;                     -- Core should operate at either 10Mbps or 100Mbps speeds
      speed_is_100         : in std_logic;                     -- Core should operate at 100Mbps speed

      -- General IO's
      ---------------

      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
      signal_detect        : in std_logic                      -- Input from PMD to indicate presence of optical input.
      );
  end component;




ATTRIBUTE CORE_GENERATION_INFO : STRING;
ATTRIBUTE CORE_GENERATION_INFO OF block_level : ARCHITECTURE IS "gig_ethernet_pcs_pma_0,gig_ethernet_pcs_pma_v16_2_21,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=16.2,x_ipCoreRevision=21,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,c_elaboration_transient_dir=.,c_component_name=gig_ethernet_pcs_pma_0,c_family=artix7,c_architecture=artix7,c_is_sgmii=true,c_enable_async_sgmii=false,c_enable_async_lvds=false,c_enable_async_lvds_rx_only=false,c_use_transceiver=false,c_use_tbi=true,c_is_2_5g=false,c_use_lvds=false,c_has_an=true,characterization=false,c_has_mdio=true,c_has_axil=false,c_has_ext_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_sgmii_fabric_buffer=true,c_1588=0,gt_rx_byte_width=1,C_EMAC_IF_TEMAC=true,EXAMPLE_SIMULATION=0,c_support_level=false,c_RxNibbleBitslice0Used=false,c_InstantiateBitslice0=false,c_tx_in_upper_nibble=1,c_TxLane0_Placement=DIFF_PAIR_0,c_TxLane1_Placement=DIFF_PAIR_1,c_RxLane0_Placement=DIFF_PAIR_0,c_RxLane1_Placement=DIFF_PAIR_1,c_sub_core_name=gig_ethernet_pcs_pma_0_gt,c_transceiver_type=GTPE2,c_gt_type=GTH,c_rx_gmii_clk_src=TXOUTCLK,c_transceivercontrol=false,c_gtinex=false,c_xdevicefamily=xc7a100t,c_clock_selection=Sync,c_gt_dmonitorout_width=15,c_gt_drpaddr_width=9,c_gt_txdiffctrl_width=4,c_gt_rxmonitorout_width=7,c_num_of_lanes=1,c_refclkrate=125,c_drpclkrate=50.0,c_gt_loc=X0Y0,c_refclk_src=clk0,c_enable_tx_userclk_reset_port=false,c_8_or_9_family=false,VERSAL_GT_BOARD_FLOW=0}";
ATTRIBUTE X_CORE_INFO : STRING;
ATTRIBUTE X_CORE_INFO OF block_level : ARCHITECTURE IS "gig_ethernet_pcs_pma_v16_2_21,Vivado 2024.2";


  signal link_timer_value     : std_logic_vector(9 downto 0);  -- Programmable Auto-Negotiation Link Timer Control

begin


  link_timer_value <= "0000110010" ;

   U0 : gig_ethernet_pcs_pma_0_block
      port map(
      -- TBI Interface (PCS <=> PMA)
      ------------------------------

      gtx_clk              => gtx_clk,
      refclk               => refclk,
      tx_code_group        => tx_code_group,
      pma_tx_clk           => pma_tx_clk,
      loc_ref              => loc_ref,
      ewrap                => ewrap,
      rx_code_group        => rx_code_group,
      pma_rx_clk0          => pma_rx_clk0,
      en_cdet              => en_cdet,

      -- GMII Interface (client MAC <=> PCS)
      --------------------------------------

      sgmii_clk_r            => sgmii_clk_r,
      sgmii_clk_f            => sgmii_clk_f,
      sgmii_clk_en         => sgmii_clk_en,

      gmii_txd             => gmii_txd,
      gmii_tx_en           => gmii_tx_en,
      gmii_tx_er           => gmii_tx_er,
      gmii_rxd             => gmii_rxd,
      gmii_rx_dv           => gmii_rx_dv,
      gmii_rx_er           => gmii_rx_er,
      gmii_isolate         => gmii_isolate,

      -- Management: MDIO Interface
      -----------------------------

      mdc                  => mdc,
      mdio_i               => mdio_i,
      mdio_o               => mdio_o,
      mdio_t               => mdio_t,
      phyad                => phyaddr,
      configuration_vector => configuration_vector,
      configuration_valid  => configuration_valid,

      an_interrupt         => an_interrupt,
      an_adv_config_vector => an_adv_config_vector,
      an_adv_config_val    => an_adv_config_val,
      an_restart_config    => an_restart_config,
      link_timer_value     => link_timer_value,

      -- Speed Control
      ----------------
      speed_is_10_100      => speed_is_10_100,
      speed_is_100         => speed_is_100,

      -- General IO's
      ---------------

      status_vector        => status_vector,
      reset                => reset,
      signal_detect        => signal_detect
      );


end block_level;

