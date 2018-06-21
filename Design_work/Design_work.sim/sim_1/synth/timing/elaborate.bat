@echo off
set xv_path=E:\\Vivado\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 60aa1f8b0b9245e3b26f8b21f0174871 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot sim_Mini_CPU_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.sim_Mini_CPU xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
