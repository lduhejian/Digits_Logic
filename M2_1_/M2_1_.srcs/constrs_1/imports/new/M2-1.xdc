#ע�⣬Ӳ������Щ�����ǵ͵�ƽ��Ч��Ҫ�����

#CP��
set_property  PACKAGE_PIN E3   [get_ports { CP }]; 
set_property IOSTANDARD LVCMOS33 [get_ports CP];

#CLR����ǰ�����������Ϊ��ʱ�Ӷ�
set_property PACKAGE_PIN N17 [get_ports {CLR}];
set_property IOSTANDARD LVCMOS33 [get_ports {CLR}];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLR];

#Load�ˣ���Ϊ0ʱװ����Ϣ
set_property  PACKAGE_PIN V10   [get_ports { LD }]; 
set_property IOSTANDARD LVCMOS33 [get_ports LD];

#M�ˣ���MΪ1ʱ��һ�����������һ����
set_property  PACKAGE_PIN U11   [get_ports { M }]; 
set_property IOSTANDARD LVCMOS33 [get_ports M];

#Q3 Q2 Q1 Q0 �����
set_property  PACKAGE_PIN T15   [get_ports { Q3 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q3];
set_property  PACKAGE_PIN V16   [get_ports { Q2 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q2];
set_property  PACKAGE_PIN U16   [get_ports { Q1 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q1];
set_property  PACKAGE_PIN U17   [get_ports { Q0 }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Q0];

#Qcc �����rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
set_property  PACKAGE_PIN H17   [get_ports { Qcc }]; 
set_property IOSTANDARD LVCMOS33 [get_ports Qcc];