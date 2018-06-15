set_property  PACKAGE_PIN V10   [get_ports { X }]; 
set_property IOSTANDARD LVCMOS33 [get_ports X];


set_property PACKAGE_PIN N17  [get_ports { CP }]; 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CP]
set_property IOSTANDARD LVCMOS33 [get_ports CP];

set_property PACKAGE_PIN H17  [get_ports { Z }];
set_property IOSTANDARD LVCMOS33 [get_ports Z];

#״̬
set_property PACKAGE_PIN H17  [get_ports { ST[2] }];
set_property IOSTANDARD LVCMOS33 [get_ports ST[2]];

set_property PACKAGE_PIN H17  [get_ports { ST[1] }];
set_property IOSTANDARD LVCMOS33 [get_ports ST[1]];

set_property PACKAGE_PIN H17  [get_ports { ST[0] }];
set_property IOSTANDARD LVCMOS33 [get_ports ST[0]];