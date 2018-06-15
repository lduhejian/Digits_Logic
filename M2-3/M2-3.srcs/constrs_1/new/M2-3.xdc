#注意，硬件中有些引脚是低电平有效！
#输入X
set_property PACKAGE_PIN R3 [get_ports X[0]]
set_property IOSTANDARD LVCMOS33 [get_ports X[0]]
set_property PACKAGE_PIN P3 [get_ports X[1]]
set_property IOSTANDARD LVCMOS33 [get_ports X[1]]
set_property PACKAGE_PIN P4 [get_ports X[2]]
set_property IOSTANDARD LVCMOS33 [get_ports X[2]]

#输入Y
set_property PACKAGE_PIN V2 [get_ports Y[0]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[0]]
set_property PACKAGE_PIN U2 [get_ports Y[1]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[1]]
set_property PACKAGE_PIN T3 [get_ports Y[2]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[2]]

#输出
set_property PACKAGE_PIN R8 [get_ports F1]
set_property IOSTANDARD LVCMOS33 [get_ports F1]
set_property PACKAGE_PIN V9 [get_ports F2]
set_property IOSTANDARD LVCMOS33 [get_ports F2]
set_property PACKAGE_PIN T8 [get_ports F3]
set_property IOSTANDARD LVCMOS33 [get_ports F3]
