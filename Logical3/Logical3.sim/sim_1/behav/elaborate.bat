@echo off
set xv_path=E:\\Vivado\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto b456ca0cdd004b6089fa32e7f4104d12 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_behav xil_defaultlib.test xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
