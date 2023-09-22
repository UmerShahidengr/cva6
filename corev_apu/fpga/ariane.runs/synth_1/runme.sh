#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/fazailali/vivado/SDK/2018.2/bin:/home/fazailali/vivado/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/fazailali/vivado/Vivado/2018.2/bin
else
  PATH=/home/fazailali/vivado/SDK/2018.2/bin:/home/fazailali/vivado/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/fazailali/vivado/Vivado/2018.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/fazailali/vivado/Vivado/2018.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/fazailali/vivado/Vivado/2018.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/ddrc2/MyWork/cva6_zc706A/corev_apu/fpga/ariane.runs/synth_1'
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

EAStep vivado -log ariane_xilinx.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ariane_xilinx.tcl
