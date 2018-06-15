#注意，硬件上有些引脚是低电平有效，要分清楚

#CP端
set_property  PACKAGE_PIN H17   [get_ports { CP }]; 
set_property IOSTANDARD LVCMOS33 [get_ports CP];

#CLR，提前声明让清零端为非时钟端
set_property PACKAGE_PIN E3 [get_ports {CLR}];
set_property IOSTANDARD LVCMOS33 [get_ports {CLR}];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLR];

#Load端，当为0时装载信息
set_property  PACKAGE_PIN H17   [get_ports { LD }]; 
set_property IOSTANDARD LVCMOS33 [get_ports LD];

#M端，当M为1时加一计数，否则减一计数
set_property  PACKAGE_PIN H17   [get_ports { M }]; 
set_property IOSTANDARD LVCMOS33 [get_ports M];

#D3 D2 D1 D0
set_property  PACKAGE_PIN H17   [get_ports { D3 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports D3];
set_property  PACKAGE_PIN H17   [get_ports { D2 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports D2];
set_property  PACKAGE_PIN H17   [get_ports { D1 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports D1];
set_property  PACKAGE_PIN H17   [get_ports { D0 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports D0];
#Q3 Q2 Q1 Q0 输出端
set_property  PACKAGE_PIN H17   [get_ports { Q3 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q3];
set_property  PACKAGE_PIN H17   [get_ports { Q2 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q2];
set_property  PACKAGE_PIN H17   [get_ports { Q1 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q1];
set_property  PACKAGE_PIN H17   [get_ports { Q0 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q0];

#Qcc 输出端
set_property  PACKAGE_PIN H17   [get_ports { Qcc }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Qcc];