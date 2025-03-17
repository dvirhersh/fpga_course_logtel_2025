--------------------------------------------------------------------------------
-- File       : gig_ethernet_pcs_pma_0_block.vhd
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

library gig_ethernet_pcs_pma_v16_2_21;
use gig_ethernet_pcs_pma_v16_2_21.all;

--------------------------------------------------------------------------------
-- The entity declaration for the Core Block Level wrapper.
--------------------------------------------------------------------------------

entity gig_ethernet_pcs_pma_0_block is
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
end gig_ethernet_pcs_pma_0_block;


architecture block_level of gig_ethernet_pcs_pma_0_block is



   -----------------------------------------------------------------------------
   -- Component Declaration for the SGMII adaptation module
   -----------------------------------------------------------------------------
   component gig_ethernet_pcs_pma_0_sgmii_adapt
      port(

      -- Asynchronous Reset
      reset                : in std_logic;                     -- Asynchronous reset for entire core.

      -- Clock derivation
      -------------------

      clk125m              : in std_logic;                     -- Reference 125MHz clock.
      sgmii_clk_r          : out std_logic;                    -- Clock to client MAC (125MHz, 12.5MHz or 1.25MHz) (to rising edge DDR).
      sgmii_clk_f          : out std_logic;                    -- Clock to client MAC (125MHz, 12.5MHz or 1.25MHz) (to falling edge DDR).

      sgmii_clk_en         : out std_logic;                    -- Clock enable to client MAC (125MHz, 12.5MHz or 1.25MHz).

      -- GMII Tx
      ----------
      gmii_txd_in          : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en_in        : in std_logic;                     -- Transmit data valid signal from client MAC.
      gmii_tx_er_in        : in std_logic;                     -- Transmit error signal from client MAC.
      gmii_rxd_out         : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv_out       : out std_logic;                    -- Received data valid signal to client MAC.
      gmii_rx_er_out       : out std_logic;                    -- Received error signal to client MAC.

      -- GMII Rx
      ----------
      gmii_rxd_in          : in std_logic_vector(7 downto 0);  -- Received Data to client MAC.
      gmii_rx_dv_in        : in std_logic;                     -- Received data valid signal to client MAC.
      gmii_rx_er_in        : in std_logic;                     -- Received error signal to client MAC.
      gmii_txd_out         : out std_logic_vector(7 downto 0); -- Transmit data from client MAC.
      gmii_tx_en_out       : out std_logic;                    -- Transmit data valid signal from client MAC.
      gmii_tx_er_out       : out std_logic;                    -- Transmit error signal from client MAC.

      -- Speed Control
      ----------------
      speed_is_10_100      : in std_logic;                     -- Core should operate at either 10Mbps or 100Mbps speeds
      speed_is_100         : in std_logic                      -- Core should operate at 100Mbps speed

      );
   end component;



  ------------------------------------------------------------------------------
  -- Component Declaration for the 1000BASE-X PCS/PMA sublayer core.
  ------------------------------------------------------------------------------
   component gig_ethernet_pcs_pma_v16_2_21
      generic (
         C_ELABORATION_TRANSIENT_DIR : string := "";
         C_COMPONENT_NAME            : string := "";
         C_FAMILY                    : string := "virtex7";
         C_IS_SGMII                  : boolean := false;
         C_USE_TRANSCEIVER           : boolean := true;
         C_USE_TBI                   : boolean := false;
         C_USE_LVDS                  : boolean := false;
         C_HAS_AN                    : boolean := true;
         C_HAS_MDIO                  : boolean := true;
         C_SGMII_PHY_MODE            : boolean := false;
         C_DYNAMIC_SWITCHING         : boolean := false;
         C_SGMII_FABRIC_BUFFER       : boolean := false
      );
      port(

      -- TBI Interface (PCS <=> PMA)
      ------------------------------

      rx_gt_nominal_latency : in std_logic_vector(15 downto 0) := "0000000011001000";
      speed_is_10_100       : in std_logic := '0';                 
      speed_is_100          : in std_logic := '0'; 
      gtx_clk              : in std_logic;                     -- 125MHz Reference clock.
      tx_code_group        : out std_logic_vector(9 downto 0); -- The ten bit parallel transmit data presented to the PMA.
      loc_ref              : out std_logic;                    -- Causes the TBI clock recovery to lock to PMA_TX_CLK.
      ewrap                : out std_logic;                    -- This instructs the PMA to loopback the data.
      rx_code_group0       : in std_logic_vector(9 downto 0);  -- The ten bit parallel received on PMA_RX_CLK0.
      rx_code_group1       : in std_logic_vector(9 downto 0);  -- The ten bit parallel received on PMA_RX_CLK1.
      pma_rx_clk0          : in std_logic;                     -- 62.5MHz rx clock used to reclock even code-groups.
      pma_rx_clk1          : in std_logic;                     -- 62.5MHz rx clock used to reclock odd code-groups.
      en_cdet              : out std_logic;                    -- Enables the PMA sublayer to perform the code-group alignment function on a comma.

      -- GMII Interface (client MAC <=> PCS)
      --------------------------------------

      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: MDIO Interface
      -----------------------------

      mdc                  : in    std_logic;                  -- Management Data Clock
      mdio_in              : in    std_logic;                  -- Management Data In
      mdio_out             : out   std_logic;                  -- Management Data Out
      mdio_tri             : out   std_logic;                  -- Management Data Tristate
      phyad                : in std_logic_vector(4 downto 0);  -- Port address to for MDIO to recognise.
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
      configuration_valid  : in std_logic;                     -- Validation signal for Config vector.

      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
      an_adv_config_val    : in std_logic;                     -- Validation signal for AN ADV
      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0
      link_timer_value     : in std_logic_vector(9 downto 0);  -- Programmable Auto-Negotiation Link Timer Control

      -- General IO's
      ---------------
      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
      signal_detect        : in std_logic; -- Input from PMD to indicate presence of optical input.
      reset_done           : in std_logic 
      );

   end component;


   -----------------------------------------------------------------------------
   -- Component declaration for the reset synchroniser
   -----------------------------------------------------------------------------
   component gig_ethernet_pcs_pma_0_reset_sync
   port (
      reset_in             : in  std_logic;                    -- Active high asynchronous reset
      clk                  : in  std_logic;                    -- clock to be sync'ed to
      reset_out            : out std_logic                     -- "Synchronised" reset signal
   );
   end component;

  ------------------------------------------------------------------------------
  -- internal signals used in this Block level wrapper.
  ------------------------------------------------------------------------------

  -- GMII signals routed between core and SGMII Adaptation Module
  signal gmii_txd_int      : std_logic_vector(7 downto 0);     -- Internal gmii_txd signal (between core and SGMII adaptation module).
  signal gmii_tx_en_int    : std_logic;                        -- Internal gmii_tx_en signal (between core and SGMII adaptation module).
  signal gmii_tx_er_int    : std_logic;                        -- Internal gmii_tx_er signal (between core and SGMII adaptation module).
  signal gmii_rxd_int      : std_logic_vector(7 downto 0);     -- Internal gmii_rxd signal (between core and SGMII adaptation module).
  signal gmii_rx_dv_int    : std_logic;                        -- Internal gmii_rx_dv signal (between core and SGMII adaptation module).
  signal gmii_rx_er_int    : std_logic;                        -- Internal gmii_rx_er signal (between core and SGMII adaptation module).


  -- TBI signals
  signal tx_code_group_int : std_logic_vector(9 downto 0);     -- Internal tx_code_group signal.
  signal rx_code_group_delay:std_logic_vector(9 downto 0);     -- rx_code_group is routed through delay elements
  signal rx_code_group0_iff: std_logic_vector(9 downto 0);     -- rx_code_group registered in IOBs on PMA_RX_CLK0.
  signal rx_code_group1_iff: std_logic_vector(9 downto 0);     -- rx_code_group registered in IOBs on PMA_RX_CLK1.
  signal rx_code_group0_reg: std_logic_vector(9 downto 0);     -- rx_code_group0 reclocked onto regional clock..
  signal rx_code_group1_reg: std_logic_vector(9 downto 0);     -- rx_code_group1 reclocked onto regional clock..
  signal pma_rx_clk0_bufio : std_logic;                        -- pma_rx_clk0 routed through a BUFIO.
  signal pma_rx_clk0_bufr  : std_logic;                        -- pma_rx_clk0 routed through a BUFR.
  signal ewrap_int         : std_logic;                        -- Internal ewrap signal.
  signal en_cdet_int       : std_logic;                        -- Internal en_cdet signal.
 
  signal idelayctrl_reset_sync : std_logic;                    -- Used to create a reset pulse in the IDELAYCTRL refclk domain.
  signal idelay_reset_cnt      : std_logic_vector(3 downto 0); -- Counter to create a long IDELAYCTRL reset pulse.
  signal idelayctrl_reset      : std_logic;                    -- The reset pulse for the IDELAYCTRL.

  signal mdio_o_int : std_logic;
  signal mdio_t_int : std_logic;

begin
 mdio_o      <=  mdio_o_int;
 mdio_t      <=  mdio_t_int ;
  ------------------------------------------------------------------------------
  -- IODELAYS are used by both the GMII and the TBI interface.  This
  -- IDELAYCTRL is shared between all IODELAY elements in the design.

  -- REFCLK on the IDELAYCTRL must be driven from a 200MHz clock.  In
  -- this example, it is provided by an input clock of the correct
  -- frequency.  Alternatively, it could be derived in a DCM.
  ------------------------------------------------------------------------------




   -- Instantiate the IDELAY Controller.
   dlyctrl : IDELAYCTRL 
  generic map(
   SIM_DEVICE => "7SERIES" )

   port map (
       RDY    => open,
       REFCLK => refclk,
       RST    => idelayctrl_reset
       );


   -- Create a synchronous reset in the IDELAYCTRL refclk clock domain.
   idelayctrl_reset_gen : gig_ethernet_pcs_pma_0_reset_sync
   port map(
      clk               => refclk,
      reset_in          => reset,
      reset_out         => idelayctrl_reset_sync
   );


   -- Reset circuitry for the IDELAYCTRL reset.

   -- The IDELAYCTRL must experience a pulse which is at least 50 ns in
   -- duration.  This is ten clock cycles of the 200MHz refclk.  Here we
   -- drive the reset pulse for 12 clock cycles.
   process (refclk)
   begin
      if refclk'event and refclk = '1' then
         if idelayctrl_reset_sync = '1' then
            idelay_reset_cnt <= "0000";
            idelayctrl_reset <= '1';
         else
            idelayctrl_reset <= '1';
            case idelay_reset_cnt is
            when "0000"  => idelay_reset_cnt <= "0001";
            when "0001"  => idelay_reset_cnt <= "0010";
            when "0010"  => idelay_reset_cnt <= "0011";
            when "0011"  => idelay_reset_cnt <= "0100";
            when "0100"  => idelay_reset_cnt <= "0101";
            when "0101"  => idelay_reset_cnt <= "0110";
            when "0110"  => idelay_reset_cnt <= "0111";
            when "0111"  => idelay_reset_cnt <= "1000";
            when "1000"  => idelay_reset_cnt <= "1001";
            when "1001"  => idelay_reset_cnt <= "1010";
            when "1010"  => idelay_reset_cnt <= "1011";
            when "1011"  => idelay_reset_cnt <= "1100";
            when "1100"  => idelay_reset_cnt <= "1101";
            when "1101"  => idelay_reset_cnt <= "1110";
            when others  => idelay_reset_cnt <= "1110";
                            idelayctrl_reset <= '0';
            end case;
         end if;
      end if;
   end process;


  ------------------------------------------------------------------------------
  -- Component Instantiation for the SGMII adaptation module
  ------------------------------------------------------------------------------

  sgmii_logic : gig_ethernet_pcs_pma_0_sgmii_adapt
  port map (

     reset                => reset,
     clk125m              => gtx_clk,
     sgmii_clk_r          => sgmii_clk_r,
     sgmii_clk_f          => sgmii_clk_f,
     sgmii_clk_en         => sgmii_clk_en,
     gmii_txd_in          => gmii_txd,
     gmii_tx_en_in        => gmii_tx_en,
     gmii_tx_er_in        => gmii_tx_er,
     gmii_rxd_in          => gmii_rxd_int,
     gmii_rx_dv_in        => gmii_rx_dv_int,
     gmii_rx_er_in        => gmii_rx_er_int,
     gmii_txd_out         => gmii_txd_int,
     gmii_tx_en_out       => gmii_tx_en_int,
     gmii_tx_er_out       => gmii_tx_er_int,
     gmii_rxd_out         => gmii_rxd,
     gmii_rx_dv_out       => gmii_rx_dv,
     gmii_rx_er_out       => gmii_rx_er,
     speed_is_10_100      => speed_is_10_100,
     speed_is_100         => speed_is_100
     );



  ------------------------------------------------------------------------------
  -- Instantiate the core
  ------------------------------------------------------------------------------

  gig_ethernet_pcs_pma_0_core : gig_ethernet_pcs_pma_v16_2_21
    generic map (
      C_ELABORATION_TRANSIENT_DIR => "BlankString",
      C_COMPONENT_NAME            => "gig_ethernet_pcs_pma_0",
      C_FAMILY                    => "artix7",
      C_IS_SGMII                  => true,
      C_USE_TRANSCEIVER           => false,
      C_USE_TBI                   => true,
      C_USE_LVDS                  => false,
      C_HAS_AN                    => true,
      C_HAS_MDIO                  => true,
      C_SGMII_PHY_MODE            => false,
      C_DYNAMIC_SWITCHING         => false,
      C_SGMII_FABRIC_BUFFER       => true
    )
    port map (
      gtx_clk              => gtx_clk,
      tx_code_group        => tx_code_group_int,
      loc_ref              => loc_ref,
      ewrap                => ewrap_int,
      --speed bits required only in 1588 mode with MDIO for latency register re-load on speed change,
      --in other modes it can be tied to zero
      speed_is_10_100      => '0',
      speed_is_100         => '0',
      rx_gt_nominal_latency => "0000000011001000",      
      rx_code_group0       => rx_code_group0_reg,
      rx_code_group1       => rx_code_group1_reg,
      pma_rx_clk0          => pma_rx_clk0_bufr,
      pma_rx_clk1          => pma_rx_clk0_bufr,
      en_cdet              => en_cdet_int,
      gmii_txd             => gmii_txd_int,
      gmii_tx_en           => gmii_tx_en_int,
      gmii_tx_er           => gmii_tx_er_int,
      gmii_rxd             => gmii_rxd_int,
      gmii_rx_dv           => gmii_rx_dv_int,
      gmii_rx_er           => gmii_rx_er_int,
      gmii_isolate         => gmii_isolate,
      mdc                  => mdc,
      mdio_in              => mdio_i,
      mdio_out             => mdio_o_int,
      mdio_tri             => mdio_t_int,
      phyad                => phyad,
      configuration_vector => configuration_vector,
      configuration_valid  => configuration_valid,
      an_interrupt         => an_interrupt,
      an_adv_config_vector => an_adv_config_vector,
      an_adv_config_val    => an_adv_config_val,
      an_restart_config    => an_restart_config,
      link_timer_value     => link_timer_value,
      status_vector        => status_vector,
      reset                => reset,
      signal_detect        => signal_detect,
      reset_done           => '1'

      );


  ------------------------------------------------------------------------------
  -- TBI Transmitter Clock Management : derive pma_tx_clk from gtx_clk
  ------------------------------------------------------------------------------

  -- Instantiate a DDR output register.  This is a good way to drive
  -- pma_tx_clk since the clock-to-PAD delay will be the same as that
  -- for data driven from IOB Ouput flip-flops eg tx_code_group[9:0].
  -- This is set to produce an inverted clock w.r.t. gtx_clk so
  -- that the rising edge is centralised within the tx_code_group[9:0]
  -- valid window.

  pma_tx_clk_ddr_iob : ODDR
  port map(
      Q  => pma_tx_clk,

      C  => gtx_clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      R  => '0',
      S  => '0'
    );



   -----------------------------------------------------------------------------
   -- TBI Transmitter Logic : drive TX signals through IOBs onto TBI
   -----------------------------------------------------------------------------

   -- Infer IOB Output flip-flops.
   output_tx_ffs : process (gtx_clk)
   begin
      if gtx_clk'event and gtx_clk = '1' then
         tx_code_group <= tx_code_group_int;
      end if;
   end process output_tx_ffs;


   -----------------------------------------------------------------------------
   -- TBI Control Signals : drive TBI control through IOBs signals onto
   -- TBI
   -----------------------------------------------------------------------------

   -- Infer IOB Output flip-flops.
   output_ffs : process (gtx_clk)
   begin
      if gtx_clk'event and gtx_clk = '1' then
         ewrap   <= ewrap_int;
         en_cdet <= en_cdet_int;

      end if;
   end process output_ffs;


  ------------------------------------------------------------------------------
  -- TBI Receiver Clock Management : receive PMA_RX_CLK0/PMA_RX_CLK1
  -- through IOBs from TBI
  ------------------------------------------------------------------------------

   -- Route pma_rx_clk0 from PAD through a BUFIO Buffer
   receive_pma_rx_clk0 : BUFIO
     port map (I   => pma_rx_clk0,
               O   => pma_rx_clk0_bufio);


   -- Route pma_rx_clk0 through a BUFR onto regional clock routing
   drive_pma_rx_clk0 : BUFR
     port map (I   => pma_rx_clk0,
               CE  => '1',
               CLR => '0',
               O   => pma_rx_clk0_bufr);

  ------------------------------------------------------------------------------
  -- TBI Receiver Logic : receive RX signals through IOBs from TBI
  ------------------------------------------------------------------------------

   tbi_rx_data_bus: for I in 9 downto 0 generate
   begin

     -- An IDELAY is added to the data inputs on Virtex-5/6 devices.  The
     -- tap delay values can be adjusted for PCB routing deskew.

     delay_tbi_rx_data : IODELAYE1
      generic map (
          IDELAY_TYPE  => "FIXED",
          IDELAY_VALUE => 0
          )
      port map (
          IDATAIN      => rx_code_group(I),
          ODATAIN      => '0',
          DATAOUT      => rx_code_group_delay(I),
          DATAIN       => '0',
          CNTVALUEIN   => "00000",
          CNTVALUEOUT  => open,
          CLKIN        => '0',
          CINVCTRL     => '0',
          T            => '1',
          C            => '0',
          CE           => '0',
          INC          => '0',
          RST          => '0'
          );


     -- Instantiate Double-Data_Rate Registers synchronous to pma_rx_clk0.
     rx_code_group_ddr : IDDR
       generic map (
         DDR_CLK_EDGE => "SAME_EDGE")
       port map (
         Q1 => rx_code_group0_iff(I),
         Q2 => rx_code_group1_iff(I),
         C  => pma_rx_clk0_bufio,
         CE => '1',
         D  => rx_code_group_delay(I),
         R  => '0',
         S  => '0');

   end generate;



   -- Reclock onto regional clock routing

   input_pma_rx_clk0: process (pma_rx_clk0_bufr)
   begin
      if pma_rx_clk0_bufr'event and pma_rx_clk0_bufr = '1' then
         rx_code_group0_reg <= rx_code_group0_iff;
         rx_code_group1_reg <= rx_code_group1_iff;
      end if;
   end process input_pma_rx_clk0;

end block_level;

