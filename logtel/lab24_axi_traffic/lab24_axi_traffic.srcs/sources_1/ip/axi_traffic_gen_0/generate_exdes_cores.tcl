set coe_addr [lindex [get_property name [get_files addr.coe]] 0 ]
set coe_mask [lindex [get_property name [get_files mask.coe]] 0 ]
set coe_ctrl [lindex [get_property name [get_files ctrl.coe]] 0 ]
set coe_data [lindex [get_property name [get_files data.coe]] 0 ]

  
create_ip -name axi_bram_ctrl -vendor xilinx.com -library ip -module_name bram_memory
set_property -dict [list \
CONFIG.DATA_WIDTH            {32} \
CONFIG.MEM_DEPTH             {1024} \
CONFIG.ID_WIDTH              {1} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.BMG_INSTANCE          {INTERNAL}] [get_ips bram_memory]
create_ip -name axi_traffic_gen -vendor xilinx.com -library ip -module_name atg_lite_agent
set_property -dict [list \
CONFIG.C_ATG_MODE                 {AXI4-Lite} \
CONFIG.C_ATG_SYSTEM_INIT_ADDR_MIF $coe_addr \
CONFIG.C_ATG_SYSTEM_INIT_MASK_MIF $coe_mask \
CONFIG.C_ATG_SYSTEM_INIT_CTRL_MIF $coe_ctrl \
CONFIG.C_ATG_SYSTEM_INIT_DATA_MIF $coe_data \
CONFIG.C_ATG_SYSINIT_MODES        {System_Test} \
CONFIG.C_ATG_SYSTEM_TEST_MAX_CLKS {2147483647} \
CONFIG.C_ATG_SYSTEM_CMD_MAX_RETRY {2147483647} \
CONFIG.C_ATG_MIF_DATA_DEPTH       {256} \
CONFIG.C_ATG_SYSTEM_MAX_CHANNELS  {1} \
CONFIG.C_ATG_SYSTEM_CH1_HIGH      {0x0000FFFF} \
CONFIG.C_ATG_SYSTEM_CH1_LOW       {0x00000000}] [get_ips atg_lite_agent]


##set_property generate_synth_checkpoint false [get_files *.xci]
generate_target all [get_ips *]
