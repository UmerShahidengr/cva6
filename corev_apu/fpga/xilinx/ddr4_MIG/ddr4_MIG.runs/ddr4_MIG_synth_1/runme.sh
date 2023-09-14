#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/user/Tools/Vivado/SDK/2018.2/bin:/home/user/Tools/Vivado/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/user/Tools/Vivado/Vivado/2018.2/bin
else
  PATH=/home/user/Tools/Vivado/SDK/2018.2/bin:/home/user/Tools/Vivado/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/user/Tools/Vivado/Vivado/2018.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/user/Tools/Vivado/Vivado/2018.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/user/Tools/Vivado/Vivado/2018.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/user/Work/UCMerced/cva6_ddr4/corev_apu/fpga/xilinx/ddr4_MIG/ddr4_MIG.runs/ddr4_MIG_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ddr4_MIG.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ddr4_MIG.tcl
