@echo off
set xv_path=E:\\Vivado\\Vivado\\2015.2\\bin
call %xv_path%/xsim sim_Mini_CPU_func_synth -key {Post-Synthesis:sim_1:Functional:sim_Mini_CPU} -tclbatch sim_Mini_CPU.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
