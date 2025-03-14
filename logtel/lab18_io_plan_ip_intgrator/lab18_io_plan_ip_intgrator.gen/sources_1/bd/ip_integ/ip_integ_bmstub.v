// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module ip_integ (
  BTN_0,
  CLK_0,
  LED_0,
  RGB1_Blue_0,
  RGB1_Green_0,
  RGB1_Red_0,
  RGB2_Blue_0,
  RGB2_Green_0,
  RGB2_Red_0,
  SSEG_AN_0,
  SSEG_CA_0,
  SW_0,
  UART_TXD_0,
  ampPWM_0,
  ampSD_0,
  micClk_0,
  micData_0,
  micLRSel_0
);

  (* X_INTERFACE_IGNORE = "true" *)
  input [4:0]BTN_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ip_integ_CLK_0, INSERT_VIP 0" *)
  input CLK_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]LED_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output RGB1_Blue_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output RGB1_Green_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output RGB1_Red_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output RGB2_Blue_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output RGB2_Green_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output RGB2_Red_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]SSEG_AN_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]SSEG_CA_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]SW_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_TXD_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output ampPWM_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output ampSD_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output micClk_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input micData_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output micLRSel_0;

  // stub module has no contents

endmodule
