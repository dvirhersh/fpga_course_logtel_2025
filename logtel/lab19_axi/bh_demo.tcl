reset_hw_axi [get_hw_axis hw_axi_1]
create_hw_axi_txn write_txn [get_hw_axis hw_axi_1] -address c0000000 -data {44444444_33333333_22222222_11111111} -len 4 -type write
run_hw_axi [get_hw_axi_txns write_txn]
create_hw_axi_txn read_txn [get_hw_axis hw_axi_1] -address c0000000 -len 4 -type read
run_hw_axi [get_hw_axi_txns read_txn]