// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module lab20_2_bd (
  clk_in1,
  aresetn,
  reset_1,
  tx,
  interrupt,
  rx
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1 CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_IN1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN lab20_2_bd_sys_clock, INSERT_VIP 0" *)
  input clk_in1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *)
  (* X_INTERFACE_MODE = "slave RST.ARESETN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_1 RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input reset_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output tx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.INTERRUPT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, SENSITIVITY EDGE_RISING, PortWidth 1" *)
  output interrupt;
  (* X_INTERFACE_IGNORE = "true" *)
  input rx;

  // stub module has no contents

endmodule
