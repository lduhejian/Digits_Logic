# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.cache/wt [current_project]
set_property parent.project_path C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.srcs/sources_1/imports/new/Counter.v
  C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.srcs/sources_1/imports/Logical/divider.v
  C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.srcs/sources_1/imports/new/Module8_Counter.v
  C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.srcs/sources_1/imports/new/Adder.v
  C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.srcs/sources_1/imports/new/Module8_Counter_All.v
}
read_xdc C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.srcs/constrs_1/imports/new/M2-1.xdc
set_property used_in_implementation false [get_files C:/Users/Administor/Desktop/Logical/M2_1_/M2_1_.srcs/constrs_1/imports/new/M2-1.xdc]

synth_design -top Module8_Counter -part xc7a100tcsg324-1
write_checkpoint -noxdef Module8_Counter.dcp
catch { report_utilization -file Module8_Counter_utilization_synth.rpt -pb Module8_Counter_utilization_synth.pb }
