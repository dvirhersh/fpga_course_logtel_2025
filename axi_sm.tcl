
reset_hw_axi [get_hw_axis hw_axi_1]
create_hw_axi_txn write_txn [get_hw_axis hw_axi_1] -address 80000000 -data {44444444_33333333_22222222_11111111} -len 4 -type write
run_hw_axi [get_hw_axi_txns write_txn]
create_hw_axi_txn read_txn [get_hw_axis hw_axi_1] -address 80000004 -len 4 -type read
run_hw_axi [get_hw_axi_txns read_txn]
reset_hw_axi [get_hw_axis hw_axi_1]
create_hw_axi_txn write_txn1 [get_hw_axis hw_axi_1] -address 800000A0 -data {12345678_12345678_87654321_87654321_12345678_12345678_87654321_87654321} -len 8 -type write
run_hw_axi [get_hw_axi_txns write_txn1]
create_hw_axi_txn read_txn1 [get_hw_axis hw_axi_1] -address 800000A0 -len 8 -type read
run_hw_axi [get_hw_axi_txns read_txn1]
reset_hw_axi [get_hw_axis hw_axi_1]

create_hw_axi_txn write_txn3 [get_hw_axis hw_axi_1] -address 44A00300 -data {00020002} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn3]

create_hw_axi_txn write_txn4 [get_hw_axis hw_axi_1] -address 44A00044 -data {06010200} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn4]

create_hw_axi_txn write_txn5 [get_hw_axis hw_axi_1] -address 44A00048 -data {06020100} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn5]

create_hw_axi_txn write_txn6 [get_hw_axis hw_axi_1] -address 44A0004C -data {00005E1E} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn6]
create_hw_axi_txn write_txn7 [get_hw_axis hw_axi_1] -address 44A00030 -data {00000001} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn7]
create_hw_axi_txn write_txn8 [get_hw_axis hw_axi_1] -address 44A00034 -data {00000002} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn8]
create_hw_axi_txn write_txn9 [get_hw_axis hw_axi_1] -address 44A00024 -data {00001000} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn9]
create_hw_axi_txn write_txn10 [get_hw_axis hw_axi_1] -address 44A00028 -data {00000001} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn10]
create_hw_axi_txn write_txn11 [get_hw_axis hw_axi_1] -address 44A00300 -data {00010001} -len 1 -type write
run_hw_axi [get_hw_axi_txns write_txn11]
reset_hw_axi [get_hw_axis hw_axi_1]
create_hw_axi_txn write_txn13 [get_hw_axis hw_axi_1] -address 80000000 -data {44444444_33333333_22222222_11111111} -len 4 -type write
run_hw_axi [get_hw_axi_txns write_txn13]
create_hw_axi_txn read_txn13 [get_hw_axis hw_axi_1] -address 80000004 -len 4 -type read
run_hw_axi [get_hw_axi_txns read_txn13]
reset_hw_axi [get_hw_axis hw_axi_1]
create_hw_axi_txn write_txn14 [get_hw_axis hw_axi_1] -address 800000A0 -data {12345678_12345678_87654321_87654321_12345678_12345678_87654321_87654321} -len 8 -type write
run_hw_axi [get_hw_axi_txns write_txn14]
create_hw_axi_txn read_txn14 [get_hw_axis hw_axi_1] -address 800000A0 -len 8 -type read
run_hw_axi [get_hw_axi_txns read_txn14]
create_hw_axi_txn read_txn15 [get_hw_axis hw_axi_1] -address 44A00200 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn15]
create_hw_axi_txn write_txn15 [get_hw_axis hw_axi_1] -address 80000000 -data {44444444_33333333_22222222_11111111} -len 4 -type write
run_hw_axi [get_hw_axi_txns write_txn15]
create_hw_axi_txn read_txn16 [get_hw_axis hw_axi_1] -address 44A00200 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn16]
create_hw_axi_txn write_txn16 [get_hw_axis hw_axi_1] -address 80000000 -data {44444444_33333333_22222222_11111111} -len 4 -type write
run_hw_axi [get_hw_axi_txns write_txn16]
create_hw_axi_txn read_txn17 [get_hw_axis hw_axi_1] -address 44A00200 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn17]
create_hw_axi_txn read_txn18 [get_hw_axis hw_axi_1] -address 44A00004 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn18]
create_hw_axi_txn read_txn19 [get_hw_axis hw_axi_1] -address 44A00004 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn19]
create_hw_axi_txn read_txn20 [get_hw_axis hw_axi_1] -address 44A00004 -len 1 -type read
run_hw_axi [get_hw_axi_txns read_txn20]