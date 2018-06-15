@echo off
set xv_path=E:\\Vivado\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 483d7b4fb1164167923ffb7ac265059c -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_FSM_behav xil_defaultlib.test_FSM xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
