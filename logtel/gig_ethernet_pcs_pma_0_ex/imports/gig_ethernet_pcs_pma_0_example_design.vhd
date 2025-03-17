--------------------------------------------------------------------------------
-- File       : gig_ethernet_pcs_pma_0_example_design.vhd
-- Author     : AMD Inc.
--------------------------------------------------------------------------------
-- (c) Copyright 2002-2008 Advanced Micro Devices, Inc. All rights reserved.
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
-- 
-- 
--------------------------------------------------------------------------------
-- Description: This is the top level vhdl example design for the
--              Ethernet SGMII core.
--
--              This design example instantiates IOB flip-flops
--              and input/output buffers on the GMII.
--
--              Additionally, the I/O of the GMII-style interface is
--              provided with IOB flip-flops (infered) which enables
--              this example design to be implemented using the AMD
--              tools.
--
--           * Please refer to the Getting Started User Guide for
--             details of the example design file hierarchy.


library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;


--------------------------------------------------------------------------------
-- The entity declaration for the example design
--------------------------------------------------------------------------------

entity gig_ethernet_pcs_pma_0_example_design is
      port(

      -- 200MHz reference clock for the IDELAYCTRL
      refclk               : in std_logic;

      -- TBI Interface (PCS <=> PMA)
      ------------------------------

      gtx_clk              : in std_logic;                     -- Reference 125MHz clock.
      tx_code_group        : out std_logic_vector(9 downto 0); -- The ten bit parallel transmit data presented to the PMA.
      pma_tx_clk           : out std_logic;                    -- The 125 MHz transmit code group clock.
      loc_ref              : out std_logic;                    -- Causes the SERDES clock recovery to lock to PMA_TX_CLK.
      ewrap                : out std_logic;                    -- This instructs the PMA to loopback the data.
      rx_code_group        : in std_logic_vector(9 downto 0);  -- The ten bit parallel received data from the PMA.
      pma_rx_clk0          : in std_logic;                     -- 62.5MHz rx clock used to reclock even code-groups.
      en_cdet              : out std_logic;                    -- Enables the PMA sublayer to perform the code-group alignment function on a comma.

      -- GMII Interface (client MAC <=> PCS)
      --------------------------------------
      sgmii_clk            : out std_logic;                    -- Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      -- Management: MDIO Interface
      -----------------------------

      mdc                  : in    std_logic;                  -- Management Data Clock
      mdio_i               : in    std_logic;                  -- Management Data In
      mdio_o               : out   std_logic;                  -- Management Data Out
      mdio_t               : out   std_logic;                  -- Management Data Tristate
      phyaddr              : in std_logic_vector(4 downto 0);     
      configuration_valid  : in std_logic;                     -- Validation signal for Config vector.
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.

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
end gig_ethernet_pcs_pma_0_example_design;



architecture top_level of gig_ethernet_pcs_pma_0_example_design is
   attribute DowngradeIPIdentifiedWarnings: string;
   attribute DowngradeIPIdentifiedWarnings of top_level : architecture is "yes";



  ------------------------------------------------------------------------------
  -- Component Declaration for the Core Block (core wrapper).
  ------------------------------------------------------------------------------
   component gig_ethernet_pcs_pma_0
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
      phyaddr              : in std_logic_vector(4 downto 0);     
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
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

   end component;



  ------------------------------------------------------------------------------
  -- internal signals used in this top level example design.
  ------------------------------------------------------------------------------

  -- Signals used for the IDELAYCTRL
  signal refclk_bufg           : std_logic;                    -- Reference clock for IDELAYCTRL (200MHz) routed through a BUFG.


  -- Clock Signals
  signal gtx_clk_bufg      : std_logic;                        -- Route gtx_clk through a BUFG: onto Global Clock Routing


  -- GMII signals
  signal gmii_isolate      : std_logic;                        -- Internal gmii_isolate signal.
  signal gmii_txd_int      : std_logic_vector(7 downto 0);     -- Internal gmii_txd signal (between core and SGMII adaptation module).
  signal gmii_tx_en_int    : std_logic;                        -- Internal gmii_tx_en signal (between core and SGMII adaptation module).
  signal gmii_tx_er_int    : std_logic;                        -- Internal gmii_tx_er signal (between core and SGMII adaptation module).
  signal gmii_rxd_int      : std_logic_vector(7 downto 0);     -- Internal gmii_rxd signal (between core and SGMII adaptation module).
  signal gmii_rx_dv_int    : std_logic;                        -- Internal gmii_rx_dv signal (between core and SGMII adaptation module).
  signal gmii_rx_er_int    : std_logic;                        -- Internal gmii_rx_er signal (between core and SGMII adaptation module).




  -- Extra registers to ease IOB placement
  signal status_vector_int : std_logic_vector(15 downto 0);
  signal sgmii_clk_r : std_logic;
  signal sgmii_clk_f : std_logic;



begin

   -- Route refclk input through a BUFG
   bufg_refclk  : BUFG  port map (I => refclk, O => refclk_bufg);


 
  ------------------------------------------------------------------------------
  -- gtx_clk Clock Management.  This is the 125MHz reference source
  -- clock for the core.
  ------------------------------------------------------------------------------

   --  Route gtx_clk through a BUFG (onto Global Clock Routing)
   bufg_gtx_clk : BUFG
     port map (I => gtx_clk,
               O => gtx_clk_bufg);



  ------------------------------------------------------------------------------
  -- Instantiate the Core Block (core wrapper).
  ------------------------------------------------------------------------------

  core_wrapper : gig_ethernet_pcs_pma_0
    port map (

      gtx_clk              => gtx_clk_bufg,
      refclk               => refclk_bufg,
      tx_code_group        => tx_code_group,
      pma_tx_clk           => pma_tx_clk,
      loc_ref              => loc_ref,
      ewrap                => ewrap,
      rx_code_group        => rx_code_group,
      pma_rx_clk0          => pma_rx_clk0 ,
      en_cdet              => en_cdet,
      sgmii_clk_r            => sgmii_clk_r,
      sgmii_clk_f            => sgmii_clk_f,
      sgmii_clk_en         => open,
      gmii_txd             => gmii_txd_int,
      gmii_tx_en           => gmii_tx_en_int,
      gmii_tx_er           => gmii_tx_er_int,
      gmii_rxd             => gmii_rxd_int,
      gmii_rx_dv           => gmii_rx_dv_int,
      gmii_rx_er           => gmii_rx_er_int,
      gmii_isolate         => gmii_isolate,
      mdc                  => mdc,
      mdio_i               => mdio_i,
      mdio_o               => mdio_o,
      mdio_t               => mdio_t,
      phyaddr              => phyaddr,
      configuration_vector => configuration_vector,
      configuration_valid  => configuration_valid,
      an_interrupt         => an_interrupt,
      an_adv_config_vector => an_adv_config_vector,
      an_adv_config_val    => an_adv_config_val,
      an_restart_config    => an_restart_config,
      speed_is_10_100      => speed_is_10_100,
      speed_is_100         => speed_is_100,
      status_vector        => status_vector_int,
      reset                => reset,
      signal_detect        => signal_detect
      );


   -----------------------------------------------------------------------------
   -- GMII transmitter data logic
   -----------------------------------------------------------------------------


   -- Drive input GMII signals through IOB input flip-flops (inferred).
   process (gtx_clk_bufg)
   begin
      if gtx_clk_bufg'event and gtx_clk_bufg = '1' then
         gmii_txd_int    <= gmii_txd;
         gmii_tx_en_int  <= gmii_tx_en;
         gmii_tx_er_int  <= gmii_tx_er;

      end if;
   end process;



   -----------------------------------------------------------------------------
   -- GMII receiver data logic
   -----------------------------------------------------------------------------

   -- Drive input GMII signals through IOB output flip-flops (inferred).
   process (gtx_clk_bufg)
   begin
      if gtx_clk_bufg'event and gtx_clk_bufg = '1' then
         gmii_rxd    <= gmii_rxd_int;
         gmii_rx_dv  <= gmii_rx_dv_int;
         gmii_rx_er  <= gmii_rx_er_int;

      end if;
   end process;

   -----------------------------------------------------------------------------
   -- SGMII clock logic
   -----------------------------------------------------------------------------

   -- This instantiates a DDR output register.  This is a nice way to
   -- drive the output clock since the clock-to-PAD delay will the
   -- same as that of data driven from an IOB Ouput flip-flop.  This is
   -- set to produce an inverted clock w.r.t. gtx_clk_bufg so that clock
   -- rising edge appears in the centre of GMII data.
   sgclk_ddr_iob : ODDR
   port map(
      Q  => sgmii_clk,
      C  => gtx_clk_bufg,
      CE => '1',
      D1 => sgmii_clk_r,
      D2 => sgmii_clk_f,
      R  => '0',
      S  => '0'
   );


  ------------------------------------------------------------------------------
  -- Extra registers to ease IOB placement
  ------------------------------------------------------------------------------
   process (gtx_clk_bufg)
   begin
      if gtx_clk_bufg'event and gtx_clk_bufg = '1' then
         status_vector <= status_vector_int;
      end if;
   end process;


end top_level;

