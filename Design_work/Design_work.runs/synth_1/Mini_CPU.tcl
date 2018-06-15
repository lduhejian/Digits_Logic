# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Administor/Desktop/Logical/Design_work/Design_work.cache/wt [current_project]
set_property parent.project_path C:/Users/Administor/Desktop/Logical/Design_work/Design_work.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Administor/Desktop/Logical/Design_work/Design_work.srcs/sources_1/new/74LS194_Register.v
  C:/Users/Administor/Desktop/Logical/Design_work/Design_work.srcs/sources_1/new/_74LS283_Adder.v
  C:/Users/Administor/Desktop/Logical/Design_work/Design_work.srcs/sources_1/new/_74LS153_MUX.v
  C:/Users/Administor/Desktop/Logical/Design_work/Design_work.srcs/sources_1/new/_74LS139_Dec.v
  C:/Users/Administor/Desktop/Logical/Design_work/Design_work.srcs/sources_1/new/Mini_CPU.v
}
synth_design -top Mini_CPU -part xc7a100tcsg324-1
write_checkpoint -noxdef Mini_CPU.dcp
catch { report_utilization -file Mini_CPU_utilization_synth.rpt -pb Mini_CPU_utilization_synth.pb }
