@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Dec 18 01:06:19 +0200 2021
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto c43fc96f355e4a3d9c8bd2fa145aee3d --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot second_creeping_tb_behav xil_defaultlib.second_creeping_tb -log elaborate.log"
call xelab  -wto c43fc96f355e4a3d9c8bd2fa145aee3d --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot second_creeping_tb_behav xil_defaultlib.second_creeping_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0