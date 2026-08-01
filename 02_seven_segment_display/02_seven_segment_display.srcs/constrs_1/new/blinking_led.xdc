set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk [get_ports clk]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports led]