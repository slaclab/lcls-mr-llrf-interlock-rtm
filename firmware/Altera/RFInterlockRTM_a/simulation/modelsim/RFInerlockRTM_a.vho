-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/05/2020 09:06:34"

-- 
-- Device: Altera 5M2210ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	RFInterlockRTM_a IS
    PORT (
	Clock : IN std_logic;
	Cmd_SDO : BUFFER std_logic;
	Cmd_SDI : IN std_logic;
	n_Cmd_CS : IN std_logic;
	Cmd_Clk : IN std_logic;
	n_Beam_I_Under : IN std_logic;
	Beam_I_Over : IN std_logic;
	Beam_V_Over : IN std_logic;
	Refl_Over : IN std_logic;
	n_Motor_Not_Detuned : IN std_logic;
	n_Motor_Not_Tuned : IN std_logic;
	n_Lower_Detuned : IN std_logic;
	n_Lower_Tuned : IN std_logic;
	n_Upper_Tuned : IN std_logic;
	n_Upper_Detuned : IN std_logic;
	Tune_Req : IN std_logic;
	DeTune_Req : IN std_logic;
	SLED_AC_Out_P : BUFFER std_logic;
	SLED_AC_Out_M : BUFFER std_logic;
	N_Tune_En : BUFFER std_logic;
	N_DeTune_En : BUFFER std_logic;
	Mod_Trigger_Out : BUFFER std_logic;
	Mod_Fault : IN std_logic;
	n_Ext_Intlk : BUFFER std_logic;
	n_Mod_Spare_Out : BUFFER std_logic;
	Mod_Status : IN std_logic;
	SSSB_Trigger : IN std_logic;
	Mod_Trigger : IN std_logic;
	RFOn_AMC : BUFFER std_logic;
	RFOff : BUFFER std_logic;
	FaultOut : BUFFER std_logic;
	ClrFault : IN std_logic;
	ByPass : IN std_logic;
	TestPoint : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END RFInterlockRTM_a;

-- Design Ports Information


ARCHITECTURE structure OF RFInterlockRTM_a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Cmd_SDO : std_logic;
SIGNAL ww_Cmd_SDI : std_logic;
SIGNAL ww_n_Cmd_CS : std_logic;
SIGNAL ww_Cmd_Clk : std_logic;
SIGNAL ww_n_Beam_I_Under : std_logic;
SIGNAL ww_Beam_I_Over : std_logic;
SIGNAL ww_Beam_V_Over : std_logic;
SIGNAL ww_Refl_Over : std_logic;
SIGNAL ww_n_Motor_Not_Detuned : std_logic;
SIGNAL ww_n_Motor_Not_Tuned : std_logic;
SIGNAL ww_n_Lower_Detuned : std_logic;
SIGNAL ww_n_Lower_Tuned : std_logic;
SIGNAL ww_n_Upper_Tuned : std_logic;
SIGNAL ww_n_Upper_Detuned : std_logic;
SIGNAL ww_Tune_Req : std_logic;
SIGNAL ww_DeTune_Req : std_logic;
SIGNAL ww_SLED_AC_Out_P : std_logic;
SIGNAL ww_SLED_AC_Out_M : std_logic;
SIGNAL ww_N_Tune_En : std_logic;
SIGNAL ww_N_DeTune_En : std_logic;
SIGNAL ww_Mod_Trigger_Out : std_logic;
SIGNAL ww_Mod_Fault : std_logic;
SIGNAL ww_n_Ext_Intlk : std_logic;
SIGNAL ww_n_Mod_Spare_Out : std_logic;
SIGNAL ww_Mod_Status : std_logic;
SIGNAL ww_SSSB_Trigger : std_logic;
SIGNAL ww_Mod_Trigger : std_logic;
SIGNAL ww_RFOn_AMC : std_logic;
SIGNAL ww_RFOff : std_logic;
SIGNAL ww_FaultOut : std_logic;
SIGNAL ww_ClrFault : std_logic;
SIGNAL ww_ByPass : std_logic;
SIGNAL ww_TestPoint : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_spi|iDoutEn~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|gated_clk2_dffe~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter[1]~10_cout\ : std_logic;
SIGNAL \Cmd_Clk~combout\ : std_logic;
SIGNAL \Cmd_SDI~combout\ : std_logic;
SIGNAL \n_Cmd_CS~combout\ : std_logic;
SIGNAL \u_spi|QSPI_State.CMDIn~regout\ : std_logic;
SIGNAL \u_spi|QSPI_State.Read1~regout\ : std_logic;
SIGNAL \u_spi|Selector17~0_combout\ : std_logic;
SIGNAL \u_spi|QSPI_State.Readt~regout\ : std_logic;
SIGNAL \u_spi|QSPI_State.Idle~regout\ : std_logic;
SIGNAL \u_spi|DInSr[5]~0_combout\ : std_logic;
SIGNAL \u_spi|Equal0~2_combout\ : std_logic;
SIGNAL \u_spi|Equal0~1_combout\ : std_logic;
SIGNAL \u_spi|Equal0~0_combout\ : std_logic;
SIGNAL \u_spi|Address[6]~0\ : std_logic;
SIGNAL \u_SysInfo|Mux6~0\ : std_logic;
SIGNAL \u_RegIntf|Mux1~0\ : std_logic;
SIGNAL \u_SysInfo|Mux7~0\ : std_logic;
SIGNAL \u_RegIntf|Mux1~1\ : std_logic;
SIGNAL \u_spi|Load~regout\ : std_logic;
SIGNAL \u_SysInfo|Mux6~1\ : std_logic;
SIGNAL \u_SysInfo|Mux7~1\ : std_logic;
SIGNAL \u_SysInfo|Mux8~0\ : std_logic;
SIGNAL \u_SysInfo|Mux8~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux9~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux9~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux10~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux10~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux11~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux11~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux12~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux12~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux1~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux1~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux13~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux13~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux4~0_combout\ : std_logic;
SIGNAL \u_spi|Selector32~0_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Refl_Over~combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \Beam_V_Over~combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \Beam_I_Over~combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \u_FastFault|Fault_p~0_combout\ : std_logic;
SIGNAL \ClrFault~combout\ : std_logic;
SIGNAL \u_FastFault|iFaultOut~regout\ : std_logic;
SIGNAL \u_FastFault|iFaultVectorOut[0]~1_combout\ : std_logic;
SIGNAL \u_spi|WideOr3~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux3~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux3~1_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux0~0_combout\ : std_logic;
SIGNAL \u_SysInfo|Mux0~1_combout\ : std_logic;
SIGNAL \Mod_Fault~combout\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter~7_combout\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|db_p~0\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_ModFlt|DeBounce|DbOut~regout\ : std_logic;
SIGNAL \u_ModFlt|ModFaultOut~regout\ : std_logic;
SIGNAL \n_Motor_Not_Detuned~combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~65_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~67\ : std_logic;
SIGNAL \u_clkDiv|Add1~67COUT1_81\ : std_logic;
SIGNAL \u_clkDiv|Add1~60_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~70_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~62\ : std_logic;
SIGNAL \u_clkDiv|Add1~62COUT1_82\ : std_logic;
SIGNAL \u_clkDiv|Add1~75_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal1~3\ : std_logic;
SIGNAL \u_clkDiv|Add1~72\ : std_logic;
SIGNAL \u_clkDiv|Add1~72COUT1_83\ : std_logic;
SIGNAL \u_clkDiv|Add1~50_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~52\ : std_logic;
SIGNAL \u_clkDiv|Add1~52COUT1_84\ : std_logic;
SIGNAL \u_clkDiv|Add1~55_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~57\ : std_logic;
SIGNAL \u_clkDiv|Add1~57COUT1_85\ : std_logic;
SIGNAL \u_clkDiv|Add1~47\ : std_logic;
SIGNAL \u_clkDiv|Add1~47COUT1_86\ : std_logic;
SIGNAL \u_clkDiv|Add1~40_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~42\ : std_logic;
SIGNAL \u_clkDiv|Add1~35_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~37\ : std_logic;
SIGNAL \u_clkDiv|Add1~37COUT1_87\ : std_logic;
SIGNAL \u_clkDiv|Add1~30_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~32\ : std_logic;
SIGNAL \u_clkDiv|Add1~32COUT1_88\ : std_logic;
SIGNAL \u_clkDiv|Add1~25_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~27\ : std_logic;
SIGNAL \u_clkDiv|Add1~27COUT1_89\ : std_logic;
SIGNAL \u_clkDiv|Add1~20_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~22\ : std_logic;
SIGNAL \u_clkDiv|Add1~22COUT1_90\ : std_logic;
SIGNAL \u_clkDiv|Add1~5_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~7\ : std_logic;
SIGNAL \u_clkDiv|Add1~0_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~2\ : std_logic;
SIGNAL \u_clkDiv|Add1~2COUT1_91\ : std_logic;
SIGNAL \u_clkDiv|Add1~15_combout\ : std_logic;
SIGNAL \u_clkDiv|Add1~17\ : std_logic;
SIGNAL \u_clkDiv|Add1~17COUT1_92\ : std_logic;
SIGNAL \u_clkDiv|Add1~10_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal1~0\ : std_logic;
SIGNAL \u_clkDiv|Equal1~1\ : std_logic;
SIGNAL \u_clkDiv|Equal1~4\ : std_logic;
SIGNAL \u_clkDiv|Add1~77\ : std_logic;
SIGNAL \u_clkDiv|Add1~45_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal1~2\ : std_logic;
SIGNAL \u_clkDiv|iClk10KhzEn~regout\ : std_logic;
SIGNAL \u_clkDiv|Equal2~0_combout\ : std_logic;
SIGNAL \u_clkDiv|iClk1KhzEn~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|db_p~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:0:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \n_Lower_Tuned~combout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|db_p~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \n_Upper_Tuned~combout\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|db_p~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:4:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \n_Lower_Detuned~combout\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|db_p~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:2:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \n_Motor_Not_Tuned~combout\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|db_p~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:3:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \n_Upper_Detuned~combout\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|iStart~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|db_p~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT0_15\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT1_16\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[1]~1\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[1]~1COUT1_17\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[2]~3\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[2]~3COUT1_18\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|Equal0~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|Equal1~0_combout\ : std_logic;
SIGNAL \u_Sled|latchSled:1:DeBounce|DbOut~regout\ : std_logic;
SIGNAL \u_Sled|DbSLEDTuned~0_combout\ : std_logic;
SIGNAL \u_Sled|DbSLEDTuned~combout\ : std_logic;
SIGNAL \u_Sled|DbSLEDDeTuned~0_combout\ : std_logic;
SIGNAL \u_Sled|DbSLEDDeTuned~combout\ : std_logic;
SIGNAL \u_Sled|SLEDStatusOut~0_combout\ : std_logic;
SIGNAL \DeTune_Req~combout\ : std_logic;
SIGNAL \u_Sled|DeTuning~0\ : std_logic;
SIGNAL \Tune_Req~combout\ : std_logic;
SIGNAL \u_Sled|Tuning~0\ : std_logic;
SIGNAL \u_Sled|Tuning~1_combout\ : std_logic;
SIGNAL \u_Sled|Tuning~regout\ : std_logic;
SIGNAL \u_Sled|GenAc_p~0_combout\ : std_logic;
SIGNAL \u_Sled|SLEDTimeOut~0_combout\ : std_logic;
SIGNAL \u_clkDiv|Add4~25_combout\ : std_logic;
SIGNAL \u_clkDiv|Add4~27\ : std_logic;
SIGNAL \u_clkDiv|Add4~27COUT1_41\ : std_logic;
SIGNAL \u_clkDiv|Add4~20_combout\ : std_logic;
SIGNAL \u_clkDiv|Add4~22\ : std_logic;
SIGNAL \u_clkDiv|Add4~22COUT1_42\ : std_logic;
SIGNAL \u_clkDiv|Add4~37COUT1_43\ : std_logic;
SIGNAL \u_clkDiv|Add4~32\ : std_logic;
SIGNAL \u_clkDiv|Add4~32COUT1_44\ : std_logic;
SIGNAL \u_clkDiv|Add4~15_combout\ : std_logic;
SIGNAL \u_clkDiv|Add4~17\ : std_logic;
SIGNAL \u_clkDiv|Add4~5_combout\ : std_logic;
SIGNAL \u_clkDiv|Add4~7\ : std_logic;
SIGNAL \u_clkDiv|Add4~7COUT1_45\ : std_logic;
SIGNAL \u_clkDiv|Add4~0_combout\ : std_logic;
SIGNAL \u_clkDiv|Add4~2\ : std_logic;
SIGNAL \u_clkDiv|Add4~2COUT1_46\ : std_logic;
SIGNAL \u_clkDiv|Add4~10_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal4~0\ : std_logic;
SIGNAL \u_clkDiv|Add4~35_combout\ : std_logic;
SIGNAL \u_clkDiv|Add4~37\ : std_logic;
SIGNAL \u_clkDiv|Add4~30_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal4~1\ : std_logic;
SIGNAL \u_clkDiv|iClk10hzEn~regout\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr~0_combout\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr~17_combout\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[0]~2\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[0]~2COUT1_19\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[1]~4\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[1]~4COUT1_20\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[2]~14\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[2]~14COUT1_21\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[3]~16\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[3]~16COUT1_22\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[4]~6\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[5]~8\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[5]~8COUT1_23\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[6]~10\ : std_logic;
SIGNAL \u_Sled|TimeOutCntr[6]~10COUT1_24\ : std_logic;
SIGNAL \u_Sled|Equal2~1_combout\ : std_logic;
SIGNAL \u_Sled|Equal2~0_combout\ : std_logic;
SIGNAL \u_Sled|Equal2~2_combout\ : std_logic;
SIGNAL \u_Sled|SLEDTimeOut~regout\ : std_logic;
SIGNAL \u_Sled|DeTuning~1_combout\ : std_logic;
SIGNAL \u_Sled|DeTuning~regout\ : std_logic;
SIGNAL \ByPass~combout\ : std_logic;
SIGNAL \u_Sled|iSLEDFault~regout\ : std_logic;
SIGNAL \RfOn~0_combout\ : std_logic;
SIGNAL \u_spi|iDout~regout\ : std_logic;
SIGNAL \u_spi|DoutEn~regout\ : std_logic;
SIGNAL \u_spi|Dout~0\ : std_logic;
SIGNAL \u_clkDiv|Add0~55_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~57\ : std_logic;
SIGNAL \u_clkDiv|Add0~50_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~52\ : std_logic;
SIGNAL \u_clkDiv|Add0~52COUT1_61\ : std_logic;
SIGNAL \u_clkDiv|Add0~47\ : std_logic;
SIGNAL \u_clkDiv|Add0~47COUT1_62\ : std_logic;
SIGNAL \u_clkDiv|Add0~40_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~42\ : std_logic;
SIGNAL \u_clkDiv|Add0~42COUT1_63\ : std_logic;
SIGNAL \u_clkDiv|Add0~35_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~25_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~37\ : std_logic;
SIGNAL \u_clkDiv|Add0~37COUT1_64\ : std_logic;
SIGNAL \u_clkDiv|Add0~30_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~32\ : std_logic;
SIGNAL \u_clkDiv|Add0~27\ : std_logic;
SIGNAL \u_clkDiv|Add0~27COUT1_65\ : std_logic;
SIGNAL \u_clkDiv|Add0~22\ : std_logic;
SIGNAL \u_clkDiv|Add0~22COUT1_66\ : std_logic;
SIGNAL \u_clkDiv|Add0~0_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~2\ : std_logic;
SIGNAL \u_clkDiv|Add0~2COUT1_67\ : std_logic;
SIGNAL \u_clkDiv|Add0~15_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~17\ : std_logic;
SIGNAL \u_clkDiv|Add0~17COUT1_68\ : std_logic;
SIGNAL \u_clkDiv|Add0~10_combout\ : std_logic;
SIGNAL \u_clkDiv|Add0~12\ : std_logic;
SIGNAL \u_clkDiv|Add0~5_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal0~0\ : std_logic;
SIGNAL \u_clkDiv|Add0~20_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal0~1\ : std_logic;
SIGNAL \u_clkDiv|Add0~45_combout\ : std_logic;
SIGNAL \u_clkDiv|Equal0~2\ : std_logic;
SIGNAL \u_clkDiv|iClk245KhzEn~regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\ : std_logic;
SIGNAL \u0|ufm_parallel_0|data_valid_reg~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|decode_dffe~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|ufm_drshft~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|ufm_drshft~1_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|arclk~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|add_load~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|add_load~1_combout\ : std_logic;
SIGNAL \TestCntr[1]~1\ : std_logic;
SIGNAL \TestCntr[1]~1COUT1_18\ : std_logic;
SIGNAL \TestCntr[2]~3\ : std_logic;
SIGNAL \TestCntr[2]~3COUT1_19\ : std_logic;
SIGNAL \TestCntr[3]~5\ : std_logic;
SIGNAL \TestCntr[3]~5COUT1_20\ : std_logic;
SIGNAL \TestCntr[4]~7\ : std_logic;
SIGNAL \TestCntr[4]~7COUT1_21\ : std_logic;
SIGNAL \TestCntr[5]~9\ : std_logic;
SIGNAL \TestCntr[6]~11\ : std_logic;
SIGNAL \TestCntr[6]~11COUT1_22\ : std_logic;
SIGNAL \u0|ufm_parallel_0|ufm_arshft~combout\ : std_logic;
SIGNAL \TestCntr[7]~13\ : std_logic;
SIGNAL \TestCntr[7]~13COUT1_23\ : std_logic;
SIGNAL \u0|ufm_parallel_0|gated_clk1_dffe~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|ufm_arclk~combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\ : std_logic;
SIGNAL \Selector1~1\ : std_logic;
SIGNAL \PWMLkup_s.UFM_Wait_s~regout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \PWMLkup_s.UFM_Idle_s~regout\ : std_logic;
SIGNAL \PWMLkup_s.UFM_Data_s~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \nread~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|control_mux~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|mux_nread~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|real_decode_dffe~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|real_decode2_dffe~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|deco1_dffe~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|deco1_dffe~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|in_read_drclk~0_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|in_read_drclk~1_combout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|ufm_drclk\ : std_logic;
SIGNAL \u0|ufm_parallel_0|ufm_osc\ : std_logic;
SIGNAL \u0|ufm_parallel_0|data_valid_reg~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|data_valid_out_reg~regout\ : std_logic;
SIGNAL \PWM0_SR[5]~1\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \PWMCntr[2]~0_combout\ : std_logic;
SIGNAL \PWMCntr[2]~1_combout\ : std_logic;
SIGNAL \nread~0_combout\ : std_logic;
SIGNAL \PWMLkup_s.UFM_Shift_s~regout\ : std_logic;
SIGNAL \u0|ufm_parallel_0|wire_maxii_ufm_block1_drdout\ : std_logic;
SIGNAL \PWM0_SR[5]~0_combout\ : std_logic;
SIGNAL \Mod_Trigger~combout\ : std_logic;
SIGNAL \n_Ext_Intlk~0_combout\ : std_logic;
SIGNAL \Mod_Trigger_Out~0_combout\ : std_logic;
SIGNAL \n_Ext_Intlk~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \PWMStart~regout\ : std_logic;
SIGNAL \u_Sled|latchSled:5:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL PWM0_SR : std_logic_vector(7 DOWNTO 0);
SIGNAL PWM1_SR : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_spi|Address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_clkDiv|Clk1khzCntr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Sled|TuneReqSr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_spi|DataOutSR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL sync_data_valid : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|ufm_parallel_0|A\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u0|ufm_parallel_0|tmp_do\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_Sled|DeTuneReqSr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_spi|Counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL PWMCntr : std_logic_vector(2 DOWNTO 0);
SIGNAL TestCntr : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_spi|DInSr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_clkDiv|Clk10hzCntr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_Sled|SLEDStatusOut\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|ufm_parallel_0|sipo_dffe\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_ModFlt|DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|ufm_parallel_0|wire_tmp_do_ena\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL sync_nbusy : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_clkDiv|Clk245khzCntr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_Sled|latchSled:1:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_FastFault|iFaultVectorOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_Sled|latchSled:2:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Sled|latchSled:3:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Sled|latchSled:0:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Sled|latchSled:4:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_Sled|TimeOutCntr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_FastFault|latchFastFaults:0:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_FastFault|latchFastFaults:2:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_FastFault|latchFastFaults:3:DeBounce|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_clkDiv|Clk10khzCntr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_n_Cmd_CS~combout\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \ALT_INV_Cmd_Clk~combout\ : std_logic;
SIGNAL \ALT_INV_RfOn~0_combout\ : std_logic;
SIGNAL \u_Sled|ALT_INV_DeTuning~regout\ : std_logic;
SIGNAL \u_Sled|ALT_INV_Tuning~regout\ : std_logic;

BEGIN

ww_Clock <= Clock;
Cmd_SDO <= ww_Cmd_SDO;
ww_Cmd_SDI <= Cmd_SDI;
ww_n_Cmd_CS <= n_Cmd_CS;
ww_Cmd_Clk <= Cmd_Clk;
ww_n_Beam_I_Under <= n_Beam_I_Under;
ww_Beam_I_Over <= Beam_I_Over;
ww_Beam_V_Over <= Beam_V_Over;
ww_Refl_Over <= Refl_Over;
ww_n_Motor_Not_Detuned <= n_Motor_Not_Detuned;
ww_n_Motor_Not_Tuned <= n_Motor_Not_Tuned;
ww_n_Lower_Detuned <= n_Lower_Detuned;
ww_n_Lower_Tuned <= n_Lower_Tuned;
ww_n_Upper_Tuned <= n_Upper_Tuned;
ww_n_Upper_Detuned <= n_Upper_Detuned;
ww_Tune_Req <= Tune_Req;
ww_DeTune_Req <= DeTune_Req;
SLED_AC_Out_P <= ww_SLED_AC_Out_P;
SLED_AC_Out_M <= ww_SLED_AC_Out_M;
N_Tune_En <= ww_N_Tune_En;
N_DeTune_En <= ww_N_DeTune_En;
Mod_Trigger_Out <= ww_Mod_Trigger_Out;
ww_Mod_Fault <= Mod_Fault;
n_Ext_Intlk <= ww_n_Ext_Intlk;
n_Mod_Spare_Out <= ww_n_Mod_Spare_Out;
ww_Mod_Status <= Mod_Status;
ww_SSSB_Trigger <= SSSB_Trigger;
ww_Mod_Trigger <= Mod_Trigger;
RFOn_AMC <= ww_RFOn_AMC;
RFOff <= ww_RFOff;
FaultOut <= ww_FaultOut;
ww_ClrFault <= ClrFault;
ww_ByPass <= ByPass;
TestPoint <= ww_TestPoint;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_n_Cmd_CS~combout\ <= NOT \n_Cmd_CS~combout\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\ALT_INV_Cmd_Clk~combout\ <= NOT \Cmd_Clk~combout\;
\ALT_INV_RfOn~0_combout\ <= NOT \RfOn~0_combout\;
\u_Sled|ALT_INV_DeTuning~regout\ <= NOT \u_Sled|DeTuning~regout\;
\u_Sled|ALT_INV_Tuning~regout\ <= NOT \u_Sled|Tuning~regout\;

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cmd_Clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cmd_Clk,
	combout => \Cmd_Clk~combout\);

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cmd_SDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cmd_SDI,
	combout => \Cmd_SDI~combout\);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Cmd_CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Cmd_CS,
	combout => \n_Cmd_CS~combout\);

-- Location: LC_X4_Y8_N8
\u_spi|QSPI_State.CMDIn\ : maxv_lcell
-- Equation(s):
-- \u_spi|QSPI_State.CMDIn~regout\ = DFFEAS((\u_spi|QSPI_State.CMDIn~regout\ & (((\Cmd_SDI~combout\ & !\u_spi|QSPI_State.Idle~regout\)) # (!\u_spi|Equal0~0_combout\))) # (!\u_spi|QSPI_State.CMDIn~regout\ & (((\Cmd_SDI~combout\ & 
-- !\u_spi|QSPI_State.Idle~regout\)))), GLOBAL(\Cmd_Clk~combout\), VCC, , !\n_Cmd_CS~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|QSPI_State.CMDIn~regout\,
	datab => \u_spi|Equal0~0_combout\,
	datac => \Cmd_SDI~combout\,
	datad => \u_spi|QSPI_State.Idle~regout\,
	aclr => GND,
	ena => \ALT_INV_n_Cmd_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|QSPI_State.CMDIn~regout\);

-- Location: LC_X4_Y8_N5
\u_spi|QSPI_State.Read1\ : maxv_lcell
-- Equation(s):
-- \u_spi|Address[6]~0\ = (((\u_spi|Equal0~0_combout\ & \u_spi|QSPI_State.CMDIn~regout\)))
-- \u_spi|QSPI_State.Read1~regout\ = DFFEAS(\u_spi|Address[6]~0\, GLOBAL(\Cmd_Clk~combout\), VCC, , !\n_Cmd_CS~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datac => \u_spi|Equal0~0_combout\,
	datad => \u_spi|QSPI_State.CMDIn~regout\,
	aclr => GND,
	ena => \ALT_INV_n_Cmd_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|Address[6]~0\,
	regout => \u_spi|QSPI_State.Read1~regout\);

-- Location: LC_X5_Y8_N6
\u_spi|Selector17~0\ : maxv_lcell
-- Equation(s):
-- \u_spi|Selector17~0_combout\ = (!\u_spi|QSPI_State.Read1~regout\ & (((\u_spi|Equal0~0_combout\) # (!\u_spi|QSPI_State.Readt~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|QSPI_State.Read1~regout\,
	datac => \u_spi|QSPI_State.Readt~regout\,
	datad => \u_spi|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|Selector17~0_combout\);

-- Location: LC_X4_Y8_N0
\u_spi|QSPI_State.Readt\ : maxv_lcell
-- Equation(s):
-- \u_spi|QSPI_State.Readt~regout\ = DFFEAS((((!\u_spi|Selector17~0_combout\))), GLOBAL(\Cmd_Clk~combout\), VCC, , !\n_Cmd_CS~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datac => \u_spi|Selector17~0_combout\,
	aclr => GND,
	ena => \ALT_INV_n_Cmd_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|QSPI_State.Readt~regout\);

-- Location: LC_X4_Y8_N2
\u_spi|QSPI_State.Idle\ : maxv_lcell
-- Equation(s):
-- \u_spi|QSPI_State.Idle~regout\ = DFFEAS((\Cmd_SDI~combout\ & (((!\u_spi|QSPI_State.Readt~regout\)) # (!\u_spi|Equal0~0_combout\))) # (!\Cmd_SDI~combout\ & (\u_spi|QSPI_State.Idle~regout\ & ((!\u_spi|QSPI_State.Readt~regout\) # 
-- (!\u_spi|Equal0~0_combout\)))), GLOBAL(\Cmd_Clk~combout\), VCC, , !\n_Cmd_CS~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \Cmd_SDI~combout\,
	datab => \u_spi|Equal0~0_combout\,
	datac => \u_spi|QSPI_State.Readt~regout\,
	datad => \u_spi|QSPI_State.Idle~regout\,
	aclr => GND,
	ena => \ALT_INV_n_Cmd_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|QSPI_State.Idle~regout\);

-- Location: LC_X5_Y8_N5
\u_spi|DInSr[5]~0\ : maxv_lcell
-- Equation(s):
-- \u_spi|DInSr[5]~0_combout\ = (((\Cmd_SDI~combout\) # (\u_spi|QSPI_State.Idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Cmd_SDI~combout\,
	datad => \u_spi|QSPI_State.Idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|DInSr[5]~0_combout\);

-- Location: LC_X4_Y8_N6
\u_spi|Counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_spi|Counter\(0) = DFFEAS((\u_spi|Counter\(0) & (((\u_spi|Equal0~0_combout\ & \u_spi|QSPI_State.CMDIn~regout\)))) # (!\u_spi|Counter\(0) & ((\u_spi|QSPI_State.Idle~regout\) # ((\u_spi|Equal0~0_combout\ & \u_spi|QSPI_State.CMDIn~regout\)))), 
-- GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Counter\(0),
	datab => \u_spi|QSPI_State.Idle~regout\,
	datac => \u_spi|Equal0~0_combout\,
	datad => \u_spi|QSPI_State.CMDIn~regout\,
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|Counter\(0));

-- Location: LC_X4_Y8_N4
\u_spi|Counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_spi|Counter\(1) = DFFEAS(((\u_spi|Address[6]~0\) # (\u_spi|Counter\(0) $ (!\u_spi|Counter\(1)))) # (!\u_spi|QSPI_State.Idle~regout\), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb7",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Counter\(0),
	datab => \u_spi|QSPI_State.Idle~regout\,
	datac => \u_spi|Counter\(1),
	datad => \u_spi|Address[6]~0\,
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|Counter\(1));

-- Location: LC_X5_Y8_N7
\u_spi|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \u_spi|Equal0~2_combout\ = (((!\u_spi|Counter\(0) & !\u_spi|Counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_spi|Counter\(0),
	datad => \u_spi|Counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|Equal0~2_combout\);

-- Location: LC_X4_Y8_N9
\u_spi|Counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_spi|Counter\(2) = DFFEAS(((\u_spi|Address[6]~0\) # (\u_spi|Equal0~2_combout\ $ (\u_spi|Counter\(2)))) # (!\u_spi|QSPI_State.Idle~regout\), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7fb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Equal0~2_combout\,
	datab => \u_spi|QSPI_State.Idle~regout\,
	datac => \u_spi|Address[6]~0\,
	datad => \u_spi|Counter\(2),
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|Counter\(2));

-- Location: LC_X4_Y8_N3
\u_spi|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \u_spi|Equal0~1_combout\ = (!\u_spi|Counter\(1) & (!\u_spi|Counter\(2) & (!\u_spi|Counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Counter\(1),
	datab => \u_spi|Counter\(2),
	datac => \u_spi|Counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|Equal0~1_combout\);

-- Location: LC_X4_Y8_N1
\u_spi|Counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_spi|Counter\(3) = DFFEAS((\u_spi|QSPI_State.Idle~regout\ & ((\u_spi|Equal0~1_combout\ $ (\u_spi|Counter\(3))))) # (!\u_spi|QSPI_State.Idle~regout\ & (\u_spi|QSPI_State.CMDIn~regout\ & (\u_spi|Equal0~1_combout\ & !\u_spi|Counter\(3)))), 
-- GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ce0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|QSPI_State.CMDIn~regout\,
	datab => \u_spi|QSPI_State.Idle~regout\,
	datac => \u_spi|Equal0~1_combout\,
	datad => \u_spi|Counter\(3),
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|Counter\(3));

-- Location: LC_X4_Y8_N7
\u_spi|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_spi|Equal0~0_combout\ = (!\u_spi|Counter\(0) & (!\u_spi|Counter\(2) & (!\u_spi|Counter\(1) & !\u_spi|Counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Counter\(0),
	datab => \u_spi|Counter\(2),
	datac => \u_spi|Counter\(1),
	datad => \u_spi|Counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|Equal0~0_combout\);

-- Location: LC_X6_Y8_N1
\u_spi|Address[0]\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux8~0\ = (\u_spi|Address\(3) & (\u_spi|Address\(1) $ (((\u_spi|Address\(2)) # (H1_Address[0]))))) # (!\u_spi|Address\(3) & (((H1_Address[0] & \u_spi|Address\(1)))))
-- \u_spi|Address\(0) = DFFEAS(\u_SysInfo|Mux8~0\, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|Address[6]~0\, \Cmd_SDI~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Address\(3),
	datab => \u_spi|Address\(2),
	datac => \Cmd_SDI~combout\,
	datad => \u_spi|Address\(1),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|Address[6]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux8~0\,
	regout => \u_spi|Address\(0));

-- Location: LC_X5_Y8_N9
\u_spi|DInSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DInSr\(0) = DFFEAS(((\Cmd_SDI~combout\) # ((!\u_spi|QSPI_State.Idle~regout\ & \u_spi|DInSr\(0)))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datab => \u_spi|QSPI_State.Idle~regout\,
	datac => \Cmd_SDI~combout\,
	datad => \u_spi|DInSr\(0),
	aclr => \n_Cmd_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DInSr\(0));

-- Location: LC_X5_Y7_N2
\u_spi|DInSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DInSr\(1) = DFFEAS((((\u_spi|DInSr\(0)))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datad => \u_spi|DInSr\(0),
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DInSr\(1));

-- Location: LC_X5_Y7_N5
\u_spi|DInSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DInSr\(2) = DFFEAS((((\u_spi|DInSr\(1)))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datad => \u_spi|DInSr\(1),
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DInSr\(2));

-- Location: LC_X5_Y7_N0
\u_spi|DInSr[3]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DInSr\(3) = DFFEAS(GND, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, \u_spi|DInSr\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datac => \u_spi|DInSr\(2),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DInSr\(3));

-- Location: LC_X5_Y7_N6
\u_spi|DInSr[4]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DInSr\(4) = DFFEAS(GND, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, \u_spi|DInSr\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datac => \u_spi|DInSr\(3),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DInSr\(4));

-- Location: LC_X6_Y8_N5
\u_spi|DInSr[5]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DInSr\(5) = DFFEAS(GND, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|DInSr[5]~0_combout\, \u_spi|DInSr\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datac => \u_spi|DInSr\(4),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|DInSr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DInSr\(5));

-- Location: LC_X6_Y8_N0
\u_spi|Address[4]\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux7~0\ = (!H1_Address[4] & ((\u_spi|Address\(2) & ((!\u_spi|Address\(1)))) # (!\u_spi|Address\(2) & (\u_spi|Address\(3) & \u_spi|Address\(1)))))
-- \u_spi|Address\(4) = DFFEAS(\u_SysInfo|Mux7~0\, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|Address[6]~0\, \u_spi|DInSr\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Address\(3),
	datab => \u_spi|Address\(2),
	datac => \u_spi|DInSr\(3),
	datad => \u_spi|Address\(1),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|Address[6]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux7~0\,
	regout => \u_spi|Address\(4));

-- Location: LC_X6_Y8_N8
\u_spi|Address[1]\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux6~0\ = (!\u_spi|Address\(4) & ((\u_spi|Address\(3) & (!\u_spi|Address\(2) & !H1_Address[1])) # (!\u_spi|Address\(3) & ((H1_Address[1])))))
-- \u_spi|Address\(1) = DFFEAS(\u_SysInfo|Mux6~0\, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|Address[6]~0\, \u_spi|DInSr\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0052",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Address\(3),
	datab => \u_spi|Address\(2),
	datac => \u_spi|DInSr\(0),
	datad => \u_spi|Address\(4),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|Address[6]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux6~0\,
	regout => \u_spi|Address\(1));

-- Location: LC_X6_Y8_N9
\u_spi|Address[6]\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux6~1\ = (!\u_spi|Address\(5) & (((!H1_Address[6] & \u_SysInfo|Mux6~0\))))
-- \u_spi|Address\(6) = DFFEAS(\u_SysInfo|Mux6~1\, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|Address[6]~0\, \u_spi|DInSr\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Address\(5),
	datac => \u_spi|DInSr\(5),
	datad => \u_SysInfo|Mux6~0\,
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|Address[6]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux6~1\,
	regout => \u_spi|Address\(6));

-- Location: LC_X6_Y8_N6
\u_spi|Address[3]\ : maxv_lcell
-- Equation(s):
-- \u_RegIntf|Mux1~0\ = (!\u_spi|Address\(5) & (!\u_spi|Address\(6) & (!H1_Address[3] & !\u_spi|Address\(4))))
-- \u_spi|Address\(3) = DFFEAS(\u_RegIntf|Mux1~0\, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|Address[6]~0\, \u_spi|DInSr\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Address\(5),
	datab => \u_spi|Address\(6),
	datac => \u_spi|DInSr\(2),
	datad => \u_spi|Address\(4),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|Address[6]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_RegIntf|Mux1~0\,
	regout => \u_spi|Address\(3));

-- Location: LC_X6_Y8_N7
\u_spi|Address[2]\ : maxv_lcell
-- Equation(s):
-- \u_RegIntf|Mux1~1\ = (!\u_spi|Address\(1) & (!\u_spi|Address\(0) & (!H1_Address[2] & \u_RegIntf|Mux1~0\)))
-- \u_spi|Address\(2) = DFFEAS(\u_RegIntf|Mux1~1\, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|Address[6]~0\, \u_spi|DInSr\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|Address\(1),
	datab => \u_spi|Address\(0),
	datac => \u_spi|DInSr\(1),
	datad => \u_RegIntf|Mux1~0\,
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|Address[6]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_RegIntf|Mux1~1\,
	regout => \u_spi|Address\(2));

-- Location: LC_X6_Y8_N4
\u_spi|Address[5]\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux7~1\ = ((\u_SysInfo|Mux7~0\ & (!H1_Address[5] & !\u_spi|Address\(6))))
-- \u_spi|Address\(5) = DFFEAS(\u_SysInfo|Mux7~1\, GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|Address[6]~0\, \u_spi|DInSr\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datab => \u_SysInfo|Mux7~0\,
	datac => \u_spi|DInSr\(4),
	datad => \u_spi|Address\(6),
	aclr => \n_Cmd_CS~combout\,
	sload => VCC,
	ena => \u_spi|Address[6]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux7~1\,
	regout => \u_spi|Address\(5));

-- Location: LC_X5_Y8_N2
\u_spi|Load\ : maxv_lcell
-- Equation(s):
-- \u_spi|Load~regout\ = DFFEAS(((\u_spi|QSPI_State.CMDIn~regout\ & ((\u_spi|Equal0~0_combout\) # (\u_spi|Load~regout\)))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datab => \u_spi|Equal0~0_combout\,
	datac => \u_spi|QSPI_State.CMDIn~regout\,
	datad => \u_spi|Load~regout\,
	aclr => \n_Cmd_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|Load~regout\);

-- Location: LC_X8_Y9_N4
\u_SysInfo|Mux8~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux8~1_combout\ = (!\u_spi|Address\(6) & (!\u_spi|Address\(5) & (\u_SysInfo|Mux8~0\ & !\u_spi|Address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(6),
	datab => \u_spi|Address\(5),
	datac => \u_SysInfo|Mux8~0\,
	datad => \u_spi|Address\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux8~1_combout\);

-- Location: LC_X7_Y8_N6
\u_SysInfo|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux9~0_combout\ = (\u_spi|Address\(0) & (\u_spi|Address\(3) & (\u_spi|Address\(1) & !\u_spi|Address\(2)))) # (!\u_spi|Address\(0) & (\u_spi|Address\(3) $ ((\u_spi|Address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1494",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux9~0_combout\);

-- Location: LC_X7_Y9_N4
\u_SysInfo|Mux9~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux9~1_combout\ = (\u_SysInfo|Mux9~0_combout\ & (!\u_spi|Address\(6) & (!\u_spi|Address\(4) & !\u_spi|Address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_SysInfo|Mux9~0_combout\,
	datab => \u_spi|Address\(6),
	datac => \u_spi|Address\(4),
	datad => \u_spi|Address\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux9~1_combout\);

-- Location: LC_X7_Y8_N5
\u_SysInfo|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux10~0_combout\ = (\u_spi|Address\(3) & (\u_spi|Address\(0) & ((!\u_spi|Address\(2))))) # (!\u_spi|Address\(3) & (\u_spi|Address\(1) & (\u_spi|Address\(0) $ (!\u_spi|Address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2098",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux10~0_combout\);

-- Location: LC_X7_Y8_N0
\u_SysInfo|Mux10~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux10~1_combout\ = (\u_SysInfo|Mux10~0_combout\ & (!\u_spi|Address\(5) & (!\u_spi|Address\(4) & !\u_spi|Address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_SysInfo|Mux10~0_combout\,
	datab => \u_spi|Address\(5),
	datac => \u_spi|Address\(4),
	datad => \u_spi|Address\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux10~1_combout\);

-- Location: LC_X6_Y8_N2
\u_SysInfo|Mux11~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux11~0_combout\ = (!\u_spi|Address\(2) & ((\u_spi|Address\(1) & ((\u_spi|Address\(0)))) # (!\u_spi|Address\(1) & (\u_spi|Address\(3) & !\u_spi|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(1),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(2),
	datad => \u_spi|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux11~0_combout\);

-- Location: LC_X6_Y8_N3
\u_SysInfo|Mux11~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux11~1_combout\ = (!\u_spi|Address\(4) & (!\u_spi|Address\(6) & (!\u_spi|Address\(5) & \u_SysInfo|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(4),
	datab => \u_spi|Address\(6),
	datac => \u_spi|Address\(5),
	datad => \u_SysInfo|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux11~1_combout\);

-- Location: LC_X7_Y8_N9
\u_SysInfo|Mux12~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux12~0_combout\ = (\u_spi|Address\(0) & (\u_spi|Address\(3) & (\u_spi|Address\(1) $ (\u_spi|Address\(2))))) # (!\u_spi|Address\(0) & ((\u_spi|Address\(3) & (!\u_spi|Address\(1) & !\u_spi|Address\(2))) # (!\u_spi|Address\(3) & 
-- (\u_spi|Address\(1) & \u_spi|Address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1884",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux12~0_combout\);

-- Location: LC_X8_Y8_N0
\u_SysInfo|Mux12~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux12~1_combout\ = (\u_SysInfo|Mux12~0_combout\ & (!\u_spi|Address\(5) & (!\u_spi|Address\(4) & !\u_spi|Address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_SysInfo|Mux12~0_combout\,
	datab => \u_spi|Address\(5),
	datac => \u_spi|Address\(4),
	datad => \u_spi|Address\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux12~1_combout\);

-- Location: LC_X7_Y8_N2
\u_SysInfo|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux1~0_combout\ = (\u_spi|Address\(3) & (!\u_spi|Address\(1) & ((\u_spi|Address\(0)) # (\u_spi|Address\(2))))) # (!\u_spi|Address\(3) & (\u_spi|Address\(1) & ((\u_spi|Address\(2)) # (!\u_spi|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux1~0_combout\);

-- Location: LC_X7_Y9_N6
\u_SysInfo|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux1~1_combout\ = (\u_SysInfo|Mux1~0_combout\ & (!\u_spi|Address\(6) & (!\u_spi|Address\(4) & !\u_spi|Address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_SysInfo|Mux1~0_combout\,
	datab => \u_spi|Address\(6),
	datac => \u_spi|Address\(4),
	datad => \u_spi|Address\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux1~1_combout\);

-- Location: LC_X7_Y8_N7
\u_SysInfo|Mux13~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux13~0_combout\ = (\u_spi|Address\(0) & ((\u_spi|Address\(1) & (!\u_spi|Address\(3))) # (!\u_spi|Address\(1) & ((!\u_spi|Address\(2)))))) # (!\u_spi|Address\(0) & (\u_spi|Address\(1) $ (((\u_spi|Address\(3) & \u_spi|Address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "347a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux13~0_combout\);

-- Location: LC_X7_Y9_N8
\u_SysInfo|Mux13~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux13~1_combout\ = (\u_SysInfo|Mux13~0_combout\ & (!\u_spi|Address\(6) & (!\u_spi|Address\(4) & !\u_spi|Address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_SysInfo|Mux13~0_combout\,
	datab => \u_spi|Address\(6),
	datac => \u_spi|Address\(4),
	datad => \u_spi|Address\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux13~1_combout\);

-- Location: LC_X7_Y8_N3
\u_SysInfo|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux4~0_combout\ = (\u_spi|Address\(3) & ((\u_spi|Address\(0) & ((!\u_spi|Address\(2)))) # (!\u_spi|Address\(0) & (!\u_spi|Address\(1) & \u_spi|Address\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0488",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux4~0_combout\);

-- Location: LC_X7_Y8_N4
\u_spi|Selector32~0\ : maxv_lcell
-- Equation(s):
-- \u_spi|Selector32~0_combout\ = (\u_SysInfo|Mux4~0_combout\ & (!\u_spi|Address\(5) & (!\u_spi|Address\(4) & !\u_spi|Address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_SysInfo|Mux4~0_combout\,
	datab => \u_spi|Address\(5),
	datac => \u_spi|Address\(4),
	datad => \u_spi|Address\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|Selector32~0_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Refl_Over~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Refl_Over,
	combout => \Refl_Over~combout\);

-- Location: LC_X4_Y9_N4
\u_FastFault|latchFastFaults:0:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ = (((P7_iStart) # (\u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\)))
-- \u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\ = DFFEAS(\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\, GLOBAL(\Clock~combout\), VCC, , , \Refl_Over~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \Refl_Over~combout\,
	datad => \u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:0:DeBounce|db_p~0\,
	regout => \u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\);

-- Location: LC_X4_Y9_N7
\u_FastFault|latchFastFaults:0:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|counter\(0) = DFFEAS(\u_FastFault|latchFastFaults:0:DeBounce|counter\(0) $ (((\u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\ & (!\u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\)) # 
-- (!\u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\ & ((!\u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\))))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b487",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\,
	datab => \u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\,
	datac => \u_FastFault|latchFastFaults:0:DeBounce|counter\(0),
	datad => \u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:0:DeBounce|counter\(0));

-- Location: LC_X4_Y9_N0
\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_FastFault|latchFastFaults:0:DeBounce|counter\(0))))
-- \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_FastFault|latchFastFaults:0:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_FastFault|latchFastFaults:0:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10_cout\,
	cout0 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X4_Y9_N1
\u_FastFault|latchFastFaults:0:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|counter\(1) = DFFEAS(\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ $ (\u_FastFault|latchFastFaults:0:DeBounce|counter\(1) $ ((!\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT0_15\))), 
-- GLOBAL(\Clock~combout\), VCC, , \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\, , , , )
-- \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1\ = CARRY((\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & ((!\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT0_15\) # (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(1)))) # 
-- (!\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(1) & !\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT0_15\)))
-- \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & ((!\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT1_16\) # (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(1)))) # 
-- (!\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(1) & !\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:0:DeBounce|db_p~0\,
	datab => \u_FastFault|latchFastFaults:0:DeBounce|counter\(1),
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:0:DeBounce|counter\(1),
	cout0 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1\,
	cout1 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X4_Y9_N2
\u_FastFault|latchFastFaults:0:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|counter\(2) = DFFEAS(\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ $ (\u_FastFault|latchFastFaults:0:DeBounce|counter\(2) $ ((\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, 
-- , \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\, , , , )
-- \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3\ = CARRY((\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & (\u_FastFault|latchFastFaults:0:DeBounce|counter\(2) & !\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1\)) # 
-- (!\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & ((\u_FastFault|latchFastFaults:0:DeBounce|counter\(2)) # (!\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1\))))
-- \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & (\u_FastFault|latchFastFaults:0:DeBounce|counter\(2) & !\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1COUT1_17\)) # 
-- (!\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ & ((\u_FastFault|latchFastFaults:0:DeBounce|counter\(2)) # (!\u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:0:DeBounce|db_p~0\,
	datab => \u_FastFault|latchFastFaults:0:DeBounce|counter\(2),
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1\,
	cin1 => \u_FastFault|latchFastFaults:0:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:0:DeBounce|counter\(2),
	cout0 => \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3\,
	cout1 => \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X4_Y9_N5
\u_FastFault|latchFastFaults:0:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\ = (\u_FastFault|latchFastFaults:0:DeBounce|counter\(3) & (\u_FastFault|latchFastFaults:0:DeBounce|counter\(1) & (\u_FastFault|latchFastFaults:0:DeBounce|counter\(0) & 
-- \u_FastFault|latchFastFaults:0:DeBounce|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:0:DeBounce|counter\(3),
	datab => \u_FastFault|latchFastFaults:0:DeBounce|counter\(1),
	datac => \u_FastFault|latchFastFaults:0:DeBounce|counter\(0),
	datad => \u_FastFault|latchFastFaults:0:DeBounce|counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\);

-- Location: LC_X4_Y9_N6
\u_FastFault|latchFastFaults:0:DeBounce|counter~7\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\ = (\u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\ & (((!\u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\)))) # (!\u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\ & 
-- (!\u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\,
	datab => \u_FastFault|latchFastFaults:0:DeBounce|iStart~regout\,
	datad => \u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\);

-- Location: LC_X4_Y9_N3
\u_FastFault|latchFastFaults:0:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|counter\(3) = DFFEAS(\u_FastFault|latchFastFaults:0:DeBounce|db_p~0\ $ (((\u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3\ $ (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(3))))), GLOBAL(\Clock~combout\), 
-- VCC, , \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:0:DeBounce|db_p~0\,
	datad => \u_FastFault|latchFastFaults:0:DeBounce|counter\(3),
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:0:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3\,
	cin1 => \u_FastFault|latchFastFaults:0:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:0:DeBounce|counter\(3));

-- Location: LC_X4_Y9_N8
\u_FastFault|latchFastFaults:0:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\ = (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(3) & (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(1) & (!\u_FastFault|latchFastFaults:0:DeBounce|counter\(0) & 
-- !\u_FastFault|latchFastFaults:0:DeBounce|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:0:DeBounce|counter\(3),
	datab => \u_FastFault|latchFastFaults:0:DeBounce|counter\(1),
	datac => \u_FastFault|latchFastFaults:0:DeBounce|counter\(0),
	datad => \u_FastFault|latchFastFaults:0:DeBounce|counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\);

-- Location: LC_X5_Y9_N4
\u_FastFault|latchFastFaults:0:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\ = DFFEAS(((\u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\) # ((\u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\ & !\u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\))), 
-- GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\,
	datac => \u_FastFault|latchFastFaults:0:DeBounce|Equal1~0_combout\,
	datad => \u_FastFault|latchFastFaults:0:DeBounce|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Beam_V_Over~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Beam_V_Over,
	combout => \Beam_V_Over~combout\);

-- Location: LC_X3_Y9_N8
\u_FastFault|latchFastFaults:2:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ = (((P9_iStart) # (\u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\)))
-- \u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\ = DFFEAS(\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\, GLOBAL(\Clock~combout\), VCC, , , \Beam_V_Over~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \Beam_V_Over~combout\,
	datad => \u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:2:DeBounce|db_p~0\,
	regout => \u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\);

-- Location: LC_X3_Y9_N5
\u_FastFault|latchFastFaults:2:DeBounce|counter~7\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\ = ((\u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\ & ((!\u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\))) # (!\u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\ & 
-- (!\u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\,
	datac => \u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\,
	datad => \u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\);

-- Location: LC_X3_Y9_N9
\u_FastFault|latchFastFaults:2:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|counter\(0) = DFFEAS(\u_FastFault|latchFastFaults:2:DeBounce|counter\(0) $ (((\u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\ & (!\u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\)) # 
-- (!\u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\ & ((!\u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\))))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d827",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:2:DeBounce|iStart~regout\,
	datab => \u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\,
	datac => \u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\,
	datad => \u_FastFault|latchFastFaults:2:DeBounce|counter\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:2:DeBounce|counter\(0));

-- Location: LC_X3_Y9_N1
\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_FastFault|latchFastFaults:2:DeBounce|counter\(0))))
-- \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_FastFault|latchFastFaults:2:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_FastFault|latchFastFaults:2:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10_cout\,
	cout0 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X3_Y9_N2
\u_FastFault|latchFastFaults:2:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|counter\(1) = DFFEAS(\u_FastFault|latchFastFaults:2:DeBounce|counter\(1) $ (\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ $ ((!\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT0_15\))), 
-- GLOBAL(\Clock~combout\), VCC, , \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\, , , , )
-- \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1\ = CARRY((\u_FastFault|latchFastFaults:2:DeBounce|counter\(1) & (\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ & !\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT0_15\)) # 
-- (!\u_FastFault|latchFastFaults:2:DeBounce|counter\(1) & ((\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\) # (!\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT0_15\))))
-- \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_FastFault|latchFastFaults:2:DeBounce|counter\(1) & (\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ & !\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT1_16\)) # 
-- (!\u_FastFault|latchFastFaults:2:DeBounce|counter\(1) & ((\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\) # (!\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:2:DeBounce|counter\(1),
	datab => \u_FastFault|latchFastFaults:2:DeBounce|db_p~0\,
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:2:DeBounce|counter\(1),
	cout0 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1\,
	cout1 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X3_Y9_N3
\u_FastFault|latchFastFaults:2:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|counter\(2) = DFFEAS(\u_FastFault|latchFastFaults:2:DeBounce|counter\(2) $ (\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ $ ((\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, 
-- , \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\, , , , )
-- \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3\ = CARRY((\u_FastFault|latchFastFaults:2:DeBounce|counter\(2) & ((!\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1\) # (!\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\))) # 
-- (!\u_FastFault|latchFastFaults:2:DeBounce|counter\(2) & (!\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ & !\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1\)))
-- \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_FastFault|latchFastFaults:2:DeBounce|counter\(2) & ((!\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1COUT1_17\) # (!\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\))) # 
-- (!\u_FastFault|latchFastFaults:2:DeBounce|counter\(2) & (!\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\ & !\u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:2:DeBounce|counter\(2),
	datab => \u_FastFault|latchFastFaults:2:DeBounce|db_p~0\,
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1\,
	cin1 => \u_FastFault|latchFastFaults:2:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:2:DeBounce|counter\(2),
	cout0 => \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3\,
	cout1 => \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X3_Y9_N4
\u_FastFault|latchFastFaults:2:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|counter\(3) = DFFEAS(\u_FastFault|latchFastFaults:2:DeBounce|counter\(3) $ (((\u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3\ $ (!\u_FastFault|latchFastFaults:2:DeBounce|db_p~0\)))), GLOBAL(\Clock~combout\), 
-- VCC, , \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:2:DeBounce|counter\(3),
	datad => \u_FastFault|latchFastFaults:2:DeBounce|db_p~0\,
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:2:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3\,
	cin1 => \u_FastFault|latchFastFaults:2:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:2:DeBounce|counter\(3));

-- Location: LC_X3_Y9_N7
\u_FastFault|latchFastFaults:2:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\ = (!\u_FastFault|latchFastFaults:2:DeBounce|counter\(2) & (!\u_FastFault|latchFastFaults:2:DeBounce|counter\(1) & (!\u_FastFault|latchFastFaults:2:DeBounce|counter\(3) & 
-- !\u_FastFault|latchFastFaults:2:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:2:DeBounce|counter\(2),
	datab => \u_FastFault|latchFastFaults:2:DeBounce|counter\(1),
	datac => \u_FastFault|latchFastFaults:2:DeBounce|counter\(3),
	datad => \u_FastFault|latchFastFaults:2:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\);

-- Location: LC_X3_Y9_N0
\u_FastFault|latchFastFaults:2:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\ = (\u_FastFault|latchFastFaults:2:DeBounce|counter\(2) & (\u_FastFault|latchFastFaults:2:DeBounce|counter\(1) & (\u_FastFault|latchFastFaults:2:DeBounce|counter\(3) & 
-- \u_FastFault|latchFastFaults:2:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:2:DeBounce|counter\(2),
	datab => \u_FastFault|latchFastFaults:2:DeBounce|counter\(1),
	datac => \u_FastFault|latchFastFaults:2:DeBounce|counter\(3),
	datad => \u_FastFault|latchFastFaults:2:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\);

-- Location: LC_X3_Y9_N6
\u_FastFault|latchFastFaults:2:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\ = DFFEAS(((\u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\) # ((!\u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\ & \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\))), 
-- GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_FastFault|latchFastFaults:2:DeBounce|Equal0~0_combout\,
	datac => \u_FastFault|latchFastFaults:2:DeBounce|Equal1~0_combout\,
	datad => \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Beam_I_Over~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Beam_I_Over,
	combout => \Beam_I_Over~combout\);

-- Location: LC_X6_Y10_N4
\u_FastFault|latchFastFaults:3:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ = (((P10_iStart) # (\u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\)))
-- \u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\ = DFFEAS(\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\, GLOBAL(\Clock~combout\), VCC, , , \Beam_I_Over~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \Beam_I_Over~combout\,
	datad => \u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:3:DeBounce|db_p~0\,
	regout => \u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\);

-- Location: LC_X6_Y10_N2
\u_FastFault|latchFastFaults:3:DeBounce|counter~7\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\ = (\u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\ & (((!\u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\)))) # (!\u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\ & 
-- (!\u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\,
	datab => \u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\,
	datad => \u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\);

-- Location: LC_X6_Y10_N5
\u_FastFault|latchFastFaults:3:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|counter\(0) = DFFEAS(\u_FastFault|latchFastFaults:3:DeBounce|counter\(0) $ (((\u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\ & ((!\u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\))) # 
-- (!\u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\ & (!\u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\,
	datab => \u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\,
	datac => \u_FastFault|latchFastFaults:3:DeBounce|counter\(0),
	datad => \u_FastFault|latchFastFaults:3:DeBounce|iStart~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:3:DeBounce|counter\(0));

-- Location: LC_X6_Y10_N6
\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT0_15\ = CARRY((\u_FastFault|latchFastFaults:3:DeBounce|counter\(0)))
-- \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT1_16\ = CARRY((\u_FastFault|latchFastFaults:3:DeBounce|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10_cout\,
	cout0 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X6_Y10_N7
\u_FastFault|latchFastFaults:3:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|counter\(1) = DFFEAS(\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ $ (\u_FastFault|latchFastFaults:3:DeBounce|counter\(1) $ ((!\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT0_15\))), 
-- GLOBAL(\Clock~combout\), VCC, , \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\, , , , )
-- \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1\ = CARRY((\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & ((!\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT0_15\) # (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(1)))) # 
-- (!\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(1) & !\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT0_15\)))
-- \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & ((!\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT1_16\) # (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(1)))) # 
-- (!\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(1) & !\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|db_p~0\,
	datab => \u_FastFault|latchFastFaults:3:DeBounce|counter\(1),
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:3:DeBounce|counter\(1),
	cout0 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1\,
	cout1 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X6_Y10_N8
\u_FastFault|latchFastFaults:3:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|counter\(2) = DFFEAS(\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ $ (\u_FastFault|latchFastFaults:3:DeBounce|counter\(2) $ ((\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, 
-- , \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\, , , , )
-- \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3\ = CARRY((\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & (\u_FastFault|latchFastFaults:3:DeBounce|counter\(2) & !\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1\)) # 
-- (!\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & ((\u_FastFault|latchFastFaults:3:DeBounce|counter\(2)) # (!\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1\))))
-- \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & (\u_FastFault|latchFastFaults:3:DeBounce|counter\(2) & !\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1COUT1_17\)) # 
-- (!\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ & ((\u_FastFault|latchFastFaults:3:DeBounce|counter\(2)) # (!\u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|db_p~0\,
	datab => \u_FastFault|latchFastFaults:3:DeBounce|counter\(2),
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1\,
	cin1 => \u_FastFault|latchFastFaults:3:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:3:DeBounce|counter\(2),
	cout0 => \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3\,
	cout1 => \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X6_Y10_N9
\u_FastFault|latchFastFaults:3:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|counter\(3) = DFFEAS(\u_FastFault|latchFastFaults:3:DeBounce|db_p~0\ $ (((\u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3\ $ (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(3))))), GLOBAL(\Clock~combout\), 
-- VCC, , \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|db_p~0\,
	datad => \u_FastFault|latchFastFaults:3:DeBounce|counter\(3),
	aclr => GND,
	ena => \u_FastFault|latchFastFaults:3:DeBounce|counter~7_combout\,
	cin0 => \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3\,
	cin1 => \u_FastFault|latchFastFaults:3:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:3:DeBounce|counter\(3));

-- Location: LC_X6_Y10_N3
\u_FastFault|latchFastFaults:3:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\ = (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(2) & (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(1) & (!\u_FastFault|latchFastFaults:3:DeBounce|counter\(0) & 
-- !\u_FastFault|latchFastFaults:3:DeBounce|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|counter\(2),
	datab => \u_FastFault|latchFastFaults:3:DeBounce|counter\(1),
	datac => \u_FastFault|latchFastFaults:3:DeBounce|counter\(0),
	datad => \u_FastFault|latchFastFaults:3:DeBounce|counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\);

-- Location: LC_X6_Y10_N1
\u_FastFault|latchFastFaults:3:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\ = (\u_FastFault|latchFastFaults:3:DeBounce|counter\(2) & (\u_FastFault|latchFastFaults:3:DeBounce|counter\(1) & (\u_FastFault|latchFastFaults:3:DeBounce|counter\(0) & 
-- \u_FastFault|latchFastFaults:3:DeBounce|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_FastFault|latchFastFaults:3:DeBounce|counter\(2),
	datab => \u_FastFault|latchFastFaults:3:DeBounce|counter\(1),
	datac => \u_FastFault|latchFastFaults:3:DeBounce|counter\(0),
	datad => \u_FastFault|latchFastFaults:3:DeBounce|counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\);

-- Location: LC_X6_Y10_N0
\u_FastFault|latchFastFaults:3:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\ = DFFEAS(((\u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\) # ((\u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\ & !\u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\))), 
-- GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_FastFault|latchFastFaults:3:DeBounce|Equal0~0_combout\,
	datac => \u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\,
	datad => \u_FastFault|latchFastFaults:3:DeBounce|Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\);

-- Location: LC_X6_Y9_N7
\u_FastFault|Fault_p~0\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|Fault_p~0_combout\ = ((\u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\) # ((\u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\) # (\u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\,
	datac => \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\,
	datad => \u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|Fault_p~0_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ClrFault~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ClrFault,
	combout => \ClrFault~combout\);

-- Location: LC_X5_Y9_N8
\u_FastFault|iFaultOut\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|iFaultOut~regout\ = DFFEAS(((\u_FastFault|Fault_p~0_combout\) # ((\u_FastFault|iFaultOut~regout\ & !\ClrFault~combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|iFaultOut~regout\,
	datab => \ClrFault~combout\,
	datad => \u_FastFault|Fault_p~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|iFaultOut~regout\);

-- Location: LC_X6_Y9_N5
\u_FastFault|iFaultVectorOut[0]~1\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|iFaultVectorOut[0]~1_combout\ = (\ClrFault~combout\) # ((\u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\) # ((\u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\) # (\u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClrFault~combout\,
	datab => \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\,
	datac => \u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\,
	datad => \u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_FastFault|iFaultVectorOut[0]~1_combout\);

-- Location: LC_X6_Y9_N8
\u_FastFault|iFaultVectorOut[0]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|iFaultVectorOut\(0) = DFFEAS((\u_FastFault|Fault_p~0_combout\ & ((\u_FastFault|iFaultVectorOut\(0)) # ((\u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\ & !\u_FastFault|iFaultOut~regout\)))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_FastFault|iFaultVectorOut[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|iFaultVectorOut\(0),
	datab => \u_FastFault|Fault_p~0_combout\,
	datac => \u_FastFault|latchFastFaults:0:DeBounce|DbOut~regout\,
	datad => \u_FastFault|iFaultOut~regout\,
	aclr => GND,
	ena => \u_FastFault|iFaultVectorOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|iFaultVectorOut\(0));

-- Location: LC_X6_Y9_N6
\u_spi|WideOr3~0\ : maxv_lcell
-- Equation(s):
-- \u_spi|WideOr3~0_combout\ = (((\u_spi|QSPI_State.Read1~regout\) # (\u_spi|QSPI_State.Readt~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_spi|QSPI_State.Read1~regout\,
	datad => \u_spi|QSPI_State.Readt~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|WideOr3~0_combout\);

-- Location: LC_X6_Y9_N9
\u_spi|DataOutSR[1]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(1) = DFFEAS((\u_spi|QSPI_State.Read1~regout\ & ((\u_spi|Selector32~0_combout\) # ((\u_RegIntf|Mux1~1\ & \u_FastFault|iFaultVectorOut\(0))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_spi|Selector32~0_combout\,
	datac => \u_spi|QSPI_State.Read1~regout\,
	datad => \u_FastFault|iFaultVectorOut\(0),
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(1));

-- Location: LC_X7_Y8_N8
\u_SysInfo|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux3~0_combout\ = (\u_spi|Address\(0) & (!\u_spi|Address\(3) & (\u_spi|Address\(1) & !\u_spi|Address\(2)))) # (!\u_spi|Address\(0) & (\u_spi|Address\(3) $ (((\u_spi|Address\(1) & \u_spi|Address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1464",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux3~0_combout\);

-- Location: LC_X7_Y9_N3
\u_SysInfo|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux3~1_combout\ = (!\u_spi|Address\(5) & (!\u_spi|Address\(6) & (!\u_spi|Address\(4) & \u_SysInfo|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(5),
	datab => \u_spi|Address\(6),
	datac => \u_spi|Address\(4),
	datad => \u_SysInfo|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux3~1_combout\);

-- Location: LC_X7_Y9_N7
\u_spi|DataOutSR[2]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(2) = DFFEAS((((\u_SysInfo|Mux3~1_combout\))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(1), , , \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datac => \u_spi|DataOutSR\(1),
	datad => \u_SysInfo|Mux3~1_combout\,
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(2));

-- Location: LC_X6_Y9_N2
\u_FastFault|iFaultVectorOut[2]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|iFaultVectorOut\(2) = DFFEAS((\u_FastFault|Fault_p~0_combout\ & ((\u_FastFault|iFaultVectorOut\(2)) # ((\u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\ & !\u_FastFault|iFaultOut~regout\)))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_FastFault|iFaultVectorOut[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|iFaultVectorOut\(2),
	datab => \u_FastFault|latchFastFaults:2:DeBounce|DbOut~regout\,
	datac => \u_FastFault|Fault_p~0_combout\,
	datad => \u_FastFault|iFaultOut~regout\,
	aclr => GND,
	ena => \u_FastFault|iFaultVectorOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|iFaultVectorOut\(2));

-- Location: LC_X7_Y9_N5
\u_spi|DataOutSR[3]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(3) = DFFEAS((\u_SysInfo|Mux13~1_combout\) # ((\u_RegIntf|Mux1~1\ & ((\u_FastFault|iFaultVectorOut\(2))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(2), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_SysInfo|Mux13~1_combout\,
	datab => \u_RegIntf|Mux1~1\,
	datac => \u_spi|DataOutSR\(2),
	datad => \u_FastFault|iFaultVectorOut\(2),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(3));

-- Location: LC_X6_Y9_N4
\u_FastFault|iFaultVectorOut[3]\ : maxv_lcell
-- Equation(s):
-- \u_FastFault|iFaultVectorOut\(3) = DFFEAS((\u_FastFault|Fault_p~0_combout\ & ((\u_FastFault|iFaultVectorOut\(3)) # ((\u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\ & !\u_FastFault|iFaultOut~regout\)))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_FastFault|iFaultVectorOut[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_FastFault|iFaultVectorOut\(3),
	datab => \u_FastFault|latchFastFaults:3:DeBounce|DbOut~regout\,
	datac => \u_FastFault|Fault_p~0_combout\,
	datad => \u_FastFault|iFaultOut~regout\,
	aclr => GND,
	ena => \u_FastFault|iFaultVectorOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_FastFault|iFaultVectorOut\(3));

-- Location: LC_X7_Y9_N0
\u_spi|DataOutSR[4]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(4) = DFFEAS((\u_SysInfo|Mux1~1_combout\) # ((\u_RegIntf|Mux1~1\ & ((\u_FastFault|iFaultVectorOut\(3))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(3), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_SysInfo|Mux1~1_combout\,
	datab => \u_RegIntf|Mux1~1\,
	datac => \u_spi|DataOutSR\(3),
	datad => \u_FastFault|iFaultVectorOut\(3),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(4));

-- Location: LC_X7_Y8_N1
\u_SysInfo|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux0~0_combout\ = (\u_spi|Address\(3) & (\u_spi|Address\(2) $ (((\u_spi|Address\(1)) # (!\u_spi|Address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(0),
	datab => \u_spi|Address\(3),
	datac => \u_spi|Address\(1),
	datad => \u_spi|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux0~0_combout\);

-- Location: LC_X7_Y9_N9
\u_SysInfo|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \u_SysInfo|Mux0~1_combout\ = (!\u_spi|Address\(5) & (!\u_spi|Address\(4) & (\u_SysInfo|Mux0~0_combout\ & !\u_spi|Address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_spi|Address\(5),
	datab => \u_spi|Address\(4),
	datac => \u_SysInfo|Mux0~0_combout\,
	datad => \u_spi|Address\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_SysInfo|Mux0~1_combout\);

-- Location: LC_X7_Y9_N1
\u_spi|DataOutSR[5]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(5) = DFFEAS((((\u_SysInfo|Mux0~1_combout\))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(4), , , \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	datac => \u_spi|DataOutSR\(4),
	datad => \u_SysInfo|Mux0~1_combout\,
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(5));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mod_Fault~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Mod_Fault,
	combout => \Mod_Fault~combout\);

-- Location: LC_X1_Y6_N2
\u_ModFlt|DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|db_p~0\ = (((P12_iStart) # (\u_ModFlt|DeBounce|Equal1~0_combout\)))
-- \u_ModFlt|DeBounce|iStart~regout\ = DFFEAS(\u_ModFlt|DeBounce|db_p~0\, GLOBAL(\Clock~combout\), VCC, , , \Mod_Fault~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \Mod_Fault~combout\,
	datad => \u_ModFlt|DeBounce|Equal1~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_ModFlt|DeBounce|db_p~0\,
	regout => \u_ModFlt|DeBounce|iStart~regout\);

-- Location: LC_X1_Y6_N0
\u_ModFlt|DeBounce|counter~7\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|counter~7_combout\ = (\u_ModFlt|DeBounce|iStart~regout\ & (((!\u_ModFlt|DeBounce|Equal0~0_combout\)))) # (!\u_ModFlt|DeBounce|iStart~regout\ & (((!\u_ModFlt|DeBounce|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ModFlt|DeBounce|iStart~regout\,
	datac => \u_ModFlt|DeBounce|Equal0~0_combout\,
	datad => \u_ModFlt|DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_ModFlt|DeBounce|counter~7_combout\);

-- Location: LC_X1_Y6_N9
\u_ModFlt|DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|counter\(0) = DFFEAS(\u_ModFlt|DeBounce|counter\(0) $ (((\u_ModFlt|DeBounce|iStart~regout\ & (!\u_ModFlt|DeBounce|Equal0~0_combout\)) # (!\u_ModFlt|DeBounce|iStart~regout\ & ((!\u_ModFlt|DeBounce|Equal1~0_combout\))))), 
-- GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c93",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_ModFlt|DeBounce|Equal0~0_combout\,
	datab => \u_ModFlt|DeBounce|counter\(0),
	datac => \u_ModFlt|DeBounce|iStart~regout\,
	datad => \u_ModFlt|DeBounce|Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ModFlt|DeBounce|counter\(0));

-- Location: LC_X1_Y6_N5
\u_ModFlt|DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_ModFlt|DeBounce|counter\(0))))
-- \u_ModFlt|DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_ModFlt|DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_ModFlt|DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_ModFlt|DeBounce|counter[1]~10_cout\,
	cout0 => \u_ModFlt|DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_ModFlt|DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X1_Y6_N6
\u_ModFlt|DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|counter\(1) = DFFEAS(\u_ModFlt|DeBounce|counter\(1) $ (\u_ModFlt|DeBounce|db_p~0\ $ ((!\u_ModFlt|DeBounce|counter[1]~10COUT0_15\))), GLOBAL(\Clock~combout\), VCC, , \u_ModFlt|DeBounce|counter~7_combout\, , , , )
-- \u_ModFlt|DeBounce|counter[1]~1\ = CARRY((\u_ModFlt|DeBounce|counter\(1) & (\u_ModFlt|DeBounce|db_p~0\ & !\u_ModFlt|DeBounce|counter[1]~10COUT0_15\)) # (!\u_ModFlt|DeBounce|counter\(1) & ((\u_ModFlt|DeBounce|db_p~0\) # 
-- (!\u_ModFlt|DeBounce|counter[1]~10COUT0_15\))))
-- \u_ModFlt|DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_ModFlt|DeBounce|counter\(1) & (\u_ModFlt|DeBounce|db_p~0\ & !\u_ModFlt|DeBounce|counter[1]~10COUT1_16\)) # (!\u_ModFlt|DeBounce|counter\(1) & ((\u_ModFlt|DeBounce|db_p~0\) # 
-- (!\u_ModFlt|DeBounce|counter[1]~10COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_ModFlt|DeBounce|counter\(1),
	datab => \u_ModFlt|DeBounce|db_p~0\,
	aclr => GND,
	ena => \u_ModFlt|DeBounce|counter~7_combout\,
	cin0 => \u_ModFlt|DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_ModFlt|DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ModFlt|DeBounce|counter\(1),
	cout0 => \u_ModFlt|DeBounce|counter[1]~1\,
	cout1 => \u_ModFlt|DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X1_Y6_N7
\u_ModFlt|DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|counter\(2) = DFFEAS(\u_ModFlt|DeBounce|counter\(2) $ (\u_ModFlt|DeBounce|db_p~0\ $ ((\u_ModFlt|DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, , \u_ModFlt|DeBounce|counter~7_combout\, , , , )
-- \u_ModFlt|DeBounce|counter[2]~3\ = CARRY((\u_ModFlt|DeBounce|counter\(2) & ((!\u_ModFlt|DeBounce|counter[1]~1\) # (!\u_ModFlt|DeBounce|db_p~0\))) # (!\u_ModFlt|DeBounce|counter\(2) & (!\u_ModFlt|DeBounce|db_p~0\ & !\u_ModFlt|DeBounce|counter[1]~1\)))
-- \u_ModFlt|DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_ModFlt|DeBounce|counter\(2) & ((!\u_ModFlt|DeBounce|counter[1]~1COUT1_17\) # (!\u_ModFlt|DeBounce|db_p~0\))) # (!\u_ModFlt|DeBounce|counter\(2) & (!\u_ModFlt|DeBounce|db_p~0\ & 
-- !\u_ModFlt|DeBounce|counter[1]~1COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_ModFlt|DeBounce|counter\(2),
	datab => \u_ModFlt|DeBounce|db_p~0\,
	aclr => GND,
	ena => \u_ModFlt|DeBounce|counter~7_combout\,
	cin0 => \u_ModFlt|DeBounce|counter[1]~1\,
	cin1 => \u_ModFlt|DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ModFlt|DeBounce|counter\(2),
	cout0 => \u_ModFlt|DeBounce|counter[2]~3\,
	cout1 => \u_ModFlt|DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X1_Y6_N1
\u_ModFlt|DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|Equal1~0_combout\ = (!\u_ModFlt|DeBounce|counter\(3) & (!\u_ModFlt|DeBounce|counter\(2) & (!\u_ModFlt|DeBounce|counter\(1) & !\u_ModFlt|DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ModFlt|DeBounce|counter\(3),
	datab => \u_ModFlt|DeBounce|counter\(2),
	datac => \u_ModFlt|DeBounce|counter\(1),
	datad => \u_ModFlt|DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_ModFlt|DeBounce|Equal1~0_combout\);

-- Location: LC_X1_Y6_N8
\u_ModFlt|DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|counter\(3) = DFFEAS((\u_ModFlt|DeBounce|db_p~0\ $ (\u_ModFlt|DeBounce|counter[2]~3\ $ (!\u_ModFlt|DeBounce|counter\(3)))), GLOBAL(\Clock~combout\), VCC, , \u_ModFlt|DeBounce|counter~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_ModFlt|DeBounce|db_p~0\,
	datad => \u_ModFlt|DeBounce|counter\(3),
	aclr => GND,
	ena => \u_ModFlt|DeBounce|counter~7_combout\,
	cin0 => \u_ModFlt|DeBounce|counter[2]~3\,
	cin1 => \u_ModFlt|DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ModFlt|DeBounce|counter\(3));

-- Location: LC_X1_Y6_N4
\u_ModFlt|DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|Equal0~0_combout\ = (\u_ModFlt|DeBounce|counter\(3) & (\u_ModFlt|DeBounce|counter\(2) & (\u_ModFlt|DeBounce|counter\(1) & \u_ModFlt|DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ModFlt|DeBounce|counter\(3),
	datab => \u_ModFlt|DeBounce|counter\(2),
	datac => \u_ModFlt|DeBounce|counter\(1),
	datad => \u_ModFlt|DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_ModFlt|DeBounce|Equal0~0_combout\);

-- Location: LC_X1_Y6_N3
\u_ModFlt|DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|DeBounce|DbOut~regout\ = DFFEAS(((\u_ModFlt|DeBounce|Equal0~0_combout\) # ((\u_ModFlt|DeBounce|DbOut~regout\ & !\u_ModFlt|DeBounce|Equal1~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_ModFlt|DeBounce|DbOut~regout\,
	datac => \u_ModFlt|DeBounce|Equal0~0_combout\,
	datad => \u_ModFlt|DeBounce|Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ModFlt|DeBounce|DbOut~regout\);

-- Location: LC_X5_Y9_N6
\u_ModFlt|ModFaultOut\ : maxv_lcell
-- Equation(s):
-- \u_ModFlt|ModFaultOut~regout\ = DFFEAS(((\u_ModFlt|DeBounce|DbOut~regout\) # ((\u_ModFlt|ModFaultOut~regout\ & !\ClrFault~combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_ModFlt|ModFaultOut~regout\,
	datac => \u_ModFlt|DeBounce|DbOut~regout\,
	datad => \ClrFault~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_ModFlt|ModFaultOut~regout\);

-- Location: LC_X10_Y9_N0
\u_spi|DataOutSR[6]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(6) = DFFEAS((\u_SysInfo|Mux7~1\) # ((\u_RegIntf|Mux1~1\ & ((\u_ModFlt|ModFaultOut~regout\)))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(5), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_SysInfo|Mux7~1\,
	datac => \u_spi|DataOutSR\(5),
	datad => \u_ModFlt|ModFaultOut~regout\,
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(6));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Motor_Not_Detuned~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Motor_Not_Detuned,
	combout => \n_Motor_Not_Detuned~combout\);

-- Location: LC_X8_Y11_N2
\u_clkDiv|Add1~65\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~65_combout\ = ((!\u_clkDiv|Clk10khzCntr\(0)))
-- \u_clkDiv|Add1~67\ = CARRY(((\u_clkDiv|Clk10khzCntr\(0))))
-- \u_clkDiv|Add1~67COUT1_81\ = CARRY(((\u_clkDiv|Clk10khzCntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~65_combout\,
	cout0 => \u_clkDiv|Add1~67\,
	cout1 => \u_clkDiv|Add1~67COUT1_81\);

-- Location: LC_X7_Y11_N7
\u_clkDiv|Clk10khzCntr[0]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(0) = DFFEAS((((\u_clkDiv|Add1~65_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Add1~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(0));

-- Location: LC_X8_Y11_N3
\u_clkDiv|Add1~60\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~60_combout\ = \u_clkDiv|Clk10khzCntr\(1) $ ((((\u_clkDiv|Add1~67\))))
-- \u_clkDiv|Add1~62\ = CARRY(((!\u_clkDiv|Add1~67\)) # (!\u_clkDiv|Clk10khzCntr\(1)))
-- \u_clkDiv|Add1~62COUT1_82\ = CARRY(((!\u_clkDiv|Add1~67COUT1_81\)) # (!\u_clkDiv|Clk10khzCntr\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk10khzCntr\(1),
	cin0 => \u_clkDiv|Add1~67\,
	cin1 => \u_clkDiv|Add1~67COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~60_combout\,
	cout0 => \u_clkDiv|Add1~62\,
	cout1 => \u_clkDiv|Add1~62COUT1_82\);

-- Location: LC_X8_Y11_N5
\u_clkDiv|Add1~70\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~70_combout\ = (\u_clkDiv|Clk10khzCntr\(3) $ ((\u_clkDiv|Add1~77\)))
-- \u_clkDiv|Add1~72\ = CARRY(((!\u_clkDiv|Add1~77\) # (!\u_clkDiv|Clk10khzCntr\(3))))
-- \u_clkDiv|Add1~72COUT1_83\ = CARRY(((!\u_clkDiv|Add1~77\) # (!\u_clkDiv|Clk10khzCntr\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(3),
	cin => \u_clkDiv|Add1~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~70_combout\,
	cout0 => \u_clkDiv|Add1~72\,
	cout1 => \u_clkDiv|Add1~72COUT1_83\);

-- Location: LC_X7_Y11_N0
\u_clkDiv|Clk10khzCntr[3]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(3) = DFFEAS((((\u_clkDiv|Add1~70_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Add1~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(3));

-- Location: LC_X7_Y11_N1
\u_clkDiv|Clk10khzCntr[1]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal1~3\ = (!\u_clkDiv|Clk10khzCntr\(2) & (\u_clkDiv|Clk10khzCntr\(0) & (C1_Clk10khzCntr[1] & !\u_clkDiv|Clk10khzCntr\(3))))
-- \u_clkDiv|Clk10khzCntr\(1) = DFFEAS(\u_clkDiv|Equal1~3\, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add1~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk10khzCntr\(2),
	datab => \u_clkDiv|Clk10khzCntr\(0),
	datac => \u_clkDiv|Add1~60_combout\,
	datad => \u_clkDiv|Clk10khzCntr\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal1~3\,
	regout => \u_clkDiv|Clk10khzCntr\(1));

-- Location: LC_X8_Y11_N4
\u_clkDiv|Add1~75\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~75_combout\ = (\u_clkDiv|Clk10khzCntr\(2) $ ((!\u_clkDiv|Add1~62\)))
-- \u_clkDiv|Add1~77\ = CARRY(((\u_clkDiv|Clk10khzCntr\(2) & !\u_clkDiv|Add1~62COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(2),
	cin0 => \u_clkDiv|Add1~62\,
	cin1 => \u_clkDiv|Add1~62COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~75_combout\,
	cout => \u_clkDiv|Add1~77\);

-- Location: LC_X8_Y11_N6
\u_clkDiv|Add1~50\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~50_combout\ = (\u_clkDiv|Clk10khzCntr\(4) $ ((!(!\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~72\) # (\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~72COUT1_83\))))
-- \u_clkDiv|Add1~52\ = CARRY(((\u_clkDiv|Clk10khzCntr\(4) & !\u_clkDiv|Add1~72\)))
-- \u_clkDiv|Add1~52COUT1_84\ = CARRY(((\u_clkDiv|Clk10khzCntr\(4) & !\u_clkDiv|Add1~72COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(4),
	cin => \u_clkDiv|Add1~77\,
	cin0 => \u_clkDiv|Add1~72\,
	cin1 => \u_clkDiv|Add1~72COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~50_combout\,
	cout0 => \u_clkDiv|Add1~52\,
	cout1 => \u_clkDiv|Add1~52COUT1_84\);

-- Location: LC_X7_Y11_N3
\u_clkDiv|Clk10khzCntr[4]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(4) = DFFEAS((((\u_clkDiv|Add1~50_combout\ & !\u_clkDiv|Equal1~4\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add1~50_combout\,
	datad => \u_clkDiv|Equal1~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(4));

-- Location: LC_X8_Y11_N7
\u_clkDiv|Add1~55\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~55_combout\ = (\u_clkDiv|Clk10khzCntr\(5) $ (((!\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~52\) # (\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~52COUT1_84\))))
-- \u_clkDiv|Add1~57\ = CARRY(((!\u_clkDiv|Add1~52\) # (!\u_clkDiv|Clk10khzCntr\(5))))
-- \u_clkDiv|Add1~57COUT1_85\ = CARRY(((!\u_clkDiv|Add1~52COUT1_84\) # (!\u_clkDiv|Clk10khzCntr\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(5),
	cin => \u_clkDiv|Add1~77\,
	cin0 => \u_clkDiv|Add1~52\,
	cin1 => \u_clkDiv|Add1~52COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~55_combout\,
	cout0 => \u_clkDiv|Add1~57\,
	cout1 => \u_clkDiv|Add1~57COUT1_85\);

-- Location: LC_X7_Y11_N6
\u_clkDiv|Clk10khzCntr[5]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal1~2\ = (\u_clkDiv|Clk10khzCntr\(6) & (\u_clkDiv|Clk10khzCntr\(7) & (!C1_Clk10khzCntr[5] & \u_clkDiv|Clk10khzCntr\(4))))
-- \u_clkDiv|Clk10khzCntr\(5) = DFFEAS(\u_clkDiv|Equal1~2\, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add1~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk10khzCntr\(6),
	datab => \u_clkDiv|Clk10khzCntr\(7),
	datac => \u_clkDiv|Add1~55_combout\,
	datad => \u_clkDiv|Clk10khzCntr\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal1~2\,
	regout => \u_clkDiv|Clk10khzCntr\(5));

-- Location: LC_X8_Y11_N8
\u_clkDiv|Add1~45\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~45_combout\ = \u_clkDiv|Clk10khzCntr\(6) $ ((((!(!\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~57\) # (\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~57COUT1_85\)))))
-- \u_clkDiv|Add1~47\ = CARRY((\u_clkDiv|Clk10khzCntr\(6) & ((!\u_clkDiv|Add1~57\))))
-- \u_clkDiv|Add1~47COUT1_86\ = CARRY((\u_clkDiv|Clk10khzCntr\(6) & ((!\u_clkDiv|Add1~57COUT1_85\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk10khzCntr\(6),
	cin => \u_clkDiv|Add1~77\,
	cin0 => \u_clkDiv|Add1~57\,
	cin1 => \u_clkDiv|Add1~57COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~45_combout\,
	cout0 => \u_clkDiv|Add1~47\,
	cout1 => \u_clkDiv|Add1~47COUT1_86\);

-- Location: LC_X8_Y11_N9
\u_clkDiv|Add1~40\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~40_combout\ = (\u_clkDiv|Clk10khzCntr\(7) $ (((!\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~47\) # (\u_clkDiv|Add1~77\ & \u_clkDiv|Add1~47COUT1_86\))))
-- \u_clkDiv|Add1~42\ = CARRY(((!\u_clkDiv|Add1~47COUT1_86\) # (!\u_clkDiv|Clk10khzCntr\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(7),
	cin => \u_clkDiv|Add1~77\,
	cin0 => \u_clkDiv|Add1~47\,
	cin1 => \u_clkDiv|Add1~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~40_combout\,
	cout => \u_clkDiv|Add1~42\);

-- Location: LC_X7_Y11_N2
\u_clkDiv|Clk10khzCntr[7]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(7) = DFFEAS((((\u_clkDiv|Add1~40_combout\ & !\u_clkDiv|Equal1~4\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add1~40_combout\,
	datad => \u_clkDiv|Equal1~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(7));

-- Location: LC_X9_Y11_N0
\u_clkDiv|Add1~35\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~35_combout\ = (\u_clkDiv|Clk10khzCntr\(8) $ ((!\u_clkDiv|Add1~42\)))
-- \u_clkDiv|Add1~37\ = CARRY(((\u_clkDiv|Clk10khzCntr\(8) & !\u_clkDiv|Add1~42\)))
-- \u_clkDiv|Add1~37COUT1_87\ = CARRY(((\u_clkDiv|Clk10khzCntr\(8) & !\u_clkDiv|Add1~42\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(8),
	cin => \u_clkDiv|Add1~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~35_combout\,
	cout0 => \u_clkDiv|Add1~37\,
	cout1 => \u_clkDiv|Add1~37COUT1_87\);

-- Location: LC_X10_Y11_N2
\u_clkDiv|Clk10khzCntr[8]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(8) = DFFEAS((((\u_clkDiv|Add1~35_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Add1~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(8));

-- Location: LC_X9_Y11_N1
\u_clkDiv|Add1~30\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~30_combout\ = (\u_clkDiv|Clk10khzCntr\(9) $ (((!\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~37\) # (\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~37COUT1_87\))))
-- \u_clkDiv|Add1~32\ = CARRY(((!\u_clkDiv|Add1~37\) # (!\u_clkDiv|Clk10khzCntr\(9))))
-- \u_clkDiv|Add1~32COUT1_88\ = CARRY(((!\u_clkDiv|Add1~37COUT1_87\) # (!\u_clkDiv|Clk10khzCntr\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(9),
	cin => \u_clkDiv|Add1~42\,
	cin0 => \u_clkDiv|Add1~37\,
	cin1 => \u_clkDiv|Add1~37COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~30_combout\,
	cout0 => \u_clkDiv|Add1~32\,
	cout1 => \u_clkDiv|Add1~32COUT1_88\);

-- Location: LC_X10_Y11_N5
\u_clkDiv|Clk10khzCntr[9]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(9) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add1~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add1~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(9));

-- Location: LC_X9_Y11_N2
\u_clkDiv|Add1~25\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~25_combout\ = (\u_clkDiv|Clk10khzCntr\(10) $ ((!(!\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~32\) # (\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~32COUT1_88\))))
-- \u_clkDiv|Add1~27\ = CARRY(((\u_clkDiv|Clk10khzCntr\(10) & !\u_clkDiv|Add1~32\)))
-- \u_clkDiv|Add1~27COUT1_89\ = CARRY(((\u_clkDiv|Clk10khzCntr\(10) & !\u_clkDiv|Add1~32COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(10),
	cin => \u_clkDiv|Add1~42\,
	cin0 => \u_clkDiv|Add1~32\,
	cin1 => \u_clkDiv|Add1~32COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~25_combout\,
	cout0 => \u_clkDiv|Add1~27\,
	cout1 => \u_clkDiv|Add1~27COUT1_89\);

-- Location: LC_X10_Y11_N4
\u_clkDiv|Clk10khzCntr[10]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(10) = DFFEAS((((\u_clkDiv|Add1~25_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Add1~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(10));

-- Location: LC_X9_Y11_N3
\u_clkDiv|Add1~20\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~20_combout\ = (\u_clkDiv|Clk10khzCntr\(11) $ (((!\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~27\) # (\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~27COUT1_89\))))
-- \u_clkDiv|Add1~22\ = CARRY(((!\u_clkDiv|Add1~27\) # (!\u_clkDiv|Clk10khzCntr\(11))))
-- \u_clkDiv|Add1~22COUT1_90\ = CARRY(((!\u_clkDiv|Add1~27COUT1_89\) # (!\u_clkDiv|Clk10khzCntr\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(11),
	cin => \u_clkDiv|Add1~42\,
	cin0 => \u_clkDiv|Add1~27\,
	cin1 => \u_clkDiv|Add1~27COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~20_combout\,
	cout0 => \u_clkDiv|Add1~22\,
	cout1 => \u_clkDiv|Add1~22COUT1_90\);

-- Location: LC_X7_Y11_N8
\u_clkDiv|Clk10khzCntr[11]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal1~1\ = (!\u_clkDiv|Clk10khzCntr\(10) & (!\u_clkDiv|Clk10khzCntr\(8) & (!C1_Clk10khzCntr[11] & !\u_clkDiv|Clk10khzCntr\(9))))
-- \u_clkDiv|Clk10khzCntr\(11) = DFFEAS(\u_clkDiv|Equal1~1\, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add1~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk10khzCntr\(10),
	datab => \u_clkDiv|Clk10khzCntr\(8),
	datac => \u_clkDiv|Add1~20_combout\,
	datad => \u_clkDiv|Clk10khzCntr\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal1~1\,
	regout => \u_clkDiv|Clk10khzCntr\(11));

-- Location: LC_X9_Y11_N4
\u_clkDiv|Add1~5\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~5_combout\ = \u_clkDiv|Clk10khzCntr\(12) $ ((((!(!\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~22\) # (\u_clkDiv|Add1~42\ & \u_clkDiv|Add1~22COUT1_90\)))))
-- \u_clkDiv|Add1~7\ = CARRY((\u_clkDiv|Clk10khzCntr\(12) & ((!\u_clkDiv|Add1~22COUT1_90\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk10khzCntr\(12),
	cin => \u_clkDiv|Add1~42\,
	cin0 => \u_clkDiv|Add1~22\,
	cin1 => \u_clkDiv|Add1~22COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~5_combout\,
	cout => \u_clkDiv|Add1~7\);

-- Location: LC_X8_Y11_N1
\u_clkDiv|Clk10khzCntr[12]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(12) = DFFEAS((((!\u_clkDiv|Equal1~4\ & \u_clkDiv|Add1~5_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Equal1~4\,
	datad => \u_clkDiv|Add1~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(12));

-- Location: LC_X9_Y11_N5
\u_clkDiv|Add1~0\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~0_combout\ = (\u_clkDiv|Clk10khzCntr\(13) $ ((\u_clkDiv|Add1~7\)))
-- \u_clkDiv|Add1~2\ = CARRY(((!\u_clkDiv|Add1~7\) # (!\u_clkDiv|Clk10khzCntr\(13))))
-- \u_clkDiv|Add1~2COUT1_91\ = CARRY(((!\u_clkDiv|Add1~7\) # (!\u_clkDiv|Clk10khzCntr\(13))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10khzCntr\(13),
	cin => \u_clkDiv|Add1~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~0_combout\,
	cout0 => \u_clkDiv|Add1~2\,
	cout1 => \u_clkDiv|Add1~2COUT1_91\);

-- Location: LC_X9_Y11_N9
\u_clkDiv|Clk10khzCntr[13]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(13) = DFFEAS((((\u_clkDiv|Add1~0_combout\ & !\u_clkDiv|Equal1~4\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add1~0_combout\,
	datad => \u_clkDiv|Equal1~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(13));

-- Location: LC_X9_Y11_N6
\u_clkDiv|Add1~15\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~15_combout\ = \u_clkDiv|Clk10khzCntr\(14) $ ((((!(!\u_clkDiv|Add1~7\ & \u_clkDiv|Add1~2\) # (\u_clkDiv|Add1~7\ & \u_clkDiv|Add1~2COUT1_91\)))))
-- \u_clkDiv|Add1~17\ = CARRY((\u_clkDiv|Clk10khzCntr\(14) & ((!\u_clkDiv|Add1~2\))))
-- \u_clkDiv|Add1~17COUT1_92\ = CARRY((\u_clkDiv|Clk10khzCntr\(14) & ((!\u_clkDiv|Add1~2COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk10khzCntr\(14),
	cin => \u_clkDiv|Add1~7\,
	cin0 => \u_clkDiv|Add1~2\,
	cin1 => \u_clkDiv|Add1~2COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~15_combout\,
	cout0 => \u_clkDiv|Add1~17\,
	cout1 => \u_clkDiv|Add1~17COUT1_92\);

-- Location: LC_X9_Y11_N8
\u_clkDiv|Clk10khzCntr[14]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(14) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add1~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add1~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(14));

-- Location: LC_X8_Y11_N0
\u_clkDiv|Clk10khzCntr[15]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal1~0\ = (\u_clkDiv|Clk10khzCntr\(12) & (\u_clkDiv|Clk10khzCntr\(13) & (!C1_Clk10khzCntr[15] & !\u_clkDiv|Clk10khzCntr\(14))))
-- \u_clkDiv|Clk10khzCntr\(15) = DFFEAS(\u_clkDiv|Equal1~0\, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add1~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk10khzCntr\(12),
	datab => \u_clkDiv|Clk10khzCntr\(13),
	datac => \u_clkDiv|Add1~10_combout\,
	datad => \u_clkDiv|Clk10khzCntr\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal1~0\,
	regout => \u_clkDiv|Clk10khzCntr\(15));

-- Location: LC_X9_Y11_N7
\u_clkDiv|Add1~10\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add1~10_combout\ = (((!\u_clkDiv|Add1~7\ & \u_clkDiv|Add1~17\) # (\u_clkDiv|Add1~7\ & \u_clkDiv|Add1~17COUT1_92\) $ (\u_clkDiv|Clk10khzCntr\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_clkDiv|Clk10khzCntr\(15),
	cin => \u_clkDiv|Add1~7\,
	cin0 => \u_clkDiv|Add1~17\,
	cin1 => \u_clkDiv|Add1~17COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add1~10_combout\);

-- Location: LC_X7_Y11_N9
\u_clkDiv|iClk10KhzEn\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal1~4\ = (\u_clkDiv|Equal1~2\ & (\u_clkDiv|Equal1~3\ & (\u_clkDiv|Equal1~0\ & \u_clkDiv|Equal1~1\)))
-- \u_clkDiv|iClk10KhzEn~regout\ = DFFEAS(\u_clkDiv|Equal1~4\, GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal1~2\,
	datab => \u_clkDiv|Equal1~3\,
	datac => \u_clkDiv|Equal1~0\,
	datad => \u_clkDiv|Equal1~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal1~4\,
	regout => \u_clkDiv|iClk10KhzEn~regout\);

-- Location: LC_X7_Y11_N4
\u_clkDiv|Clk10khzCntr[2]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(2) = DFFEAS((((\u_clkDiv|Add1~75_combout\ & !\u_clkDiv|Equal1~4\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add1~75_combout\,
	datad => \u_clkDiv|Equal1~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(2));

-- Location: LC_X7_Y11_N5
\u_clkDiv|Clk10khzCntr[6]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10khzCntr\(6) = DFFEAS(((\u_clkDiv|Add1~45_combout\ & ((!\u_clkDiv|Equal1~4\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_clkDiv|Add1~45_combout\,
	datad => \u_clkDiv|Equal1~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10khzCntr\(6));

-- Location: LC_X8_Y10_N9
\u_clkDiv|Clk1khzCntr[0]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk1khzCntr\(0) = DFFEAS((((!\u_clkDiv|Clk1khzCntr\(0)))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk10KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Clk1khzCntr\(0),
	aclr => GND,
	ena => \u_clkDiv|iClk10KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk1khzCntr\(0));

-- Location: LC_X8_Y10_N2
\u_clkDiv|Clk1khzCntr[2]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk1khzCntr\(2) = DFFEAS(\u_clkDiv|Clk1khzCntr\(2) $ (((\u_clkDiv|Clk1khzCntr\(1) & (\u_clkDiv|Clk1khzCntr\(0) & \u_clkDiv|iClk10KhzEn~regout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk1khzCntr\(1),
	datab => \u_clkDiv|Clk1khzCntr\(0),
	datac => \u_clkDiv|iClk10KhzEn~regout\,
	datad => \u_clkDiv|Clk1khzCntr\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk1khzCntr\(2));

-- Location: LC_X8_Y10_N4
\u_clkDiv|Clk1khzCntr[1]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk1khzCntr\(1) = DFFEAS((\u_clkDiv|Clk1khzCntr\(0) & (!\u_clkDiv|Clk1khzCntr\(1) & ((\u_clkDiv|Clk1khzCntr\(2)) # (!\u_clkDiv|Clk1khzCntr\(3))))) # (!\u_clkDiv|Clk1khzCntr\(0) & (((\u_clkDiv|Clk1khzCntr\(1))))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_clkDiv|iClk10KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c34",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk1khzCntr\(3),
	datab => \u_clkDiv|Clk1khzCntr\(0),
	datac => \u_clkDiv|Clk1khzCntr\(1),
	datad => \u_clkDiv|Clk1khzCntr\(2),
	aclr => GND,
	ena => \u_clkDiv|iClk10KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk1khzCntr\(1));

-- Location: LC_X8_Y10_N8
\u_clkDiv|Clk1khzCntr[3]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk1khzCntr\(3) = DFFEAS((\u_clkDiv|Clk1khzCntr\(3) & ((\u_clkDiv|Clk1khzCntr\(1) $ (\u_clkDiv|Clk1khzCntr\(2))) # (!\u_clkDiv|Clk1khzCntr\(0)))) # (!\u_clkDiv|Clk1khzCntr\(3) & (\u_clkDiv|Clk1khzCntr\(0) & (\u_clkDiv|Clk1khzCntr\(1) & 
-- \u_clkDiv|Clk1khzCntr\(2)))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk10KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aa2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk1khzCntr\(3),
	datab => \u_clkDiv|Clk1khzCntr\(0),
	datac => \u_clkDiv|Clk1khzCntr\(1),
	datad => \u_clkDiv|Clk1khzCntr\(2),
	aclr => GND,
	ena => \u_clkDiv|iClk10KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk1khzCntr\(3));

-- Location: LC_X8_Y10_N5
\u_clkDiv|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal2~0_combout\ = (\u_clkDiv|Clk1khzCntr\(3) & (\u_clkDiv|Clk1khzCntr\(0) & (!\u_clkDiv|Clk1khzCntr\(1) & !\u_clkDiv|Clk1khzCntr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk1khzCntr\(3),
	datab => \u_clkDiv|Clk1khzCntr\(0),
	datac => \u_clkDiv|Clk1khzCntr\(1),
	datad => \u_clkDiv|Clk1khzCntr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal2~0_combout\);

-- Location: LC_X8_Y10_N6
\u_clkDiv|iClk1KhzEn\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|iClk1KhzEn~regout\ = DFFEAS((((\u_clkDiv|iClk10KhzEn~regout\ & \u_clkDiv|Equal2~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|iClk10KhzEn~regout\,
	datad => \u_clkDiv|Equal2~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|iClk1KhzEn~regout\);

-- Location: LC_X10_Y8_N1
\u_Sled|latchSled:0:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|iStart~regout\ = DFFEAS((((!\n_Motor_Not_Detuned~combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \n_Motor_Not_Detuned~combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:0:DeBounce|iStart~regout\);

-- Location: LC_X10_Y8_N5
\u_Sled|latchSled:0:DeBounce|counter[3]~6\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\ = (\u_clkDiv|iClk1KhzEn~regout\ & ((\u_Sled|latchSled:0:DeBounce|iStart~regout\ & ((!\u_Sled|latchSled:0:DeBounce|Equal0~0_combout\))) # (!\u_Sled|latchSled:0:DeBounce|iStart~regout\ & 
-- (!\u_Sled|latchSled:0:DeBounce|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:0:DeBounce|iStart~regout\,
	datab => \u_Sled|latchSled:0:DeBounce|Equal1~0_combout\,
	datac => \u_Sled|latchSled:0:DeBounce|Equal0~0_combout\,
	datad => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\);

-- Location: LC_X11_Y8_N2
\u_Sled|latchSled:0:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|counter\(0) = DFFEAS((\u_Sled|latchSled:0:DeBounce|counter\(0) $ (((\u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:0:DeBounce|counter\(0),
	datad => \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:0:DeBounce|counter\(0));

-- Location: LC_X10_Y8_N6
\u_Sled|latchSled:0:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_Sled|latchSled:0:DeBounce|counter\(0))))
-- \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_Sled|latchSled:0:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:0:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_Sled|latchSled:0:DeBounce|counter[1]~10_cout\,
	cout0 => \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X10_Y8_N7
\u_Sled|latchSled:0:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|counter\(1) = DFFEAS(\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ $ (\u_Sled|latchSled:0:DeBounce|counter\(1) $ ((!\u_Sled|latchSled:0:DeBounce|counter[1]~10COUT0_15\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:0:DeBounce|counter[1]~1\ = CARRY((\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & ((!\u_Sled|latchSled:0:DeBounce|counter[1]~10COUT0_15\) # (!\u_Sled|latchSled:0:DeBounce|counter\(1)))) # (!\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & 
-- (!\u_Sled|latchSled:0:DeBounce|counter\(1) & !\u_Sled|latchSled:0:DeBounce|counter[1]~10COUT0_15\)))
-- \u_Sled|latchSled:0:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & ((!\u_Sled|latchSled:0:DeBounce|counter[1]~10COUT1_16\) # (!\u_Sled|latchSled:0:DeBounce|counter\(1)))) # 
-- (!\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & (!\u_Sled|latchSled:0:DeBounce|counter\(1) & !\u_Sled|latchSled:0:DeBounce|counter[1]~10COUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:0:DeBounce|db_p~0_combout\,
	datab => \u_Sled|latchSled:0:DeBounce|counter\(1),
	aclr => GND,
	ena => \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_Sled|latchSled:0:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:0:DeBounce|counter\(1),
	cout0 => \u_Sled|latchSled:0:DeBounce|counter[1]~1\,
	cout1 => \u_Sled|latchSled:0:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X10_Y8_N8
\u_Sled|latchSled:0:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|counter\(2) = DFFEAS(\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ $ (\u_Sled|latchSled:0:DeBounce|counter\(2) $ ((\u_Sled|latchSled:0:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:0:DeBounce|counter[2]~3\ = CARRY((\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & (\u_Sled|latchSled:0:DeBounce|counter\(2) & !\u_Sled|latchSled:0:DeBounce|counter[1]~1\)) # (!\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & 
-- ((\u_Sled|latchSled:0:DeBounce|counter\(2)) # (!\u_Sled|latchSled:0:DeBounce|counter[1]~1\))))
-- \u_Sled|latchSled:0:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & (\u_Sled|latchSled:0:DeBounce|counter\(2) & !\u_Sled|latchSled:0:DeBounce|counter[1]~1COUT1_17\)) # (!\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ & 
-- ((\u_Sled|latchSled:0:DeBounce|counter\(2)) # (!\u_Sled|latchSled:0:DeBounce|counter[1]~1COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:0:DeBounce|db_p~0_combout\,
	datab => \u_Sled|latchSled:0:DeBounce|counter\(2),
	aclr => GND,
	ena => \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:0:DeBounce|counter[1]~1\,
	cin1 => \u_Sled|latchSled:0:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:0:DeBounce|counter\(2),
	cout0 => \u_Sled|latchSled:0:DeBounce|counter[2]~3\,
	cout1 => \u_Sled|latchSled:0:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X10_Y8_N9
\u_Sled|latchSled:0:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|counter\(3) = DFFEAS(\u_Sled|latchSled:0:DeBounce|db_p~0_combout\ $ (((\u_Sled|latchSled:0:DeBounce|counter[2]~3\ $ (!\u_Sled|latchSled:0:DeBounce|counter\(3))))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:0:DeBounce|db_p~0_combout\,
	datad => \u_Sled|latchSled:0:DeBounce|counter\(3),
	aclr => GND,
	ena => \u_Sled|latchSled:0:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:0:DeBounce|counter[2]~3\,
	cin1 => \u_Sled|latchSled:0:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:0:DeBounce|counter\(3));

-- Location: LC_X10_Y8_N2
\u_Sled|latchSled:0:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|Equal1~0_combout\ = (!\u_Sled|latchSled:0:DeBounce|counter\(2) & (!\u_Sled|latchSled:0:DeBounce|counter\(1) & (!\u_Sled|latchSled:0:DeBounce|counter\(0) & !\u_Sled|latchSled:0:DeBounce|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:0:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:0:DeBounce|counter\(1),
	datac => \u_Sled|latchSled:0:DeBounce|counter\(0),
	datad => \u_Sled|latchSled:0:DeBounce|counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:0:DeBounce|Equal1~0_combout\);

-- Location: LC_X10_Y8_N3
\u_Sled|latchSled:0:DeBounce|db_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|db_p~0_combout\ = ((\u_Sled|latchSled:0:DeBounce|iStart~regout\) # ((\u_Sled|latchSled:0:DeBounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:0:DeBounce|iStart~regout\,
	datad => \u_Sled|latchSled:0:DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:0:DeBounce|db_p~0_combout\);

-- Location: LC_X10_Y8_N4
\u_Sled|latchSled:0:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|Equal0~0_combout\ = (\u_Sled|latchSled:0:DeBounce|counter\(2) & (\u_Sled|latchSled:0:DeBounce|counter\(1) & (\u_Sled|latchSled:0:DeBounce|counter\(0) & \u_Sled|latchSled:0:DeBounce|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:0:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:0:DeBounce|counter\(1),
	datac => \u_Sled|latchSled:0:DeBounce|counter\(0),
	datad => \u_Sled|latchSled:0:DeBounce|counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:0:DeBounce|Equal0~0_combout\);

-- Location: LC_X9_Y9_N1
\u_Sled|latchSled:0:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:0:DeBounce|DbOut~regout\ = DFFEAS(((\u_Sled|latchSled:0:DeBounce|Equal0~0_combout\) # ((\u_Sled|latchSled:0:DeBounce|DbOut~regout\ & !\u_Sled|latchSled:0:DeBounce|Equal1~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:0:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:0:DeBounce|Equal0~0_combout\,
	datad => \u_Sled|latchSled:0:DeBounce|Equal1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:0:DeBounce|DbOut~regout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Lower_Tuned~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Lower_Tuned,
	combout => \n_Lower_Tuned~combout\);

-- Location: LC_X8_Y7_N2
\u_Sled|latchSled:5:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|iStart~regout\ = DFFEAS((((!\n_Lower_Tuned~combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \n_Lower_Tuned~combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:5:DeBounce|iStart~regout\);

-- Location: LC_X8_Y8_N9
\u_Sled|latchSled:5:DeBounce|db_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|db_p~0_combout\ = (((\u_Sled|latchSled:5:DeBounce|iStart~regout\) # (\u_Sled|latchSled:5:DeBounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_Sled|latchSled:5:DeBounce|iStart~regout\,
	datad => \u_Sled|latchSled:5:DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:5:DeBounce|db_p~0_combout\);

-- Location: LC_X8_Y8_N3
\u_Sled|latchSled:5:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|counter\(0) = DFFEAS(\u_Sled|latchSled:5:DeBounce|counter\(0) $ ((((\u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:5:DeBounce|counter\(0),
	datad => \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:5:DeBounce|counter\(0));

-- Location: LC_X8_Y8_N5
\u_Sled|latchSled:5:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT0_15\ = CARRY((\u_Sled|latchSled:5:DeBounce|counter\(0)))
-- \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT1_16\ = CARRY((\u_Sled|latchSled:5:DeBounce|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:5:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_Sled|latchSled:5:DeBounce|counter[1]~10_cout\,
	cout0 => \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X8_Y8_N6
\u_Sled|latchSled:5:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|counter\(1) = DFFEAS(\u_Sled|latchSled:5:DeBounce|counter\(1) $ (\u_Sled|latchSled:5:DeBounce|db_p~0_combout\ $ ((!\u_Sled|latchSled:5:DeBounce|counter[1]~10COUT0_15\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:5:DeBounce|counter[1]~1\ = CARRY((\u_Sled|latchSled:5:DeBounce|counter\(1) & (\u_Sled|latchSled:5:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:5:DeBounce|counter[1]~10COUT0_15\)) # (!\u_Sled|latchSled:5:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:5:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:5:DeBounce|counter[1]~10COUT0_15\))))
-- \u_Sled|latchSled:5:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_Sled|latchSled:5:DeBounce|counter\(1) & (\u_Sled|latchSled:5:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:5:DeBounce|counter[1]~10COUT1_16\)) # (!\u_Sled|latchSled:5:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:5:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:5:DeBounce|counter[1]~10COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:5:DeBounce|counter\(1),
	datab => \u_Sled|latchSled:5:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_Sled|latchSled:5:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:5:DeBounce|counter\(1),
	cout0 => \u_Sled|latchSled:5:DeBounce|counter[1]~1\,
	cout1 => \u_Sled|latchSled:5:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X8_Y8_N7
\u_Sled|latchSled:5:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|counter\(2) = DFFEAS(\u_Sled|latchSled:5:DeBounce|counter\(2) $ (\u_Sled|latchSled:5:DeBounce|db_p~0_combout\ $ ((\u_Sled|latchSled:5:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:5:DeBounce|counter[2]~3\ = CARRY((\u_Sled|latchSled:5:DeBounce|counter\(2) & ((!\u_Sled|latchSled:5:DeBounce|counter[1]~1\) # (!\u_Sled|latchSled:5:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:5:DeBounce|counter\(2) & 
-- (!\u_Sled|latchSled:5:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:5:DeBounce|counter[1]~1\)))
-- \u_Sled|latchSled:5:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_Sled|latchSled:5:DeBounce|counter\(2) & ((!\u_Sled|latchSled:5:DeBounce|counter[1]~1COUT1_17\) # (!\u_Sled|latchSled:5:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:5:DeBounce|counter\(2) 
-- & (!\u_Sled|latchSled:5:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:5:DeBounce|counter[1]~1COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:5:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:5:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:5:DeBounce|counter[1]~1\,
	cin1 => \u_Sled|latchSled:5:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:5:DeBounce|counter\(2),
	cout0 => \u_Sled|latchSled:5:DeBounce|counter[2]~3\,
	cout1 => \u_Sled|latchSled:5:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X8_Y8_N4
\u_Sled|latchSled:5:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|Equal0~0_combout\ = (\u_Sled|latchSled:5:DeBounce|counter\(3) & (\u_Sled|latchSled:5:DeBounce|counter\(2) & (\u_Sled|latchSled:5:DeBounce|counter\(1) & \u_Sled|latchSled:5:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:5:DeBounce|counter\(3),
	datab => \u_Sled|latchSled:5:DeBounce|counter\(2),
	datac => \u_Sled|latchSled:5:DeBounce|counter\(1),
	datad => \u_Sled|latchSled:5:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:5:DeBounce|Equal0~0_combout\);

-- Location: LC_X8_Y8_N2
\u_Sled|latchSled:5:DeBounce|counter[3]~6\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\ = (\u_clkDiv|iClk1KhzEn~regout\ & ((\u_Sled|latchSled:5:DeBounce|iStart~regout\ & (!\u_Sled|latchSled:5:DeBounce|Equal0~0_combout\)) # (!\u_Sled|latchSled:5:DeBounce|iStart~regout\ & 
-- ((!\u_Sled|latchSled:5:DeBounce|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "084c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:5:DeBounce|iStart~regout\,
	datab => \u_clkDiv|iClk1KhzEn~regout\,
	datac => \u_Sled|latchSled:5:DeBounce|Equal0~0_combout\,
	datad => \u_Sled|latchSled:5:DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\);

-- Location: LC_X8_Y8_N8
\u_Sled|latchSled:5:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|counter\(3) = DFFEAS(\u_Sled|latchSled:5:DeBounce|counter\(3) $ (((\u_Sled|latchSled:5:DeBounce|counter[2]~3\ $ (!\u_Sled|latchSled:5:DeBounce|db_p~0_combout\)))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:5:DeBounce|counter\(3),
	datad => \u_Sled|latchSled:5:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:5:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:5:DeBounce|counter[2]~3\,
	cin1 => \u_Sled|latchSled:5:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:5:DeBounce|counter\(3));

-- Location: LC_X8_Y8_N1
\u_Sled|latchSled:5:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|Equal1~0_combout\ = (!\u_Sled|latchSled:5:DeBounce|counter\(3) & (!\u_Sled|latchSled:5:DeBounce|counter\(2) & (!\u_Sled|latchSled:5:DeBounce|counter\(1) & !\u_Sled|latchSled:5:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:5:DeBounce|counter\(3),
	datab => \u_Sled|latchSled:5:DeBounce|counter\(2),
	datac => \u_Sled|latchSled:5:DeBounce|counter\(1),
	datad => \u_Sled|latchSled:5:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:5:DeBounce|Equal1~0_combout\);

-- Location: LC_X8_Y9_N0
\u_Sled|latchSled:5:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:5:DeBounce|DbOut~regout\ = DFFEAS(((\u_Sled|latchSled:5:DeBounce|Equal0~0_combout\) # ((\u_Sled|latchSled:5:DeBounce|DbOut~regout\ & !\u_Sled|latchSled:5:DeBounce|Equal1~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:5:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:5:DeBounce|Equal1~0_combout\,
	datad => \u_Sled|latchSled:5:DeBounce|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:5:DeBounce|DbOut~regout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Upper_Tuned~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Upper_Tuned,
	combout => \n_Upper_Tuned~combout\);

-- Location: LC_X9_Y12_N4
\u_Sled|latchSled:4:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|iStart~regout\ = DFFEAS((((!\n_Upper_Tuned~combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \n_Upper_Tuned~combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:4:DeBounce|iStart~regout\);

-- Location: LC_X10_Y12_N2
\u_Sled|latchSled:4:DeBounce|db_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|db_p~0_combout\ = ((\u_Sled|latchSled:4:DeBounce|iStart~regout\) # ((\u_Sled|latchSled:4:DeBounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:4:DeBounce|iStart~regout\,
	datad => \u_Sled|latchSled:4:DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:4:DeBounce|db_p~0_combout\);

-- Location: LC_X10_Y12_N9
\u_Sled|latchSled:4:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|counter\(0) = DFFEAS((\u_Sled|latchSled:4:DeBounce|counter\(0) $ ((\u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:4:DeBounce|counter\(0),
	datac => \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:4:DeBounce|counter\(0));

-- Location: LC_X10_Y12_N5
\u_Sled|latchSled:4:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_Sled|latchSled:4:DeBounce|counter\(0))))
-- \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_Sled|latchSled:4:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:4:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_Sled|latchSled:4:DeBounce|counter[1]~10_cout\,
	cout0 => \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X10_Y12_N6
\u_Sled|latchSled:4:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|counter\(1) = DFFEAS(\u_Sled|latchSled:4:DeBounce|counter\(1) $ (\u_Sled|latchSled:4:DeBounce|db_p~0_combout\ $ ((!\u_Sled|latchSled:4:DeBounce|counter[1]~10COUT0_15\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:4:DeBounce|counter[1]~1\ = CARRY((\u_Sled|latchSled:4:DeBounce|counter\(1) & (\u_Sled|latchSled:4:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:4:DeBounce|counter[1]~10COUT0_15\)) # (!\u_Sled|latchSled:4:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:4:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:4:DeBounce|counter[1]~10COUT0_15\))))
-- \u_Sled|latchSled:4:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_Sled|latchSled:4:DeBounce|counter\(1) & (\u_Sled|latchSled:4:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:4:DeBounce|counter[1]~10COUT1_16\)) # (!\u_Sled|latchSled:4:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:4:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:4:DeBounce|counter[1]~10COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:4:DeBounce|counter\(1),
	datab => \u_Sled|latchSled:4:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_Sled|latchSled:4:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:4:DeBounce|counter\(1),
	cout0 => \u_Sled|latchSled:4:DeBounce|counter[1]~1\,
	cout1 => \u_Sled|latchSled:4:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X10_Y12_N7
\u_Sled|latchSled:4:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|counter\(2) = DFFEAS(\u_Sled|latchSled:4:DeBounce|counter\(2) $ (\u_Sled|latchSled:4:DeBounce|db_p~0_combout\ $ ((\u_Sled|latchSled:4:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:4:DeBounce|counter[2]~3\ = CARRY((\u_Sled|latchSled:4:DeBounce|counter\(2) & ((!\u_Sled|latchSled:4:DeBounce|counter[1]~1\) # (!\u_Sled|latchSled:4:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:4:DeBounce|counter\(2) & 
-- (!\u_Sled|latchSled:4:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:4:DeBounce|counter[1]~1\)))
-- \u_Sled|latchSled:4:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_Sled|latchSled:4:DeBounce|counter\(2) & ((!\u_Sled|latchSled:4:DeBounce|counter[1]~1COUT1_17\) # (!\u_Sled|latchSled:4:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:4:DeBounce|counter\(2) 
-- & (!\u_Sled|latchSled:4:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:4:DeBounce|counter[1]~1COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:4:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:4:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:4:DeBounce|counter[1]~1\,
	cin1 => \u_Sled|latchSled:4:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:4:DeBounce|counter\(2),
	cout0 => \u_Sled|latchSled:4:DeBounce|counter[2]~3\,
	cout1 => \u_Sled|latchSled:4:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X10_Y12_N3
\u_Sled|latchSled:4:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|Equal0~0_combout\ = (\u_Sled|latchSled:4:DeBounce|counter\(3) & (\u_Sled|latchSled:4:DeBounce|counter\(2) & (\u_Sled|latchSled:4:DeBounce|counter\(1) & \u_Sled|latchSled:4:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:4:DeBounce|counter\(3),
	datab => \u_Sled|latchSled:4:DeBounce|counter\(2),
	datac => \u_Sled|latchSled:4:DeBounce|counter\(1),
	datad => \u_Sled|latchSled:4:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:4:DeBounce|Equal0~0_combout\);

-- Location: LC_X10_Y12_N4
\u_Sled|latchSled:4:DeBounce|counter[3]~6\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\ = (\u_clkDiv|iClk1KhzEn~regout\ & ((\u_Sled|latchSled:4:DeBounce|iStart~regout\ & ((!\u_Sled|latchSled:4:DeBounce|Equal0~0_combout\))) # (!\u_Sled|latchSled:4:DeBounce|iStart~regout\ & 
-- (!\u_Sled|latchSled:4:DeBounce|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "028a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|iClk1KhzEn~regout\,
	datab => \u_Sled|latchSled:4:DeBounce|iStart~regout\,
	datac => \u_Sled|latchSled:4:DeBounce|Equal1~0_combout\,
	datad => \u_Sled|latchSled:4:DeBounce|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\);

-- Location: LC_X10_Y12_N8
\u_Sled|latchSled:4:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|counter\(3) = DFFEAS(\u_Sled|latchSled:4:DeBounce|counter\(3) $ (((\u_Sled|latchSled:4:DeBounce|counter[2]~3\ $ (!\u_Sled|latchSled:4:DeBounce|db_p~0_combout\)))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:4:DeBounce|counter\(3),
	datad => \u_Sled|latchSled:4:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:4:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:4:DeBounce|counter[2]~3\,
	cin1 => \u_Sled|latchSled:4:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:4:DeBounce|counter\(3));

-- Location: LC_X10_Y12_N1
\u_Sled|latchSled:4:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|Equal1~0_combout\ = (!\u_Sled|latchSled:4:DeBounce|counter\(3) & (!\u_Sled|latchSled:4:DeBounce|counter\(2) & (!\u_Sled|latchSled:4:DeBounce|counter\(1) & !\u_Sled|latchSled:4:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:4:DeBounce|counter\(3),
	datab => \u_Sled|latchSled:4:DeBounce|counter\(2),
	datac => \u_Sled|latchSled:4:DeBounce|counter\(1),
	datad => \u_Sled|latchSled:4:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:4:DeBounce|Equal1~0_combout\);

-- Location: LC_X8_Y9_N5
\u_Sled|latchSled:4:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:4:DeBounce|DbOut~regout\ = DFFEAS(((\u_Sled|latchSled:4:DeBounce|Equal0~0_combout\) # ((\u_Sled|latchSled:4:DeBounce|DbOut~regout\ & !\u_Sled|latchSled:4:DeBounce|Equal1~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:4:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:4:DeBounce|Equal1~0_combout\,
	datad => \u_Sled|latchSled:4:DeBounce|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:4:DeBounce|DbOut~regout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Lower_Detuned~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Lower_Detuned,
	combout => \n_Lower_Detuned~combout\);

-- Location: LC_X10_Y8_N0
\u_Sled|latchSled:2:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|iStart~regout\ = DFFEAS((((!\n_Lower_Detuned~combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \n_Lower_Detuned~combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:2:DeBounce|iStart~regout\);

-- Location: LC_X9_Y8_N0
\u_Sled|latchSled:2:DeBounce|db_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|db_p~0_combout\ = (((\u_Sled|latchSled:2:DeBounce|iStart~regout\) # (\u_Sled|latchSled:2:DeBounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_Sled|latchSled:2:DeBounce|iStart~regout\,
	datad => \u_Sled|latchSled:2:DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:2:DeBounce|db_p~0_combout\);

-- Location: LC_X9_Y8_N9
\u_Sled|latchSled:2:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|counter\(0) = DFFEAS((\u_Sled|latchSled:2:DeBounce|counter\(0) $ ((\u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:2:DeBounce|counter\(0),
	datac => \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:2:DeBounce|counter\(0));

-- Location: LC_X9_Y8_N5
\u_Sled|latchSled:2:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_Sled|latchSled:2:DeBounce|counter\(0))))
-- \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_Sled|latchSled:2:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:2:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_Sled|latchSled:2:DeBounce|counter[1]~10_cout\,
	cout0 => \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X9_Y8_N6
\u_Sled|latchSled:2:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|counter\(1) = DFFEAS(\u_Sled|latchSled:2:DeBounce|counter\(1) $ (\u_Sled|latchSled:2:DeBounce|db_p~0_combout\ $ ((!\u_Sled|latchSled:2:DeBounce|counter[1]~10COUT0_15\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:2:DeBounce|counter[1]~1\ = CARRY((\u_Sled|latchSled:2:DeBounce|counter\(1) & (\u_Sled|latchSled:2:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:2:DeBounce|counter[1]~10COUT0_15\)) # (!\u_Sled|latchSled:2:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:2:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:2:DeBounce|counter[1]~10COUT0_15\))))
-- \u_Sled|latchSled:2:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_Sled|latchSled:2:DeBounce|counter\(1) & (\u_Sled|latchSled:2:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:2:DeBounce|counter[1]~10COUT1_16\)) # (!\u_Sled|latchSled:2:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:2:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:2:DeBounce|counter[1]~10COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:2:DeBounce|counter\(1),
	datab => \u_Sled|latchSled:2:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_Sled|latchSled:2:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:2:DeBounce|counter\(1),
	cout0 => \u_Sled|latchSled:2:DeBounce|counter[1]~1\,
	cout1 => \u_Sled|latchSled:2:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X9_Y8_N7
\u_Sled|latchSled:2:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|counter\(2) = DFFEAS(\u_Sled|latchSled:2:DeBounce|counter\(2) $ (\u_Sled|latchSled:2:DeBounce|db_p~0_combout\ $ ((\u_Sled|latchSled:2:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:2:DeBounce|counter[2]~3\ = CARRY((\u_Sled|latchSled:2:DeBounce|counter\(2) & ((!\u_Sled|latchSled:2:DeBounce|counter[1]~1\) # (!\u_Sled|latchSled:2:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:2:DeBounce|counter\(2) & 
-- (!\u_Sled|latchSled:2:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:2:DeBounce|counter[1]~1\)))
-- \u_Sled|latchSled:2:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_Sled|latchSled:2:DeBounce|counter\(2) & ((!\u_Sled|latchSled:2:DeBounce|counter[1]~1COUT1_17\) # (!\u_Sled|latchSled:2:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:2:DeBounce|counter\(2) 
-- & (!\u_Sled|latchSled:2:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:2:DeBounce|counter[1]~1COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:2:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:2:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:2:DeBounce|counter[1]~1\,
	cin1 => \u_Sled|latchSled:2:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:2:DeBounce|counter\(2),
	cout0 => \u_Sled|latchSled:2:DeBounce|counter[2]~3\,
	cout1 => \u_Sled|latchSled:2:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X9_Y8_N8
\u_Sled|latchSled:2:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|counter\(3) = DFFEAS((\u_Sled|latchSled:2:DeBounce|db_p~0_combout\ $ (\u_Sled|latchSled:2:DeBounce|counter[2]~3\ $ (!\u_Sled|latchSled:2:DeBounce|counter\(3)))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:2:DeBounce|db_p~0_combout\,
	datad => \u_Sled|latchSled:2:DeBounce|counter\(3),
	aclr => GND,
	ena => \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:2:DeBounce|counter[2]~3\,
	cin1 => \u_Sled|latchSled:2:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:2:DeBounce|counter\(3));

-- Location: LC_X9_Y8_N2
\u_Sled|latchSled:2:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|Equal0~0_combout\ = (\u_Sled|latchSled:2:DeBounce|counter\(3) & (\u_Sled|latchSled:2:DeBounce|counter\(2) & (\u_Sled|latchSled:2:DeBounce|counter\(1) & \u_Sled|latchSled:2:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:2:DeBounce|counter\(3),
	datab => \u_Sled|latchSled:2:DeBounce|counter\(2),
	datac => \u_Sled|latchSled:2:DeBounce|counter\(1),
	datad => \u_Sled|latchSled:2:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:2:DeBounce|Equal0~0_combout\);

-- Location: LC_X9_Y8_N4
\u_Sled|latchSled:2:DeBounce|counter[3]~6\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\ = (\u_clkDiv|iClk1KhzEn~regout\ & ((\u_Sled|latchSled:2:DeBounce|iStart~regout\ & ((!\u_Sled|latchSled:2:DeBounce|Equal0~0_combout\))) # (!\u_Sled|latchSled:2:DeBounce|iStart~regout\ & 
-- (!\u_Sled|latchSled:2:DeBounce|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:2:DeBounce|Equal1~0_combout\,
	datab => \u_clkDiv|iClk1KhzEn~regout\,
	datac => \u_Sled|latchSled:2:DeBounce|iStart~regout\,
	datad => \u_Sled|latchSled:2:DeBounce|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:2:DeBounce|counter[3]~6_combout\);

-- Location: LC_X9_Y8_N3
\u_Sled|latchSled:2:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|Equal1~0_combout\ = (!\u_Sled|latchSled:2:DeBounce|counter\(1) & (!\u_Sled|latchSled:2:DeBounce|counter\(0) & (!\u_Sled|latchSled:2:DeBounce|counter\(2) & !\u_Sled|latchSled:2:DeBounce|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:2:DeBounce|counter\(1),
	datab => \u_Sled|latchSled:2:DeBounce|counter\(0),
	datac => \u_Sled|latchSled:2:DeBounce|counter\(2),
	datad => \u_Sled|latchSled:2:DeBounce|counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:2:DeBounce|Equal1~0_combout\);

-- Location: LC_X8_Y9_N6
\u_Sled|latchSled:2:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:2:DeBounce|DbOut~regout\ = DFFEAS((\u_Sled|latchSled:2:DeBounce|Equal0~0_combout\) # ((!\u_Sled|latchSled:2:DeBounce|Equal1~0_combout\ & (\u_Sled|latchSled:2:DeBounce|DbOut~regout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcdc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:2:DeBounce|Equal1~0_combout\,
	datab => \u_Sled|latchSled:2:DeBounce|Equal0~0_combout\,
	datac => \u_Sled|latchSled:2:DeBounce|DbOut~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:2:DeBounce|DbOut~regout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Motor_Not_Tuned~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Motor_Not_Tuned,
	combout => \n_Motor_Not_Tuned~combout\);

-- Location: LC_X9_Y12_N2
\u_Sled|latchSled:3:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|iStart~regout\ = DFFEAS((((!\n_Motor_Not_Tuned~combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \n_Motor_Not_Tuned~combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:3:DeBounce|iStart~regout\);

-- Location: LC_X11_Y12_N7
\u_Sled|latchSled:3:DeBounce|db_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|db_p~0_combout\ = (((\u_Sled|latchSled:3:DeBounce|iStart~regout\) # (\u_Sled|latchSled:3:DeBounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_Sled|latchSled:3:DeBounce|iStart~regout\,
	datad => \u_Sled|latchSled:3:DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:3:DeBounce|db_p~0_combout\);

-- Location: LC_X11_Y12_N9
\u_Sled|latchSled:3:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|counter\(0) = DFFEAS((\u_Sled|latchSled:3:DeBounce|counter\(0) $ ((\u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:3:DeBounce|counter\(0),
	datac => \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:3:DeBounce|counter\(0));

-- Location: LC_X11_Y12_N1
\u_Sled|latchSled:3:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_Sled|latchSled:3:DeBounce|counter\(0))))
-- \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_Sled|latchSled:3:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:3:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_Sled|latchSled:3:DeBounce|counter[1]~10_cout\,
	cout0 => \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X11_Y12_N2
\u_Sled|latchSled:3:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|counter\(1) = DFFEAS(\u_Sled|latchSled:3:DeBounce|counter\(1) $ (\u_Sled|latchSled:3:DeBounce|db_p~0_combout\ $ ((!\u_Sled|latchSled:3:DeBounce|counter[1]~10COUT0_15\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:3:DeBounce|counter[1]~1\ = CARRY((\u_Sled|latchSled:3:DeBounce|counter\(1) & (\u_Sled|latchSled:3:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:3:DeBounce|counter[1]~10COUT0_15\)) # (!\u_Sled|latchSled:3:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:3:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:3:DeBounce|counter[1]~10COUT0_15\))))
-- \u_Sled|latchSled:3:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_Sled|latchSled:3:DeBounce|counter\(1) & (\u_Sled|latchSled:3:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:3:DeBounce|counter[1]~10COUT1_16\)) # (!\u_Sled|latchSled:3:DeBounce|counter\(1) & 
-- ((\u_Sled|latchSled:3:DeBounce|db_p~0_combout\) # (!\u_Sled|latchSled:3:DeBounce|counter[1]~10COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:3:DeBounce|counter\(1),
	datab => \u_Sled|latchSled:3:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_Sled|latchSled:3:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:3:DeBounce|counter\(1),
	cout0 => \u_Sled|latchSled:3:DeBounce|counter[1]~1\,
	cout1 => \u_Sled|latchSled:3:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X11_Y12_N3
\u_Sled|latchSled:3:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|counter\(2) = DFFEAS(\u_Sled|latchSled:3:DeBounce|counter\(2) $ (\u_Sled|latchSled:3:DeBounce|db_p~0_combout\ $ ((\u_Sled|latchSled:3:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:3:DeBounce|counter[2]~3\ = CARRY((\u_Sled|latchSled:3:DeBounce|counter\(2) & ((!\u_Sled|latchSled:3:DeBounce|counter[1]~1\) # (!\u_Sled|latchSled:3:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:3:DeBounce|counter\(2) & 
-- (!\u_Sled|latchSled:3:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:3:DeBounce|counter[1]~1\)))
-- \u_Sled|latchSled:3:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_Sled|latchSled:3:DeBounce|counter\(2) & ((!\u_Sled|latchSled:3:DeBounce|counter[1]~1COUT1_17\) # (!\u_Sled|latchSled:3:DeBounce|db_p~0_combout\))) # (!\u_Sled|latchSled:3:DeBounce|counter\(2) 
-- & (!\u_Sled|latchSled:3:DeBounce|db_p~0_combout\ & !\u_Sled|latchSled:3:DeBounce|counter[1]~1COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:3:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:3:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:3:DeBounce|counter[1]~1\,
	cin1 => \u_Sled|latchSled:3:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:3:DeBounce|counter\(2),
	cout0 => \u_Sled|latchSled:3:DeBounce|counter[2]~3\,
	cout1 => \u_Sled|latchSled:3:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X11_Y12_N4
\u_Sled|latchSled:3:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|counter\(3) = DFFEAS(\u_Sled|latchSled:3:DeBounce|counter\(3) $ (\u_Sled|latchSled:3:DeBounce|db_p~0_combout\ $ ((!\u_Sled|latchSled:3:DeBounce|counter[2]~3\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6969",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:3:DeBounce|counter\(3),
	datab => \u_Sled|latchSled:3:DeBounce|db_p~0_combout\,
	aclr => GND,
	ena => \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:3:DeBounce|counter[2]~3\,
	cin1 => \u_Sled|latchSled:3:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:3:DeBounce|counter\(3));

-- Location: LC_X11_Y12_N8
\u_Sled|latchSled:3:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|Equal0~0_combout\ = (\u_Sled|latchSled:3:DeBounce|counter\(2) & (\u_Sled|latchSled:3:DeBounce|counter\(1) & (\u_Sled|latchSled:3:DeBounce|counter\(3) & \u_Sled|latchSled:3:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:3:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:3:DeBounce|counter\(1),
	datac => \u_Sled|latchSled:3:DeBounce|counter\(3),
	datad => \u_Sled|latchSled:3:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:3:DeBounce|Equal0~0_combout\);

-- Location: LC_X11_Y12_N5
\u_Sled|latchSled:3:DeBounce|counter[3]~6\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\ = (\u_clkDiv|iClk1KhzEn~regout\ & ((\u_Sled|latchSled:3:DeBounce|iStart~regout\ & ((!\u_Sled|latchSled:3:DeBounce|Equal0~0_combout\))) # (!\u_Sled|latchSled:3:DeBounce|iStart~regout\ & 
-- (!\u_Sled|latchSled:3:DeBounce|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "048c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:3:DeBounce|iStart~regout\,
	datab => \u_clkDiv|iClk1KhzEn~regout\,
	datac => \u_Sled|latchSled:3:DeBounce|Equal1~0_combout\,
	datad => \u_Sled|latchSled:3:DeBounce|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:3:DeBounce|counter[3]~6_combout\);

-- Location: LC_X11_Y12_N6
\u_Sled|latchSled:3:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|Equal1~0_combout\ = (!\u_Sled|latchSled:3:DeBounce|counter\(2) & (!\u_Sled|latchSled:3:DeBounce|counter\(1) & (!\u_Sled|latchSled:3:DeBounce|counter\(3) & !\u_Sled|latchSled:3:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:3:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:3:DeBounce|counter\(1),
	datac => \u_Sled|latchSled:3:DeBounce|counter\(3),
	datad => \u_Sled|latchSled:3:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:3:DeBounce|Equal1~0_combout\);

-- Location: LC_X8_Y9_N7
\u_Sled|latchSled:3:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:3:DeBounce|DbOut~regout\ = DFFEAS(((\u_Sled|latchSled:3:DeBounce|Equal0~0_combout\) # ((\u_Sled|latchSled:3:DeBounce|DbOut~regout\ & !\u_Sled|latchSled:3:DeBounce|Equal1~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:3:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:3:DeBounce|Equal1~0_combout\,
	datad => \u_Sled|latchSled:3:DeBounce|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:3:DeBounce|DbOut~regout\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Upper_Detuned~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Upper_Detuned,
	combout => \n_Upper_Detuned~combout\);

-- Location: LC_X12_Y9_N5
\u_Sled|latchSled:1:DeBounce|iStart\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|iStart~regout\ = DFFEAS((((!\n_Upper_Detuned~combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \n_Upper_Detuned~combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:1:DeBounce|iStart~regout\);

-- Location: LC_X12_Y10_N5
\u_Sled|latchSled:1:DeBounce|db_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|db_p~0_combout\ = ((\u_Sled|latchSled:1:DeBounce|iStart~regout\) # ((\u_Sled|latchSled:1:DeBounce|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:1:DeBounce|iStart~regout\,
	datad => \u_Sled|latchSled:1:DeBounce|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:1:DeBounce|db_p~0_combout\);

-- Location: LC_X12_Y10_N2
\u_Sled|latchSled:1:DeBounce|counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|counter\(0) = DFFEAS((\u_Sled|latchSled:1:DeBounce|counter\(0) $ (((\u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|latchSled:1:DeBounce|counter\(0),
	datad => \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:1:DeBounce|counter\(0));

-- Location: LC_X12_Y10_N6
\u_Sled|latchSled:1:DeBounce|counter[1]~10\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT0_15\ = CARRY(((\u_Sled|latchSled:1:DeBounce|counter\(0))))
-- \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT1_16\ = CARRY(((\u_Sled|latchSled:1:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:1:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	cout => \u_Sled|latchSled:1:DeBounce|counter[1]~10_cout\,
	cout0 => \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT0_15\,
	cout1 => \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT1_16\);

-- Location: LC_X12_Y10_N7
\u_Sled|latchSled:1:DeBounce|counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|counter\(1) = DFFEAS(\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ $ (\u_Sled|latchSled:1:DeBounce|counter\(1) $ ((!\u_Sled|latchSled:1:DeBounce|counter[1]~10COUT0_15\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:1:DeBounce|counter[1]~1\ = CARRY((\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & ((!\u_Sled|latchSled:1:DeBounce|counter[1]~10COUT0_15\) # (!\u_Sled|latchSled:1:DeBounce|counter\(1)))) # (!\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & 
-- (!\u_Sled|latchSled:1:DeBounce|counter\(1) & !\u_Sled|latchSled:1:DeBounce|counter[1]~10COUT0_15\)))
-- \u_Sled|latchSled:1:DeBounce|counter[1]~1COUT1_17\ = CARRY((\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & ((!\u_Sled|latchSled:1:DeBounce|counter[1]~10COUT1_16\) # (!\u_Sled|latchSled:1:DeBounce|counter\(1)))) # 
-- (!\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & (!\u_Sled|latchSled:1:DeBounce|counter\(1) & !\u_Sled|latchSled:1:DeBounce|counter[1]~10COUT1_16\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:1:DeBounce|db_p~0_combout\,
	datab => \u_Sled|latchSled:1:DeBounce|counter\(1),
	aclr => GND,
	ena => \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT0_15\,
	cin1 => \u_Sled|latchSled:1:DeBounce|counter[1]~10COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:1:DeBounce|counter\(1),
	cout0 => \u_Sled|latchSled:1:DeBounce|counter[1]~1\,
	cout1 => \u_Sled|latchSled:1:DeBounce|counter[1]~1COUT1_17\);

-- Location: LC_X12_Y10_N8
\u_Sled|latchSled:1:DeBounce|counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|counter\(2) = DFFEAS(\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ $ (\u_Sled|latchSled:1:DeBounce|counter\(2) $ ((\u_Sled|latchSled:1:DeBounce|counter[1]~1\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\, , , , )
-- \u_Sled|latchSled:1:DeBounce|counter[2]~3\ = CARRY((\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & (\u_Sled|latchSled:1:DeBounce|counter\(2) & !\u_Sled|latchSled:1:DeBounce|counter[1]~1\)) # (!\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & 
-- ((\u_Sled|latchSled:1:DeBounce|counter\(2)) # (!\u_Sled|latchSled:1:DeBounce|counter[1]~1\))))
-- \u_Sled|latchSled:1:DeBounce|counter[2]~3COUT1_18\ = CARRY((\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & (\u_Sled|latchSled:1:DeBounce|counter\(2) & !\u_Sled|latchSled:1:DeBounce|counter[1]~1COUT1_17\)) # (!\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ & 
-- ((\u_Sled|latchSled:1:DeBounce|counter\(2)) # (!\u_Sled|latchSled:1:DeBounce|counter[1]~1COUT1_17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:1:DeBounce|db_p~0_combout\,
	datab => \u_Sled|latchSled:1:DeBounce|counter\(2),
	aclr => GND,
	ena => \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:1:DeBounce|counter[1]~1\,
	cin1 => \u_Sled|latchSled:1:DeBounce|counter[1]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:1:DeBounce|counter\(2),
	cout0 => \u_Sled|latchSled:1:DeBounce|counter[2]~3\,
	cout1 => \u_Sled|latchSled:1:DeBounce|counter[2]~3COUT1_18\);

-- Location: LC_X12_Y10_N9
\u_Sled|latchSled:1:DeBounce|counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|counter\(3) = DFFEAS(\u_Sled|latchSled:1:DeBounce|db_p~0_combout\ $ (\u_Sled|latchSled:1:DeBounce|counter\(3) $ ((!\u_Sled|latchSled:1:DeBounce|counter[2]~3\))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6969",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:1:DeBounce|db_p~0_combout\,
	datab => \u_Sled|latchSled:1:DeBounce|counter\(3),
	aclr => GND,
	ena => \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\,
	cin0 => \u_Sled|latchSled:1:DeBounce|counter[2]~3\,
	cin1 => \u_Sled|latchSled:1:DeBounce|counter[2]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:1:DeBounce|counter\(3));

-- Location: LC_X12_Y10_N1
\u_Sled|latchSled:1:DeBounce|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|Equal0~0_combout\ = (\u_Sled|latchSled:1:DeBounce|counter\(2) & (\u_Sled|latchSled:1:DeBounce|counter\(3) & (\u_Sled|latchSled:1:DeBounce|counter\(1) & \u_Sled|latchSled:1:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:1:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:1:DeBounce|counter\(3),
	datac => \u_Sled|latchSled:1:DeBounce|counter\(1),
	datad => \u_Sled|latchSled:1:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:1:DeBounce|Equal0~0_combout\);

-- Location: LC_X12_Y10_N3
\u_Sled|latchSled:1:DeBounce|counter[3]~6\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\ = (\u_clkDiv|iClk1KhzEn~regout\ & ((\u_Sled|latchSled:1:DeBounce|iStart~regout\ & ((!\u_Sled|latchSled:1:DeBounce|Equal0~0_combout\))) # (!\u_Sled|latchSled:1:DeBounce|iStart~regout\ & 
-- (!\u_Sled|latchSled:1:DeBounce|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:1:DeBounce|Equal1~0_combout\,
	datab => \u_Sled|latchSled:1:DeBounce|iStart~regout\,
	datac => \u_clkDiv|iClk1KhzEn~regout\,
	datad => \u_Sled|latchSled:1:DeBounce|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:1:DeBounce|counter[3]~6_combout\);

-- Location: LC_X12_Y10_N4
\u_Sled|latchSled:1:DeBounce|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|Equal1~0_combout\ = (!\u_Sled|latchSled:1:DeBounce|counter\(2) & (!\u_Sled|latchSled:1:DeBounce|counter\(3) & (!\u_Sled|latchSled:1:DeBounce|counter\(1) & !\u_Sled|latchSled:1:DeBounce|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:1:DeBounce|counter\(2),
	datab => \u_Sled|latchSled:1:DeBounce|counter\(3),
	datac => \u_Sled|latchSled:1:DeBounce|counter\(1),
	datad => \u_Sled|latchSled:1:DeBounce|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|latchSled:1:DeBounce|Equal1~0_combout\);

-- Location: LC_X9_Y9_N3
\u_Sled|latchSled:1:DeBounce|DbOut\ : maxv_lcell
-- Equation(s):
-- \u_Sled|latchSled:1:DeBounce|DbOut~regout\ = DFFEAS(((\u_Sled|latchSled:1:DeBounce|Equal0~0_combout\) # ((\u_Sled|latchSled:1:DeBounce|DbOut~regout\ & !\u_Sled|latchSled:1:DeBounce|Equal1~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:1:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:1:DeBounce|Equal1~0_combout\,
	datad => \u_Sled|latchSled:1:DeBounce|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|latchSled:1:DeBounce|DbOut~regout\);

-- Location: LC_X8_Y9_N8
\u_Sled|DbSLEDTuned~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DbSLEDTuned~0_combout\ = (!\u_Sled|latchSled:2:DeBounce|DbOut~regout\ & (!\u_Sled|latchSled:3:DeBounce|DbOut~regout\ & (!\u_Sled|latchSled:1:DeBounce|DbOut~regout\ & \u_Sled|latchSled:0:DeBounce|DbOut~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:2:DeBounce|DbOut~regout\,
	datab => \u_Sled|latchSled:3:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:1:DeBounce|DbOut~regout\,
	datad => \u_Sled|latchSled:0:DeBounce|DbOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|DbSLEDTuned~0_combout\);

-- Location: LC_X8_Y9_N9
\u_Sled|DbSLEDTuned\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DbSLEDTuned~combout\ = ((\u_Sled|latchSled:5:DeBounce|DbOut~regout\ & (\u_Sled|latchSled:4:DeBounce|DbOut~regout\ & \u_Sled|DbSLEDTuned~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|latchSled:5:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:4:DeBounce|DbOut~regout\,
	datad => \u_Sled|DbSLEDTuned~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|DbSLEDTuned~combout\);

-- Location: LC_X9_Y9_N6
\u_Sled|DbSLEDDeTuned~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DbSLEDDeTuned~0_combout\ = (\u_Sled|latchSled:1:DeBounce|DbOut~regout\ & (!\u_Sled|latchSled:0:DeBounce|DbOut~regout\ & (\u_Sled|latchSled:2:DeBounce|DbOut~regout\ & \u_Sled|latchSled:3:DeBounce|DbOut~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:1:DeBounce|DbOut~regout\,
	datab => \u_Sled|latchSled:0:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:2:DeBounce|DbOut~regout\,
	datad => \u_Sled|latchSled:3:DeBounce|DbOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|DbSLEDDeTuned~0_combout\);

-- Location: LC_X9_Y9_N7
\u_Sled|DbSLEDDeTuned\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DbSLEDDeTuned~combout\ = (!\u_Sled|latchSled:4:DeBounce|DbOut~regout\ & (((!\u_Sled|latchSled:5:DeBounce|DbOut~regout\ & \u_Sled|DbSLEDDeTuned~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|latchSled:4:DeBounce|DbOut~regout\,
	datac => \u_Sled|latchSled:5:DeBounce|DbOut~regout\,
	datad => \u_Sled|DbSLEDDeTuned~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|DbSLEDDeTuned~combout\);

-- Location: LC_X9_Y9_N8
\u_Sled|SLEDStatusOut~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut~0_combout\ = ((\ClrFault~combout\) # ((!\u_Sled|DbSLEDTuned~combout\ & !\u_Sled|DbSLEDDeTuned~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ClrFault~combout\,
	datac => \u_Sled|DbSLEDTuned~combout\,
	datad => \u_Sled|DbSLEDDeTuned~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|SLEDStatusOut~0_combout\);

-- Location: LC_X9_Y9_N5
\u_Sled|SLEDStatusOut[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(0) = DFFEAS((((\u_Sled|latchSled:0:DeBounce|DbOut~regout\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_Sled|latchSled:0:DeBounce|DbOut~regout\,
	aclr => GND,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(0));

-- Location: LC_X10_Y9_N9
\u_spi|DataOutSR[7]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(7) = DFFEAS((\u_SysInfo|Mux6~1\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(0))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(6), , , \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_SysInfo|Mux6~1\,
	datac => \u_spi|DataOutSR\(6),
	datad => \u_Sled|SLEDStatusOut\(0),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(7));

-- Location: LC_X9_Y9_N9
\u_Sled|SLEDStatusOut[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(1) = DFFEAS((((\u_Sled|latchSled:1:DeBounce|DbOut~regout\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_Sled|latchSled:1:DeBounce|DbOut~regout\,
	aclr => GND,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(1));

-- Location: LC_X10_Y9_N7
\u_spi|DataOutSR[8]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(8) = DFFEAS((\u_spi|QSPI_State.Readt~regout\ & (((\u_spi|DataOutSR\(7))))) # (!\u_spi|QSPI_State.Readt~regout\ & (\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(1))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , 
-- \u_spi|WideOr3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_spi|DataOutSR\(7),
	datac => \u_Sled|SLEDStatusOut\(1),
	datad => \u_spi|QSPI_State.Readt~regout\,
	aclr => \n_Cmd_CS~combout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(8));

-- Location: LC_X9_Y9_N0
\u_Sled|SLEDStatusOut[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(2) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, \u_Sled|latchSled:2:DeBounce|DbOut~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_Sled|latchSled:2:DeBounce|DbOut~regout\,
	aclr => GND,
	sload => VCC,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(2));

-- Location: LC_X10_Y9_N3
\u_spi|DataOutSR[9]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(9) = DFFEAS((\u_SysInfo|Mux12~1_combout\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(2))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(8), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_SysInfo|Mux12~1_combout\,
	datac => \u_spi|DataOutSR\(8),
	datad => \u_Sled|SLEDStatusOut\(2),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(9));

-- Location: LC_X9_Y9_N4
\u_Sled|SLEDStatusOut[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(3) = DFFEAS((((\u_Sled|latchSled:3:DeBounce|DbOut~regout\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_Sled|latchSled:3:DeBounce|DbOut~regout\,
	aclr => GND,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(3));

-- Location: LC_X10_Y9_N4
\u_spi|DataOutSR[10]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(10) = DFFEAS((\u_SysInfo|Mux11~1_combout\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(3))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(9), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_SysInfo|Mux11~1_combout\,
	datac => \u_spi|DataOutSR\(9),
	datad => \u_Sled|SLEDStatusOut\(3),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(10));

-- Location: LC_X9_Y9_N2
\u_Sled|SLEDStatusOut[4]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(4) = DFFEAS((((\u_Sled|latchSled:4:DeBounce|DbOut~regout\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_Sled|latchSled:4:DeBounce|DbOut~regout\,
	aclr => GND,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(4));

-- Location: LC_X10_Y9_N8
\u_spi|DataOutSR[11]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(11) = DFFEAS((\u_SysInfo|Mux10~1_combout\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(4))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(10), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_SysInfo|Mux10~1_combout\,
	datac => \u_spi|DataOutSR\(10),
	datad => \u_Sled|SLEDStatusOut\(4),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(11));

-- Location: LC_X8_Y9_N1
\u_Sled|SLEDStatusOut[5]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(5) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, \u_Sled|latchSled:5:DeBounce|DbOut~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_Sled|latchSled:5:DeBounce|DbOut~regout\,
	aclr => GND,
	sload => VCC,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(5));

-- Location: LC_X7_Y9_N2
\u_spi|DataOutSR[12]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(12) = DFFEAS((\u_SysInfo|Mux9~1_combout\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(5))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(11), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_SysInfo|Mux9~1_combout\,
	datab => \u_RegIntf|Mux1~1\,
	datac => \u_spi|DataOutSR\(11),
	datad => \u_Sled|SLEDStatusOut\(5),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(12));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DeTune_Req~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DeTune_Req,
	combout => \DeTune_Req~combout\);

-- Location: LC_X8_Y9_N3
\u_Sled|DeTuneReqSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DeTuneReqSr\(0) = DFFEAS((\DeTune_Req~combout\ & ((\u_Sled|latchSled:4:DeBounce|DbOut~regout\) # ((\u_Sled|latchSled:5:DeBounce|DbOut~regout\) # (!\u_Sled|DbSLEDDeTuned~0_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|latchSled:4:DeBounce|DbOut~regout\,
	datab => \DeTune_Req~combout\,
	datac => \u_Sled|DbSLEDDeTuned~0_combout\,
	datad => \u_Sled|latchSled:5:DeBounce|DbOut~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|DeTuneReqSr\(0));

-- Location: LC_X11_Y9_N1
\u_Sled|DeTuneReqSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DeTuning~0\ = (((!G1_DeTuneReqSr[1] & \u_Sled|DeTuneReqSr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_Sled|DeTuneReqSr\(0),
	datad => \u_Sled|DeTuneReqSr\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|DeTuning~0\,
	regout => \u_Sled|DeTuneReqSr\(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Tune_Req~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Tune_Req,
	combout => \Tune_Req~combout\);

-- Location: LC_X8_Y9_N2
\u_Sled|TuneReqSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TuneReqSr\(0) = DFFEAS((\Tune_Req~combout\ & (((!\u_Sled|latchSled:5:DeBounce|DbOut~regout\) # (!\u_Sled|latchSled:4:DeBounce|DbOut~regout\)) # (!\u_Sled|DbSLEDTuned~0_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|DbSLEDTuned~0_combout\,
	datab => \Tune_Req~combout\,
	datac => \u_Sled|latchSled:4:DeBounce|DbOut~regout\,
	datad => \u_Sled|latchSled:5:DeBounce|DbOut~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TuneReqSr\(0));

-- Location: LC_X11_Y9_N9
\u_Sled|TuneReqSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|Tuning~0\ = (\u_Sled|TuneReqSr\(0) & (((!G1_TuneReqSr[1]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|TuneReqSr\(0),
	datac => \u_Sled|TuneReqSr\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|Tuning~0\,
	regout => \u_Sled|TuneReqSr\(1));

-- Location: LC_X11_Y9_N2
\u_Sled|Tuning~1\ : maxv_lcell
-- Equation(s):
-- \u_Sled|Tuning~1_combout\ = (\u_Sled|Tuning~regout\ & (((\u_Sled|DbSLEDDeTuned~combout\)) # (!\u_Sled|DeTuning~0\))) # (!\u_Sled|Tuning~regout\ & (\u_Sled|Tuning~0\ & ((\u_Sled|DbSLEDDeTuned~combout\) # (!\u_Sled|DeTuning~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|Tuning~regout\,
	datab => \u_Sled|DeTuning~0\,
	datac => \u_Sled|Tuning~0\,
	datad => \u_Sled|DbSLEDDeTuned~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|Tuning~1_combout\);

-- Location: LC_X11_Y9_N3
\u_Sled|Tuning\ : maxv_lcell
-- Equation(s):
-- \u_Sled|Tuning~regout\ = DFFEAS((!\ClrFault~combout\ & (!\u_Sled|SLEDTimeOut~regout\ & (!\u_Sled|DbSLEDTuned~combout\ & \u_Sled|Tuning~1_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \ClrFault~combout\,
	datab => \u_Sled|SLEDTimeOut~regout\,
	datac => \u_Sled|DbSLEDTuned~combout\,
	datad => \u_Sled|Tuning~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|Tuning~regout\);

-- Location: LC_X12_Y9_N9
\u_Sled|GenAc_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|GenAc_p~0_combout\ = (((!\u_Sled|DeTuning~regout\ & !\u_Sled|Tuning~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_Sled|DeTuning~regout\,
	datad => \u_Sled|Tuning~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|GenAc_p~0_combout\);

-- Location: LC_X11_Y9_N0
\u_Sled|SLEDTimeOut~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDTimeOut~0_combout\ = ((\ClrFault~combout\ & (!\u_Sled|DeTuning~regout\ & !\u_Sled|Tuning~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ClrFault~combout\,
	datac => \u_Sled|DeTuning~regout\,
	datad => \u_Sled|Tuning~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|SLEDTimeOut~0_combout\);

-- Location: LC_X10_Y13_N0
\u_clkDiv|Add4~25\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~25_combout\ = (!\u_clkDiv|Clk10hzCntr\(0))
-- \u_clkDiv|Add4~27\ = CARRY((\u_clkDiv|Clk10hzCntr\(0)))
-- \u_clkDiv|Add4~27COUT1_41\ = CARRY((\u_clkDiv|Clk10hzCntr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk10hzCntr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~25_combout\,
	cout0 => \u_clkDiv|Add4~27\,
	cout1 => \u_clkDiv|Add4~27COUT1_41\);

-- Location: LC_X10_Y13_N8
\u_clkDiv|Clk10hzCntr[0]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10hzCntr\(0) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, \u_clkDiv|Add4~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add4~25_combout\,
	aclr => GND,
	sload => VCC,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10hzCntr\(0));

-- Location: LC_X10_Y13_N1
\u_clkDiv|Add4~20\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~20_combout\ = (\u_clkDiv|Clk10hzCntr\(1) $ ((\u_clkDiv|Add4~27\)))
-- \u_clkDiv|Add4~22\ = CARRY(((!\u_clkDiv|Add4~27\) # (!\u_clkDiv|Clk10hzCntr\(1))))
-- \u_clkDiv|Add4~22COUT1_42\ = CARRY(((!\u_clkDiv|Add4~27COUT1_41\) # (!\u_clkDiv|Clk10hzCntr\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10hzCntr\(1),
	cin0 => \u_clkDiv|Add4~27\,
	cin1 => \u_clkDiv|Add4~27COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~20_combout\,
	cout0 => \u_clkDiv|Add4~22\,
	cout1 => \u_clkDiv|Add4~22COUT1_42\);

-- Location: LC_X11_Y13_N2
\u_clkDiv|Clk10hzCntr[1]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal4~1\ = (!\u_clkDiv|Clk10hzCntr\(3) & (\u_clkDiv|Clk10hzCntr\(0) & (C1_Clk10hzCntr[1] & !\u_clkDiv|Clk10hzCntr\(2))))
-- \u_clkDiv|Clk10hzCntr\(1) = DFFEAS(\u_clkDiv|Equal4~1\, GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, \u_clkDiv|Add4~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk10hzCntr\(3),
	datab => \u_clkDiv|Clk10hzCntr\(0),
	datac => \u_clkDiv|Add4~20_combout\,
	datad => \u_clkDiv|Clk10hzCntr\(2),
	aclr => GND,
	sload => VCC,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal4~1\,
	regout => \u_clkDiv|Clk10hzCntr\(1));

-- Location: LC_X10_Y13_N2
\u_clkDiv|Add4~35\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~35_combout\ = (\u_clkDiv|Clk10hzCntr\(2) $ ((!\u_clkDiv|Add4~22\)))
-- \u_clkDiv|Add4~37\ = CARRY(((\u_clkDiv|Clk10hzCntr\(2) & !\u_clkDiv|Add4~22\)))
-- \u_clkDiv|Add4~37COUT1_43\ = CARRY(((\u_clkDiv|Clk10hzCntr\(2) & !\u_clkDiv|Add4~22COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10hzCntr\(2),
	cin0 => \u_clkDiv|Add4~22\,
	cin1 => \u_clkDiv|Add4~22COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~35_combout\,
	cout0 => \u_clkDiv|Add4~37\,
	cout1 => \u_clkDiv|Add4~37COUT1_43\);

-- Location: LC_X10_Y13_N3
\u_clkDiv|Add4~30\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~30_combout\ = (\u_clkDiv|Clk10hzCntr\(3) $ ((\u_clkDiv|Add4~37\)))
-- \u_clkDiv|Add4~32\ = CARRY(((!\u_clkDiv|Add4~37\) # (!\u_clkDiv|Clk10hzCntr\(3))))
-- \u_clkDiv|Add4~32COUT1_44\ = CARRY(((!\u_clkDiv|Add4~37COUT1_43\) # (!\u_clkDiv|Clk10hzCntr\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10hzCntr\(3),
	cin0 => \u_clkDiv|Add4~37\,
	cin1 => \u_clkDiv|Add4~37COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~30_combout\,
	cout0 => \u_clkDiv|Add4~32\,
	cout1 => \u_clkDiv|Add4~32COUT1_44\);

-- Location: LC_X10_Y13_N4
\u_clkDiv|Add4~15\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~15_combout\ = (\u_clkDiv|Clk10hzCntr\(4) $ ((!\u_clkDiv|Add4~32\)))
-- \u_clkDiv|Add4~17\ = CARRY(((\u_clkDiv|Clk10hzCntr\(4) & !\u_clkDiv|Add4~32COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10hzCntr\(4),
	cin0 => \u_clkDiv|Add4~32\,
	cin1 => \u_clkDiv|Add4~32COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~15_combout\,
	cout => \u_clkDiv|Add4~17\);

-- Location: LC_X11_Y13_N9
\u_clkDiv|Clk10hzCntr[4]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10hzCntr\(4) = DFFEAS((((\u_clkDiv|Add4~15_combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Add4~15_combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10hzCntr\(4));

-- Location: LC_X10_Y13_N5
\u_clkDiv|Add4~5\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~5_combout\ = \u_clkDiv|Clk10hzCntr\(5) $ ((((\u_clkDiv|Add4~17\))))
-- \u_clkDiv|Add4~7\ = CARRY(((!\u_clkDiv|Add4~17\)) # (!\u_clkDiv|Clk10hzCntr\(5)))
-- \u_clkDiv|Add4~7COUT1_45\ = CARRY(((!\u_clkDiv|Add4~17\)) # (!\u_clkDiv|Clk10hzCntr\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk10hzCntr\(5),
	cin => \u_clkDiv|Add4~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~5_combout\,
	cout0 => \u_clkDiv|Add4~7\,
	cout1 => \u_clkDiv|Add4~7COUT1_45\);

-- Location: LC_X11_Y13_N3
\u_clkDiv|Clk10hzCntr[5]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10hzCntr\(5) = DFFEAS(((\u_clkDiv|Add4~5_combout\ & ((!\u_clkDiv|Equal4~0\) # (!\u_clkDiv|Equal4~1\)))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_clkDiv|Equal4~1\,
	datac => \u_clkDiv|Equal4~0\,
	datad => \u_clkDiv|Add4~5_combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10hzCntr\(5));

-- Location: LC_X10_Y13_N6
\u_clkDiv|Add4~0\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~0_combout\ = (\u_clkDiv|Clk10hzCntr\(6) $ ((!(!\u_clkDiv|Add4~17\ & \u_clkDiv|Add4~7\) # (\u_clkDiv|Add4~17\ & \u_clkDiv|Add4~7COUT1_45\))))
-- \u_clkDiv|Add4~2\ = CARRY(((\u_clkDiv|Clk10hzCntr\(6) & !\u_clkDiv|Add4~7\)))
-- \u_clkDiv|Add4~2COUT1_46\ = CARRY(((\u_clkDiv|Clk10hzCntr\(6) & !\u_clkDiv|Add4~7COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk10hzCntr\(6),
	cin => \u_clkDiv|Add4~17\,
	cin0 => \u_clkDiv|Add4~7\,
	cin1 => \u_clkDiv|Add4~7COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~0_combout\,
	cout0 => \u_clkDiv|Add4~2\,
	cout1 => \u_clkDiv|Add4~2COUT1_46\);

-- Location: LC_X11_Y13_N8
\u_clkDiv|Clk10hzCntr[6]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10hzCntr\(6) = DFFEAS(((\u_clkDiv|Add4~0_combout\ & ((!\u_clkDiv|Equal4~1\) # (!\u_clkDiv|Equal4~0\)))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal4~0\,
	datac => \u_clkDiv|Add4~0_combout\,
	datad => \u_clkDiv|Equal4~1\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10hzCntr\(6));

-- Location: LC_X10_Y13_N9
\u_clkDiv|Clk10hzCntr[7]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal4~0\ = (\u_clkDiv|Clk10hzCntr\(5) & (!\u_clkDiv|Clk10hzCntr\(4) & (!C1_Clk10hzCntr[7] & \u_clkDiv|Clk10hzCntr\(6))))
-- \u_clkDiv|Clk10hzCntr\(7) = DFFEAS(\u_clkDiv|Equal4~0\, GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, \u_clkDiv|Add4~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk10hzCntr\(5),
	datab => \u_clkDiv|Clk10hzCntr\(4),
	datac => \u_clkDiv|Add4~10_combout\,
	datad => \u_clkDiv|Clk10hzCntr\(6),
	aclr => GND,
	sload => VCC,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal4~0\,
	regout => \u_clkDiv|Clk10hzCntr\(7));

-- Location: LC_X10_Y13_N7
\u_clkDiv|Add4~10\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add4~10_combout\ = (((!\u_clkDiv|Add4~17\ & \u_clkDiv|Add4~2\) # (\u_clkDiv|Add4~17\ & \u_clkDiv|Add4~2COUT1_46\) $ (\u_clkDiv|Clk10hzCntr\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_clkDiv|Clk10hzCntr\(7),
	cin => \u_clkDiv|Add4~17\,
	cin0 => \u_clkDiv|Add4~2\,
	cin1 => \u_clkDiv|Add4~2COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add4~10_combout\);

-- Location: LC_X11_Y13_N4
\u_clkDiv|Clk10hzCntr[2]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10hzCntr\(2) = DFFEAS(((\u_clkDiv|Add4~35_combout\ & ((!\u_clkDiv|Equal4~0\) # (!\u_clkDiv|Equal4~1\)))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_clkDiv|Equal4~1\,
	datac => \u_clkDiv|Equal4~0\,
	datad => \u_clkDiv|Add4~35_combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10hzCntr\(2));

-- Location: LC_X11_Y13_N5
\u_clkDiv|Clk10hzCntr[3]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk10hzCntr\(3) = DFFEAS((((\u_clkDiv|Add4~30_combout\))), GLOBAL(\Clock~combout\), VCC, , \u_clkDiv|iClk1KhzEn~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Add4~30_combout\,
	aclr => GND,
	ena => \u_clkDiv|iClk1KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk10hzCntr\(3));

-- Location: LC_X12_Y9_N7
\u_clkDiv|iClk10hzEn\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|iClk10hzEn~regout\ = DFFEAS((\u_clkDiv|iClk1KhzEn~regout\ & (((\u_clkDiv|Equal4~1\ & \u_clkDiv|Equal4~0\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|iClk1KhzEn~regout\,
	datac => \u_clkDiv|Equal4~1\,
	datad => \u_clkDiv|Equal4~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|iClk10hzEn~regout\);

-- Location: LC_X12_Y9_N6
\u_Sled|TimeOutCntr~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr~0_combout\ = ((\u_clkDiv|iClk10hzEn~regout\ & ((\u_Sled|DeTuning~regout\) # (\u_Sled|Tuning~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|iClk10hzEn~regout\,
	datac => \u_Sled|DeTuning~regout\,
	datad => \u_Sled|Tuning~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|TimeOutCntr~0_combout\);

-- Location: LC_X12_Y9_N4
\u_Sled|TimeOutCntr~17\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr~17_combout\ = (\u_Sled|SLEDTimeOut~0_combout\) # (((\u_Sled|TimeOutCntr~0_combout\ & !\u_Sled|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|SLEDTimeOut~0_combout\,
	datac => \u_Sled|TimeOutCntr~0_combout\,
	datad => \u_Sled|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|TimeOutCntr~17_combout\);

-- Location: LC_X13_Y9_N0
\u_Sled|TimeOutCntr[0]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(0) = DFFEAS(((!\u_Sled|TimeOutCntr\(0))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|TimeOutCntr~17_combout\, , , \u_Sled|GenAc_p~0_combout\, )
-- \u_Sled|TimeOutCntr[0]~2\ = CARRY(((\u_Sled|TimeOutCntr\(0))))
-- \u_Sled|TimeOutCntr[0]~2COUT1_19\ = CARRY(((\u_Sled|TimeOutCntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|TimeOutCntr\(0),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(0),
	cout0 => \u_Sled|TimeOutCntr[0]~2\,
	cout1 => \u_Sled|TimeOutCntr[0]~2COUT1_19\);

-- Location: LC_X13_Y9_N1
\u_Sled|TimeOutCntr[1]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(1) = DFFEAS((\u_Sled|TimeOutCntr\(1) $ ((\u_Sled|TimeOutCntr[0]~2\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|TimeOutCntr~17_combout\, , , \u_Sled|GenAc_p~0_combout\, )
-- \u_Sled|TimeOutCntr[1]~4\ = CARRY(((!\u_Sled|TimeOutCntr[0]~2\) # (!\u_Sled|TimeOutCntr\(1))))
-- \u_Sled|TimeOutCntr[1]~4COUT1_20\ = CARRY(((!\u_Sled|TimeOutCntr[0]~2COUT1_19\) # (!\u_Sled|TimeOutCntr\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|TimeOutCntr\(1),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	cin0 => \u_Sled|TimeOutCntr[0]~2\,
	cin1 => \u_Sled|TimeOutCntr[0]~2COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(1),
	cout0 => \u_Sled|TimeOutCntr[1]~4\,
	cout1 => \u_Sled|TimeOutCntr[1]~4COUT1_20\);

-- Location: LC_X13_Y9_N2
\u_Sled|TimeOutCntr[2]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(2) = DFFEAS((\u_Sled|TimeOutCntr\(2) $ ((!\u_Sled|TimeOutCntr[1]~4\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|TimeOutCntr~17_combout\, , , \u_Sled|GenAc_p~0_combout\, )
-- \u_Sled|TimeOutCntr[2]~14\ = CARRY(((\u_Sled|TimeOutCntr\(2) & !\u_Sled|TimeOutCntr[1]~4\)))
-- \u_Sled|TimeOutCntr[2]~14COUT1_21\ = CARRY(((\u_Sled|TimeOutCntr\(2) & !\u_Sled|TimeOutCntr[1]~4COUT1_20\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|TimeOutCntr\(2),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	cin0 => \u_Sled|TimeOutCntr[1]~4\,
	cin1 => \u_Sled|TimeOutCntr[1]~4COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(2),
	cout0 => \u_Sled|TimeOutCntr[2]~14\,
	cout1 => \u_Sled|TimeOutCntr[2]~14COUT1_21\);

-- Location: LC_X13_Y9_N3
\u_Sled|TimeOutCntr[3]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(3) = DFFEAS(\u_Sled|TimeOutCntr\(3) $ ((((\u_Sled|TimeOutCntr[2]~14\)))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|TimeOutCntr~17_combout\, , , \u_Sled|GenAc_p~0_combout\, )
-- \u_Sled|TimeOutCntr[3]~16\ = CARRY(((!\u_Sled|TimeOutCntr[2]~14\)) # (!\u_Sled|TimeOutCntr\(3)))
-- \u_Sled|TimeOutCntr[3]~16COUT1_22\ = CARRY(((!\u_Sled|TimeOutCntr[2]~14COUT1_21\)) # (!\u_Sled|TimeOutCntr\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|TimeOutCntr\(3),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	cin0 => \u_Sled|TimeOutCntr[2]~14\,
	cin1 => \u_Sled|TimeOutCntr[2]~14COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(3),
	cout0 => \u_Sled|TimeOutCntr[3]~16\,
	cout1 => \u_Sled|TimeOutCntr[3]~16COUT1_22\);

-- Location: LC_X13_Y9_N4
\u_Sled|TimeOutCntr[4]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(4) = DFFEAS((\u_Sled|TimeOutCntr\(4) $ ((!\u_Sled|TimeOutCntr[3]~16\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|TimeOutCntr~17_combout\, , , \u_Sled|GenAc_p~0_combout\, )
-- \u_Sled|TimeOutCntr[4]~6\ = CARRY(((\u_Sled|TimeOutCntr\(4) & !\u_Sled|TimeOutCntr[3]~16COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|TimeOutCntr\(4),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	cin0 => \u_Sled|TimeOutCntr[3]~16\,
	cin1 => \u_Sled|TimeOutCntr[3]~16COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(4),
	cout => \u_Sled|TimeOutCntr[4]~6\);

-- Location: LC_X13_Y9_N5
\u_Sled|TimeOutCntr[5]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(5) = DFFEAS(\u_Sled|TimeOutCntr\(5) $ ((((\u_Sled|TimeOutCntr[4]~6\)))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|TimeOutCntr~17_combout\, , , \u_Sled|GenAc_p~0_combout\, )
-- \u_Sled|TimeOutCntr[5]~8\ = CARRY(((!\u_Sled|TimeOutCntr[4]~6\)) # (!\u_Sled|TimeOutCntr\(5)))
-- \u_Sled|TimeOutCntr[5]~8COUT1_23\ = CARRY(((!\u_Sled|TimeOutCntr[4]~6\)) # (!\u_Sled|TimeOutCntr\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|TimeOutCntr\(5),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	cin => \u_Sled|TimeOutCntr[4]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(5),
	cout0 => \u_Sled|TimeOutCntr[5]~8\,
	cout1 => \u_Sled|TimeOutCntr[5]~8COUT1_23\);

-- Location: LC_X13_Y9_N6
\u_Sled|TimeOutCntr[6]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(6) = DFFEAS(\u_Sled|TimeOutCntr\(6) $ ((((!(!\u_Sled|TimeOutCntr[4]~6\ & \u_Sled|TimeOutCntr[5]~8\) # (\u_Sled|TimeOutCntr[4]~6\ & \u_Sled|TimeOutCntr[5]~8COUT1_23\))))), GLOBAL(\Clock~combout\), VCC, , 
-- \u_Sled|TimeOutCntr~17_combout\, , , \u_Sled|GenAc_p~0_combout\, )
-- \u_Sled|TimeOutCntr[6]~10\ = CARRY((\u_Sled|TimeOutCntr\(6) & ((!\u_Sled|TimeOutCntr[5]~8\))))
-- \u_Sled|TimeOutCntr[6]~10COUT1_24\ = CARRY((\u_Sled|TimeOutCntr\(6) & ((!\u_Sled|TimeOutCntr[5]~8COUT1_23\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|TimeOutCntr\(6),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	cin => \u_Sled|TimeOutCntr[4]~6\,
	cin0 => \u_Sled|TimeOutCntr[5]~8\,
	cin1 => \u_Sled|TimeOutCntr[5]~8COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(6),
	cout0 => \u_Sled|TimeOutCntr[6]~10\,
	cout1 => \u_Sled|TimeOutCntr[6]~10COUT1_24\);

-- Location: LC_X13_Y9_N7
\u_Sled|TimeOutCntr[7]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|TimeOutCntr\(7) = DFFEAS((\u_Sled|TimeOutCntr\(7) $ (((!\u_Sled|TimeOutCntr[4]~6\ & \u_Sled|TimeOutCntr[6]~10\) # (\u_Sled|TimeOutCntr[4]~6\ & \u_Sled|TimeOutCntr[6]~10COUT1_24\)))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|TimeOutCntr~17_combout\, 
-- , , \u_Sled|GenAc_p~0_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_Sled|TimeOutCntr\(7),
	aclr => GND,
	sclr => \u_Sled|GenAc_p~0_combout\,
	ena => \u_Sled|TimeOutCntr~17_combout\,
	cin => \u_Sled|TimeOutCntr[4]~6\,
	cin0 => \u_Sled|TimeOutCntr[6]~10\,
	cin1 => \u_Sled|TimeOutCntr[6]~10COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|TimeOutCntr\(7));

-- Location: LC_X13_Y9_N9
\u_Sled|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \u_Sled|Equal2~1_combout\ = (!\u_Sled|TimeOutCntr\(6) & (!\u_Sled|TimeOutCntr\(7) & (!\u_Sled|TimeOutCntr\(5) & \u_Sled|TimeOutCntr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|TimeOutCntr\(6),
	datab => \u_Sled|TimeOutCntr\(7),
	datac => \u_Sled|TimeOutCntr\(5),
	datad => \u_Sled|TimeOutCntr\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|Equal2~1_combout\);

-- Location: LC_X13_Y9_N8
\u_Sled|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \u_Sled|Equal2~0_combout\ = (((\u_Sled|TimeOutCntr\(0) & \u_Sled|TimeOutCntr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_Sled|TimeOutCntr\(0),
	datad => \u_Sled|TimeOutCntr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|Equal2~0_combout\);

-- Location: LC_X12_Y9_N3
\u_Sled|Equal2~2\ : maxv_lcell
-- Equation(s):
-- \u_Sled|Equal2~2_combout\ = (!\u_Sled|TimeOutCntr\(3) & (!\u_Sled|TimeOutCntr\(2) & (\u_Sled|Equal2~1_combout\ & \u_Sled|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|TimeOutCntr\(3),
	datab => \u_Sled|TimeOutCntr\(2),
	datac => \u_Sled|Equal2~1_combout\,
	datad => \u_Sled|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|Equal2~2_combout\);

-- Location: LC_X12_Y9_N8
\u_Sled|SLEDTimeOut\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDTimeOut~regout\ = DFFEAS((\u_Sled|Equal2~2_combout\ & ((\u_Sled|TimeOutCntr~0_combout\) # ((\u_Sled|SLEDTimeOut~regout\ & !\u_Sled|SLEDTimeOut~0_combout\)))) # (!\u_Sled|Equal2~2_combout\ & (\u_Sled|SLEDTimeOut~regout\ & 
-- ((!\u_Sled|SLEDTimeOut~0_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|Equal2~2_combout\,
	datab => \u_Sled|SLEDTimeOut~regout\,
	datac => \u_Sled|TimeOutCntr~0_combout\,
	datad => \u_Sled|SLEDTimeOut~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDTimeOut~regout\);

-- Location: LC_X11_Y9_N5
\u_Sled|DeTuning~1\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DeTuning~1_combout\ = (\u_Sled|DeTuning~0\) # ((\u_Sled|DeTuning~regout\ & ((\u_Sled|DbSLEDTuned~combout\) # (!\u_Sled|Tuning~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eece",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Sled|DeTuning~regout\,
	datab => \u_Sled|DeTuning~0\,
	datac => \u_Sled|Tuning~0\,
	datad => \u_Sled|DbSLEDTuned~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Sled|DeTuning~1_combout\);

-- Location: LC_X11_Y9_N6
\u_Sled|DeTuning\ : maxv_lcell
-- Equation(s):
-- \u_Sled|DeTuning~regout\ = DFFEAS((!\ClrFault~combout\ & (!\u_Sled|SLEDTimeOut~regout\ & (!\u_Sled|DbSLEDDeTuned~combout\ & \u_Sled|DeTuning~1_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \ClrFault~combout\,
	datab => \u_Sled|SLEDTimeOut~regout\,
	datac => \u_Sled|DbSLEDDeTuned~combout\,
	datad => \u_Sled|DeTuning~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|DeTuning~regout\);

-- Location: LC_X11_Y9_N4
\u_Sled|SLEDStatusOut[6]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(6) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, \u_Sled|DeTuning~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_Sled|DeTuning~regout\,
	aclr => GND,
	sload => VCC,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(6));

-- Location: LC_X10_Y9_N6
\u_spi|DataOutSR[13]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(13) = DFFEAS((\u_SysInfo|Mux8~1_combout\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(6))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(12), , , 
-- \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_SysInfo|Mux8~1_combout\,
	datab => \u_RegIntf|Mux1~1\,
	datac => \u_spi|DataOutSR\(12),
	datad => \u_Sled|SLEDStatusOut\(6),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(13));

-- Location: LC_X11_Y9_N7
\u_Sled|SLEDStatusOut[7]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(7) = DFFEAS((((\u_Sled|Tuning~regout\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_Sled|Tuning~regout\,
	aclr => GND,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(7));

-- Location: LC_X10_Y9_N5
\u_spi|DataOutSR[14]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(14) = DFFEAS((\u_SysInfo|Mux7~1\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(7))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(13), , , \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_SysInfo|Mux7~1\,
	datac => \u_spi|DataOutSR\(13),
	datad => \u_Sled|SLEDStatusOut\(7),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(14));

-- Location: LC_X11_Y9_N8
\u_Sled|SLEDStatusOut[8]\ : maxv_lcell
-- Equation(s):
-- \u_Sled|SLEDStatusOut\(8) = DFFEAS((((\u_Sled|SLEDTimeOut~regout\))), GLOBAL(\Clock~combout\), VCC, , \u_Sled|SLEDStatusOut~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_Sled|SLEDTimeOut~regout\,
	aclr => GND,
	ena => \u_Sled|SLEDStatusOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|SLEDStatusOut\(8));

-- Location: LC_X10_Y9_N2
\u_spi|DataOutSR[15]\ : maxv_lcell
-- Equation(s):
-- \u_spi|DataOutSR\(15) = DFFEAS((\u_SysInfo|Mux6~1\) # ((\u_RegIntf|Mux1~1\ & ((\u_Sled|SLEDStatusOut\(8))))), GLOBAL(\Cmd_Clk~combout\), !GLOBAL(\n_Cmd_CS~combout\), , \u_spi|WideOr3~0_combout\, \u_spi|DataOutSR\(14), , , \u_spi|QSPI_State.Readt~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_SysInfo|Mux6~1\,
	datac => \u_spi|DataOutSR\(14),
	datad => \u_Sled|SLEDStatusOut\(8),
	aclr => \n_Cmd_CS~combout\,
	sload => \u_spi|QSPI_State.Readt~regout\,
	ena => \u_spi|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DataOutSR\(15));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ByPass~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ByPass,
	combout => \ByPass~combout\);

-- Location: LC_X5_Y9_N9
\u_Sled|iSLEDFault\ : maxv_lcell
-- Equation(s):
-- \u_Sled|iSLEDFault~regout\ = DFFEAS((\u_Sled|DbSLEDTuned~combout\ & (!\ClrFault~combout\ & (\u_Sled|iSLEDFault~regout\))) # (!\u_Sled|DbSLEDTuned~combout\ & (((!\ClrFault~combout\ & \u_Sled|iSLEDFault~regout\)) # (!\u_Sled|DbSLEDDeTuned~combout\))), 
-- GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3075",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_Sled|DbSLEDTuned~combout\,
	datab => \ClrFault~combout\,
	datac => \u_Sled|iSLEDFault~regout\,
	datad => \u_Sled|DbSLEDDeTuned~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Sled|iSLEDFault~regout\);

-- Location: LC_X5_Y9_N1
\RfOn~0\ : maxv_lcell
-- Equation(s):
-- \RfOn~0_combout\ = (\ByPass~combout\) # ((!\u_Sled|iSLEDFault~regout\ & (!\u_ModFlt|ModFaultOut~regout\ & !\u_FastFault|iFaultOut~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ByPass~combout\,
	datab => \u_Sled|iSLEDFault~regout\,
	datac => \u_ModFlt|ModFaultOut~regout\,
	datad => \u_FastFault|iFaultOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RfOn~0_combout\);

-- Location: LC_X5_Y9_N2
\u_spi|iDout\ : maxv_lcell
-- Equation(s):
-- \u_spi|iDout~regout\ = DFFEAS((\u_spi|Load~regout\ & (\u_RegIntf|Mux1~1\ & ((\RfOn~0_combout\)))) # (!\u_spi|Load~regout\ & (((\u_spi|DataOutSR\(15))))), !GLOBAL(\Cmd_Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Cmd_Clk~combout\,
	dataa => \u_RegIntf|Mux1~1\,
	datab => \u_spi|Load~regout\,
	datac => \u_spi|DataOutSR\(15),
	datad => \RfOn~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|iDout~regout\);

-- Location: LC_X5_Y8_N4
\u_spi|DoutEn\ : maxv_lcell
-- Equation(s):
-- \u_spi|DoutEn~regout\ = DFFEAS((\u_spi|QSPI_State.CMDIn~regout\ & ((\u_spi|Equal0~0_combout\) # ((\u_spi|DoutEn~regout\)))) # (!\u_spi|QSPI_State.CMDIn~regout\ & (((\u_spi|DoutEn~regout\ & !\u_spi|Selector17~0_combout\)))), GLOBAL(\Cmd_Clk~combout\), 
-- !GLOBAL(\n_Cmd_CS~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Cmd_Clk~combout\,
	dataa => \u_spi|QSPI_State.CMDIn~regout\,
	datab => \u_spi|Equal0~0_combout\,
	datac => \u_spi|DoutEn~regout\,
	datad => \u_spi|Selector17~0_combout\,
	aclr => \n_Cmd_CS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_spi|DoutEn~regout\);

-- Location: LC_X5_Y8_N8
\u_spi|iDoutEn\ : maxv_lcell
-- Equation(s):
-- \u_spi|Dout~0\ = (H1_iDoutEn & (((\u_spi|iDout~regout\)))) # (!H1_iDoutEn & (\Cmd_SDI~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Cmd_Clk~combout\,
	dataa => \Cmd_SDI~combout\,
	datab => \u_spi|iDout~regout\,
	datac => \u_spi|DoutEn~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_spi|Dout~0\,
	regout => \u_spi|iDoutEn~regout\);

-- Location: LC_X16_Y6_N4
\u_clkDiv|Add0~55\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~55_combout\ = ((!\u_clkDiv|Clk245khzCntr\(0)))
-- \u_clkDiv|Add0~57\ = CARRY(((\u_clkDiv|Clk245khzCntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~55_combout\,
	cout => \u_clkDiv|Add0~57\);

-- Location: LC_X16_Y6_N1
\u_clkDiv|Clk245khzCntr[0]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(0) = DFFEAS((\u_clkDiv|Add0~55_combout\ & (((!\u_clkDiv|Equal0~0\) # (!\u_clkDiv|Equal0~2\)) # (!\u_clkDiv|Equal0~1\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal0~1\,
	datab => \u_clkDiv|Equal0~2\,
	datac => \u_clkDiv|Add0~55_combout\,
	datad => \u_clkDiv|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(0));

-- Location: LC_X16_Y6_N5
\u_clkDiv|Add0~50\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~50_combout\ = (\u_clkDiv|Clk245khzCntr\(1) $ ((\u_clkDiv|Add0~57\)))
-- \u_clkDiv|Add0~52\ = CARRY(((!\u_clkDiv|Add0~57\) # (!\u_clkDiv|Clk245khzCntr\(1))))
-- \u_clkDiv|Add0~52COUT1_61\ = CARRY(((!\u_clkDiv|Add0~57\) # (!\u_clkDiv|Clk245khzCntr\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(1),
	cin => \u_clkDiv|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~50_combout\,
	cout0 => \u_clkDiv|Add0~52\,
	cout1 => \u_clkDiv|Add0~52COUT1_61\);

-- Location: LC_X15_Y6_N6
\u_clkDiv|Clk245khzCntr[1]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal0~2\ = (\u_clkDiv|Clk245khzCntr\(2) & (\u_clkDiv|Clk245khzCntr\(3) & (!C1_Clk245khzCntr[1] & !\u_clkDiv|Clk245khzCntr\(0))))
-- \u_clkDiv|Clk245khzCntr\(1) = DFFEAS(\u_clkDiv|Equal0~2\, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk245khzCntr\(2),
	datab => \u_clkDiv|Clk245khzCntr\(3),
	datac => \u_clkDiv|Add0~50_combout\,
	datad => \u_clkDiv|Clk245khzCntr\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal0~2\,
	regout => \u_clkDiv|Clk245khzCntr\(1));

-- Location: LC_X16_Y6_N6
\u_clkDiv|Add0~45\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~45_combout\ = (\u_clkDiv|Clk245khzCntr\(2) $ ((!(!\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~52\) # (\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~52COUT1_61\))))
-- \u_clkDiv|Add0~47\ = CARRY(((\u_clkDiv|Clk245khzCntr\(2) & !\u_clkDiv|Add0~52\)))
-- \u_clkDiv|Add0~47COUT1_62\ = CARRY(((\u_clkDiv|Clk245khzCntr\(2) & !\u_clkDiv|Add0~52COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(2),
	cin => \u_clkDiv|Add0~57\,
	cin0 => \u_clkDiv|Add0~52\,
	cin1 => \u_clkDiv|Add0~52COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~45_combout\,
	cout0 => \u_clkDiv|Add0~47\,
	cout1 => \u_clkDiv|Add0~47COUT1_62\);

-- Location: LC_X16_Y6_N7
\u_clkDiv|Add0~40\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~40_combout\ = (\u_clkDiv|Clk245khzCntr\(3) $ (((!\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~47\) # (\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~47COUT1_62\))))
-- \u_clkDiv|Add0~42\ = CARRY(((!\u_clkDiv|Add0~47\) # (!\u_clkDiv|Clk245khzCntr\(3))))
-- \u_clkDiv|Add0~42COUT1_63\ = CARRY(((!\u_clkDiv|Add0~47COUT1_62\) # (!\u_clkDiv|Clk245khzCntr\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(3),
	cin => \u_clkDiv|Add0~57\,
	cin0 => \u_clkDiv|Add0~47\,
	cin1 => \u_clkDiv|Add0~47COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~40_combout\,
	cout0 => \u_clkDiv|Add0~42\,
	cout1 => \u_clkDiv|Add0~42COUT1_63\);

-- Location: LC_X15_Y6_N2
\u_clkDiv|Clk245khzCntr[3]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(3) = DFFEAS((\u_clkDiv|Add0~40_combout\ & (((!\u_clkDiv|Equal0~0\) # (!\u_clkDiv|Equal0~2\)) # (!\u_clkDiv|Equal0~1\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Add0~40_combout\,
	datab => \u_clkDiv|Equal0~1\,
	datac => \u_clkDiv|Equal0~2\,
	datad => \u_clkDiv|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(3));

-- Location: LC_X16_Y6_N8
\u_clkDiv|Add0~35\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~35_combout\ = (\u_clkDiv|Clk245khzCntr\(4) $ ((!(!\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~42\) # (\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~42COUT1_63\))))
-- \u_clkDiv|Add0~37\ = CARRY(((\u_clkDiv|Clk245khzCntr\(4) & !\u_clkDiv|Add0~42\)))
-- \u_clkDiv|Add0~37COUT1_64\ = CARRY(((\u_clkDiv|Clk245khzCntr\(4) & !\u_clkDiv|Add0~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(4),
	cin => \u_clkDiv|Add0~57\,
	cin0 => \u_clkDiv|Add0~42\,
	cin1 => \u_clkDiv|Add0~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~35_combout\,
	cout0 => \u_clkDiv|Add0~37\,
	cout1 => \u_clkDiv|Add0~37COUT1_64\);

-- Location: LC_X17_Y6_N0
\u_clkDiv|Add0~25\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~25_combout\ = (\u_clkDiv|Clk245khzCntr\(6) $ ((!\u_clkDiv|Add0~32\)))
-- \u_clkDiv|Add0~27\ = CARRY(((\u_clkDiv|Clk245khzCntr\(6) & !\u_clkDiv|Add0~32\)))
-- \u_clkDiv|Add0~27COUT1_65\ = CARRY(((\u_clkDiv|Clk245khzCntr\(6) & !\u_clkDiv|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(6),
	cin => \u_clkDiv|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~25_combout\,
	cout0 => \u_clkDiv|Add0~27\,
	cout1 => \u_clkDiv|Add0~27COUT1_65\);

-- Location: LC_X17_Y6_N7
\u_clkDiv|Clk245khzCntr[6]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(6) = DFFEAS((\u_clkDiv|Add0~25_combout\ & (((!\u_clkDiv|Equal0~0\) # (!\u_clkDiv|Equal0~1\)) # (!\u_clkDiv|Equal0~2\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal0~2\,
	datab => \u_clkDiv|Equal0~1\,
	datac => \u_clkDiv|Add0~25_combout\,
	datad => \u_clkDiv|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(6));

-- Location: LC_X16_Y6_N2
\u_clkDiv|Clk245khzCntr[4]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal0~1\ = (\u_clkDiv|Clk245khzCntr\(7) & (\u_clkDiv|Clk245khzCntr\(5) & (!C1_Clk245khzCntr[4] & \u_clkDiv|Clk245khzCntr\(6))))
-- \u_clkDiv|Clk245khzCntr\(4) = DFFEAS(\u_clkDiv|Equal0~1\, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk245khzCntr\(7),
	datab => \u_clkDiv|Clk245khzCntr\(5),
	datac => \u_clkDiv|Add0~35_combout\,
	datad => \u_clkDiv|Clk245khzCntr\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal0~1\,
	regout => \u_clkDiv|Clk245khzCntr\(4));

-- Location: LC_X16_Y6_N9
\u_clkDiv|Add0~30\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~30_combout\ = (\u_clkDiv|Clk245khzCntr\(5) $ (((!\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~37\) # (\u_clkDiv|Add0~57\ & \u_clkDiv|Add0~37COUT1_64\))))
-- \u_clkDiv|Add0~32\ = CARRY(((!\u_clkDiv|Add0~37COUT1_64\) # (!\u_clkDiv|Clk245khzCntr\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(5),
	cin => \u_clkDiv|Add0~57\,
	cin0 => \u_clkDiv|Add0~37\,
	cin1 => \u_clkDiv|Add0~37COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~30_combout\,
	cout => \u_clkDiv|Add0~32\);

-- Location: LC_X15_Y6_N7
\u_clkDiv|Clk245khzCntr[5]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(5) = DFFEAS((\u_clkDiv|Add0~30_combout\ & (((!\u_clkDiv|Equal0~0\) # (!\u_clkDiv|Equal0~1\)) # (!\u_clkDiv|Equal0~2\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal0~2\,
	datab => \u_clkDiv|Equal0~1\,
	datac => \u_clkDiv|Add0~30_combout\,
	datad => \u_clkDiv|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(5));

-- Location: LC_X17_Y6_N1
\u_clkDiv|Add0~20\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~20_combout\ = (\u_clkDiv|Clk245khzCntr\(7) $ (((!\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~27\) # (\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~27COUT1_65\))))
-- \u_clkDiv|Add0~22\ = CARRY(((!\u_clkDiv|Add0~27\) # (!\u_clkDiv|Clk245khzCntr\(7))))
-- \u_clkDiv|Add0~22COUT1_66\ = CARRY(((!\u_clkDiv|Add0~27COUT1_65\) # (!\u_clkDiv|Clk245khzCntr\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(7),
	cin => \u_clkDiv|Add0~32\,
	cin0 => \u_clkDiv|Add0~27\,
	cin1 => \u_clkDiv|Add0~27COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~20_combout\,
	cout0 => \u_clkDiv|Add0~22\,
	cout1 => \u_clkDiv|Add0~22COUT1_66\);

-- Location: LC_X17_Y6_N2
\u_clkDiv|Add0~0\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~0_combout\ = \u_clkDiv|Clk245khzCntr\(8) $ ((((!(!\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~22\) # (\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~22COUT1_66\)))))
-- \u_clkDiv|Add0~2\ = CARRY((\u_clkDiv|Clk245khzCntr\(8) & ((!\u_clkDiv|Add0~22\))))
-- \u_clkDiv|Add0~2COUT1_67\ = CARRY((\u_clkDiv|Clk245khzCntr\(8) & ((!\u_clkDiv|Add0~22COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk245khzCntr\(8),
	cin => \u_clkDiv|Add0~32\,
	cin0 => \u_clkDiv|Add0~22\,
	cin1 => \u_clkDiv|Add0~22COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~0_combout\,
	cout0 => \u_clkDiv|Add0~2\,
	cout1 => \u_clkDiv|Add0~2COUT1_67\);

-- Location: LC_X17_Y6_N6
\u_clkDiv|Clk245khzCntr[8]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(8) = DFFEAS((\u_clkDiv|Add0~0_combout\ & (((!\u_clkDiv|Equal0~2\) # (!\u_clkDiv|Equal0~1\)) # (!\u_clkDiv|Equal0~0\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal0~0\,
	datab => \u_clkDiv|Equal0~1\,
	datac => \u_clkDiv|Equal0~2\,
	datad => \u_clkDiv|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(8));

-- Location: LC_X17_Y6_N3
\u_clkDiv|Add0~15\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~15_combout\ = (\u_clkDiv|Clk245khzCntr\(9) $ (((!\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~2\) # (\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~2COUT1_67\))))
-- \u_clkDiv|Add0~17\ = CARRY(((!\u_clkDiv|Add0~2\) # (!\u_clkDiv|Clk245khzCntr\(9))))
-- \u_clkDiv|Add0~17COUT1_68\ = CARRY(((!\u_clkDiv|Add0~2COUT1_67\) # (!\u_clkDiv|Clk245khzCntr\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDiv|Clk245khzCntr\(9),
	cin => \u_clkDiv|Add0~32\,
	cin0 => \u_clkDiv|Add0~2\,
	cin1 => \u_clkDiv|Add0~2COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~15_combout\,
	cout0 => \u_clkDiv|Add0~17\,
	cout1 => \u_clkDiv|Add0~17COUT1_68\);

-- Location: LC_X17_Y6_N9
\u_clkDiv|Clk245khzCntr[9]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(9) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u_clkDiv|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(9));

-- Location: LC_X17_Y6_N4
\u_clkDiv|Add0~10\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~10_combout\ = \u_clkDiv|Clk245khzCntr\(10) $ ((((!(!\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~17\) # (\u_clkDiv|Add0~32\ & \u_clkDiv|Add0~17COUT1_68\)))))
-- \u_clkDiv|Add0~12\ = CARRY((\u_clkDiv|Clk245khzCntr\(10) & ((!\u_clkDiv|Add0~17COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|Clk245khzCntr\(10),
	cin => \u_clkDiv|Add0~32\,
	cin0 => \u_clkDiv|Add0~17\,
	cin1 => \u_clkDiv|Add0~17COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~10_combout\,
	cout => \u_clkDiv|Add0~12\);

-- Location: LC_X18_Y6_N1
\u_clkDiv|Clk245khzCntr[10]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(10) = DFFEAS((((\u_clkDiv|Add0~10_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => \u_clkDiv|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(10));

-- Location: LC_X17_Y6_N8
\u_clkDiv|Clk245khzCntr[11]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Equal0~0\ = (\u_clkDiv|Clk245khzCntr\(8) & (!\u_clkDiv|Clk245khzCntr\(9) & (!C1_Clk245khzCntr[11] & !\u_clkDiv|Clk245khzCntr\(10))))
-- \u_clkDiv|Clk245khzCntr\(11) = DFFEAS(\u_clkDiv|Equal0~0\, GLOBAL(\Clock~combout\), VCC, , , \u_clkDiv|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Clk245khzCntr\(8),
	datab => \u_clkDiv|Clk245khzCntr\(9),
	datac => \u_clkDiv|Add0~5_combout\,
	datad => \u_clkDiv|Clk245khzCntr\(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Equal0~0\,
	regout => \u_clkDiv|Clk245khzCntr\(11));

-- Location: LC_X17_Y6_N5
\u_clkDiv|Add0~5\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Add0~5_combout\ = ((\u_clkDiv|Add0~12\ $ (\u_clkDiv|Clk245khzCntr\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_clkDiv|Clk245khzCntr\(11),
	cin => \u_clkDiv|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDiv|Add0~5_combout\);

-- Location: LC_X16_Y6_N3
\u_clkDiv|Clk245khzCntr[7]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(7) = DFFEAS((\u_clkDiv|Add0~20_combout\ & (((!\u_clkDiv|Equal0~2\) # (!\u_clkDiv|Equal0~0\)) # (!\u_clkDiv|Equal0~1\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal0~1\,
	datab => \u_clkDiv|Equal0~0\,
	datac => \u_clkDiv|Equal0~2\,
	datad => \u_clkDiv|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(7));

-- Location: LC_X16_Y6_N0
\u_clkDiv|Clk245khzCntr[2]\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|Clk245khzCntr\(2) = DFFEAS((\u_clkDiv|Add0~45_combout\ & (((!\u_clkDiv|Equal0~0\) # (!\u_clkDiv|Equal0~2\)) # (!\u_clkDiv|Equal0~1\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal0~1\,
	datab => \u_clkDiv|Equal0~2\,
	datac => \u_clkDiv|Add0~45_combout\,
	datad => \u_clkDiv|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|Clk245khzCntr\(2));

-- Location: LC_X14_Y6_N2
\u_clkDiv|iClk245KhzEn\ : maxv_lcell
-- Equation(s):
-- \u_clkDiv|iClk245KhzEn~regout\ = DFFEAS((\u_clkDiv|Equal0~2\ & (((\u_clkDiv|Equal0~1\ & \u_clkDiv|Equal0~0\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u_clkDiv|Equal0~2\,
	datac => \u_clkDiv|Equal0~1\,
	datad => \u_clkDiv|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDiv|iClk245KhzEn~regout\);

-- Location: LC_X13_Y4_N2
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X14_Y5_N1
\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0) = DFFEAS(((!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|deco1_dffe~regout\, \~GND~combout\, , , 
-- \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\)
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUT\ = CARRY(((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0))))
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\,
	ena => \u0|ufm_parallel_0|deco1_dffe~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0),
	cout0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUT\,
	cout1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X14_Y5_N2
\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1) = DFFEAS((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1) $ ((\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUT\))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , 
-- \u0|ufm_parallel_0|deco1_dffe~regout\, \~GND~combout\, , , \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\)
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUT\ = CARRY(((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUT\) # (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1))))
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUTCOUT1_1\) # (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\,
	ena => \u0|ufm_parallel_0|deco1_dffe~regout\,
	cin0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUT\,
	cin1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	cout0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUT\,
	cout1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X14_Y5_N3
\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2) = DFFEAS(\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2) $ ((((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUT\)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , 
-- \u0|ufm_parallel_0|deco1_dffe~regout\, \~GND~combout\, , , \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\)
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUT\ = CARRY((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2) & ((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUT\))))
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2) & ((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\,
	ena => \u0|ufm_parallel_0|deco1_dffe~regout\,
	cin0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUT\,
	cin1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	cout0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUT\,
	cout1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X14_Y5_N8
\u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire\(0) = (\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2)) # (((!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0)) # (!\u0|ufm_parallel_0|data_valid_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	datac => \u0|ufm_parallel_0|data_valid_reg~0_combout\,
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire\(0));

-- Location: LC_X14_Y5_N4
\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3) = DFFEAS(\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3) $ ((((\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUT\)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , 
-- \u0|ufm_parallel_0|deco1_dffe~regout\, \~GND~combout\, , , \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\)
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\ = CARRY(((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUTCOUT1_1\)) # (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\,
	ena => \u0|ufm_parallel_0|deco1_dffe~regout\,
	cin0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUT\,
	cin1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	cout => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\);

-- Location: LC_X14_Y5_N5
\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4) = DFFEAS(\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4) $ ((((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , 
-- \u0|ufm_parallel_0|deco1_dffe~regout\, \~GND~combout\, , , \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\)
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUT\ = CARRY((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4) & ((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\))))
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4) & ((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\,
	ena => \u0|ufm_parallel_0|deco1_dffe~regout\,
	cin => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	cout0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUT\,
	cout1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X14_Y5_N6
\u0|ufm_parallel_0|cntr2|auto_generated|cout_bit\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\ = ((((!\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\ & \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUT\) # (\u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\ & 
-- \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUTCOUT1_1\)) # (!\u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire\(0))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire\(0),
	cin => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella3~COUT\,
	cin0 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUT\,
	cin1 => \u0|ufm_parallel_0|cntr2|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|cntr2|auto_generated|modulus_trigger\);

-- Location: LC_X14_Y5_N7
\u0|ufm_parallel_0|data_valid_reg~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|data_valid_reg~0_combout\ = (\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4) & (((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3) & \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|data_valid_reg~0_combout\);

-- Location: LC_X14_Y6_N1
\PWMCntr[1]\ : maxv_lcell
-- Equation(s):
-- PWMCntr(1) = DFFEAS((\PWMCntr[2]~1_combout\ & (((PWMCntr(1))))) # (!\PWMCntr[2]~1_combout\ & (\PWMLkup_s.UFM_Shift_s~regout\ & (PWMCntr(0) $ (PWMCntr(1))))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => PWMCntr(0),
	datab => \PWMCntr[2]~1_combout\,
	datac => PWMCntr(1),
	datad => \PWMLkup_s.UFM_Shift_s~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWMCntr(1));

-- Location: LC_X13_Y7_N2
\u0|ufm_parallel_0|decode_dffe\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|decode_dffe~regout\ = DFFEAS((((\u0|ufm_parallel_0|deco1_dffe~regout\))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|deco1_dffe~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|decode_dffe~regout\);

-- Location: LC_X14_Y5_N0
\u0|ufm_parallel_0|ufm_drshft~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|ufm_drshft~0_combout\ = (((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3) & \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|ufm_drshft~0_combout\);

-- Location: LC_X14_Y7_N5
\u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (((!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2) & \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LC_X14_Y5_N9
\u0|ufm_parallel_0|ufm_drshft~1\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|ufm_drshft~1_combout\ = (\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4)) # ((!\u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # 
-- (!\u0|ufm_parallel_0|ufm_drshft~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	datab => \u0|ufm_parallel_0|ufm_drshft~0_combout\,
	datac => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|ufm_drshft~1_combout\);

-- Location: LC_X13_Y5_N4
\u0|ufm_parallel_0|arclk~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|arclk~0_combout\ = ((!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1) & (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2) & !\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|arclk~0_combout\);

-- Location: LC_X13_Y5_N9
\u0|ufm_parallel_0|add_load~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|add_load~0_combout\ = ((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3) & ((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1)) # (\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|add_load~0_combout\);

-- Location: LC_X13_Y5_N6
\u0|ufm_parallel_0|add_load~1\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|add_load~1_combout\ = (\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4)) # ((\u0|ufm_parallel_0|add_load~0_combout\) # ((!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3) & \u0|ufm_parallel_0|arclk~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	datac => \u0|ufm_parallel_0|arclk~0_combout\,
	datad => \u0|ufm_parallel_0|add_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|add_load~1_combout\);

-- Location: LC_X14_Y7_N9
\TestCntr[0]\ : maxv_lcell
-- Equation(s):
-- TestCntr(0) = DFFEAS((((!TestCntr(0)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datad => TestCntr(0),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(0));

-- Location: LC_X15_Y7_N0
\TestCntr[1]\ : maxv_lcell
-- Equation(s):
-- TestCntr(1) = DFFEAS(TestCntr(0) $ ((TestCntr(1))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )
-- \TestCntr[1]~1\ = CARRY((TestCntr(0) & (TestCntr(1))))
-- \TestCntr[1]~1COUT1_18\ = CARRY((TestCntr(0) & (TestCntr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => TestCntr(0),
	datab => TestCntr(1),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(1),
	cout0 => \TestCntr[1]~1\,
	cout1 => \TestCntr[1]~1COUT1_18\);

-- Location: LC_X15_Y7_N1
\TestCntr[2]\ : maxv_lcell
-- Equation(s):
-- TestCntr(2) = DFFEAS((TestCntr(2) $ ((\TestCntr[1]~1\))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )
-- \TestCntr[2]~3\ = CARRY(((!\TestCntr[1]~1\) # (!TestCntr(2))))
-- \TestCntr[2]~3COUT1_19\ = CARRY(((!\TestCntr[1]~1COUT1_18\) # (!TestCntr(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => TestCntr(2),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	cin0 => \TestCntr[1]~1\,
	cin1 => \TestCntr[1]~1COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(2),
	cout0 => \TestCntr[2]~3\,
	cout1 => \TestCntr[2]~3COUT1_19\);

-- Location: LC_X15_Y7_N2
\TestCntr[3]\ : maxv_lcell
-- Equation(s):
-- TestCntr(3) = DFFEAS((TestCntr(3) $ ((!\TestCntr[2]~3\))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )
-- \TestCntr[3]~5\ = CARRY(((TestCntr(3) & !\TestCntr[2]~3\)))
-- \TestCntr[3]~5COUT1_20\ = CARRY(((TestCntr(3) & !\TestCntr[2]~3COUT1_19\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => TestCntr(3),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	cin0 => \TestCntr[2]~3\,
	cin1 => \TestCntr[2]~3COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(3),
	cout0 => \TestCntr[3]~5\,
	cout1 => \TestCntr[3]~5COUT1_20\);

-- Location: LC_X15_Y7_N3
\TestCntr[4]\ : maxv_lcell
-- Equation(s):
-- TestCntr(4) = DFFEAS(TestCntr(4) $ ((((\TestCntr[3]~5\)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )
-- \TestCntr[4]~7\ = CARRY(((!\TestCntr[3]~5\)) # (!TestCntr(4)))
-- \TestCntr[4]~7COUT1_21\ = CARRY(((!\TestCntr[3]~5COUT1_20\)) # (!TestCntr(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => TestCntr(4),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	cin0 => \TestCntr[3]~5\,
	cin1 => \TestCntr[3]~5COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(4),
	cout0 => \TestCntr[4]~7\,
	cout1 => \TestCntr[4]~7COUT1_21\);

-- Location: LC_X15_Y7_N4
\TestCntr[5]\ : maxv_lcell
-- Equation(s):
-- TestCntr(5) = DFFEAS(TestCntr(5) $ ((((!\TestCntr[4]~7\)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )
-- \TestCntr[5]~9\ = CARRY((TestCntr(5) & ((!\TestCntr[4]~7COUT1_21\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => TestCntr(5),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	cin0 => \TestCntr[4]~7\,
	cin1 => \TestCntr[4]~7COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(5),
	cout => \TestCntr[5]~9\);

-- Location: LC_X15_Y7_N5
\TestCntr[6]\ : maxv_lcell
-- Equation(s):
-- TestCntr(6) = DFFEAS(TestCntr(6) $ ((((\TestCntr[5]~9\)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )
-- \TestCntr[6]~11\ = CARRY(((!\TestCntr[5]~9\)) # (!TestCntr(6)))
-- \TestCntr[6]~11COUT1_22\ = CARRY(((!\TestCntr[5]~9\)) # (!TestCntr(6)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => TestCntr(6),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	cin => \TestCntr[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(6),
	cout0 => \TestCntr[6]~11\,
	cout1 => \TestCntr[6]~11COUT1_22\);

-- Location: LC_X15_Y7_N6
\TestCntr[7]\ : maxv_lcell
-- Equation(s):
-- TestCntr(7) = DFFEAS(TestCntr(7) $ ((((!(!\TestCntr[5]~9\ & \TestCntr[6]~11\) # (\TestCntr[5]~9\ & \TestCntr[6]~11COUT1_22\))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )
-- \TestCntr[7]~13\ = CARRY((TestCntr(7) & ((!\TestCntr[6]~11\))))
-- \TestCntr[7]~13COUT1_23\ = CARRY((TestCntr(7) & ((!\TestCntr[6]~11COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => TestCntr(7),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	cin => \TestCntr[5]~9\,
	cin0 => \TestCntr[6]~11\,
	cin1 => \TestCntr[6]~11COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(7),
	cout0 => \TestCntr[7]~13\,
	cout1 => \TestCntr[7]~13COUT1_23\);

-- Location: LC_X13_Y5_N3
\u0|ufm_parallel_0|ufm_arshft\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|ufm_arshft~combout\ = (\u0|ufm_parallel_0|deco1_dffe~regout\ & (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4) & ((!\u0|ufm_parallel_0|add_load~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	datad => \u0|ufm_parallel_0|add_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|ufm_arshft~combout\);

-- Location: LC_X16_Y7_N1
\u0|ufm_parallel_0|A[0]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(0) = DFFEAS((TestCntr(0) & (\u0|ufm_parallel_0|deco1_dffe~regout\ & (\u0|ufm_parallel_0|add_load~1_combout\))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => TestCntr(0),
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => \u0|ufm_parallel_0|add_load~1_combout\,
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(0));

-- Location: LC_X16_Y7_N8
\u0|ufm_parallel_0|A[1]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(1) = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|add_load~1_combout\ & (TestCntr(1))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & ((\u0|ufm_parallel_0|A\(0)))))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & 
-- (((\u0|ufm_parallel_0|A\(0))))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => TestCntr(1),
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => \u0|ufm_parallel_0|add_load~1_combout\,
	datad => \u0|ufm_parallel_0|A\(0),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(1));

-- Location: LC_X16_Y7_N5
\u0|ufm_parallel_0|A[2]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(2) = DFFEAS((\u0|ufm_parallel_0|add_load~1_combout\ & ((\u0|ufm_parallel_0|deco1_dffe~regout\ & (TestCntr(2))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|A\(1)))))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & 
-- (((\u0|ufm_parallel_0|A\(1))))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|add_load~1_combout\,
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => TestCntr(2),
	datad => \u0|ufm_parallel_0|A\(1),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(2));

-- Location: LC_X16_Y7_N6
\u0|ufm_parallel_0|A[3]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(3) = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|add_load~1_combout\ & ((TestCntr(3)))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & (\u0|ufm_parallel_0|A\(2))))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & 
-- (\u0|ufm_parallel_0|A\(2))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|A\(2),
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => \u0|ufm_parallel_0|add_load~1_combout\,
	datad => TestCntr(3),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(3));

-- Location: LC_X16_Y7_N4
\u0|ufm_parallel_0|A[4]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(4) = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|add_load~1_combout\ & ((TestCntr(4)))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & (\u0|ufm_parallel_0|A\(3))))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & 
-- (\u0|ufm_parallel_0|A\(3))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|A\(3),
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => \u0|ufm_parallel_0|add_load~1_combout\,
	datad => TestCntr(4),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(4));

-- Location: LC_X16_Y7_N2
\u0|ufm_parallel_0|A[5]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(5) = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|add_load~1_combout\ & ((TestCntr(5)))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & (\u0|ufm_parallel_0|A\(4))))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & 
-- (\u0|ufm_parallel_0|A\(4))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|A\(4),
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => \u0|ufm_parallel_0|add_load~1_combout\,
	datad => TestCntr(5),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(5));

-- Location: LC_X16_Y7_N9
\u0|ufm_parallel_0|A[6]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(6) = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|add_load~1_combout\ & (TestCntr(6))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & ((\u0|ufm_parallel_0|A\(5)))))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & 
-- (((\u0|ufm_parallel_0|A\(5))))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => TestCntr(6),
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => \u0|ufm_parallel_0|add_load~1_combout\,
	datad => \u0|ufm_parallel_0|A\(5),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(6));

-- Location: LC_X16_Y7_N3
\u0|ufm_parallel_0|A[7]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(7) = DFFEAS((\u0|ufm_parallel_0|add_load~1_combout\ & ((\u0|ufm_parallel_0|deco1_dffe~regout\ & (TestCntr(7))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|A\(6)))))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & 
-- (((\u0|ufm_parallel_0|A\(6))))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|add_load~1_combout\,
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => TestCntr(7),
	datad => \u0|ufm_parallel_0|A\(6),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(7));

-- Location: LC_X15_Y7_N7
\TestCntr[8]\ : maxv_lcell
-- Equation(s):
-- TestCntr(8) = DFFEAS((TestCntr(8) $ (((!\TestCntr[5]~9\ & \TestCntr[7]~13\) # (\TestCntr[5]~9\ & \TestCntr[7]~13COUT1_23\)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => TestCntr(8),
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	cin => \TestCntr[5]~9\,
	cin0 => \TestCntr[7]~13\,
	cin1 => \TestCntr[7]~13COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TestCntr(8));

-- Location: LC_X16_Y7_N7
\u0|ufm_parallel_0|A[8]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|A\(8) = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|add_load~1_combout\ & ((TestCntr(8)))) # (!\u0|ufm_parallel_0|add_load~1_combout\ & (\u0|ufm_parallel_0|A\(7))))) # (!\u0|ufm_parallel_0|deco1_dffe~regout\ & 
-- (\u0|ufm_parallel_0|A\(7))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|ufm_arshft~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|A\(7),
	datab => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datac => \u0|ufm_parallel_0|add_load~1_combout\,
	datad => TestCntr(8),
	aclr => GND,
	ena => \u0|ufm_parallel_0|ufm_arshft~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|A\(8));

-- Location: LC_X13_Y5_N8
\u0|ufm_parallel_0|gated_clk1_dffe\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|gated_clk1_dffe~regout\ = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~regout\ & (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4) & ((\u0|ufm_parallel_0|arclk~0_combout\) # (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3))))), 
-- GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	datac => \u0|ufm_parallel_0|arclk~0_combout\,
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|gated_clk1_dffe~regout\);

-- Location: LC_X13_Y5_N7
\u0|ufm_parallel_0|ufm_arclk\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|ufm_arclk~combout\ = (((!\u0|ufm_parallel_0|ufm_osc\ & \u0|ufm_parallel_0|gated_clk1_dffe~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|gated_clk1_dffe~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|ufm_arclk~combout\);

-- Location: UFM_X1_Y1_N4
\u0|ufm_parallel_0|maxii_ufm_block1\ : maxv_ufm
-- pragma translate_off
GENERIC MAP (
	mem16 => "01110011100000001100111000000001111000110000001100111001000001101110011100001100011100010001100011001110001100000111100100110000001111000110000011001110011000001110001101100000111100010110000000111000011000001100011101100000111000110011000000011100001100001000111100011000110001110000110011110001000011000011100000000110110011101000001101110001110000011001110000110000111000110001100000111000000011001000111010000011011100110110000100011100000110001100011100000110011100011100001110001100001100001110001100001100",
	mem15 => "00111000110000110000111000011000110001111000011001110001011000010011100000001100000011100110001111000111000110001110000110000011000110001100001110000111011100001100001100011000111000010000111001110000011000110011100010001100100001100011000101100011000111000000110001100011110001110011100000011000100001101100001111000011011000011110000100001100000110000000011110000111000001110110001100000111000111001000011100001110001100011100011100111000111000010000110000111000000011100001110011000011110001110011000000110001",
	mem14 => "00001100100011101100001111100011001100000011100000001100100011101100001111100011001100000011100000011000100011100000011011100011110000110011100001100000000111100011000011000111000011001111000100000110001110001000001111001110100000011111000111000001001110000110000000011110011000001110011100110000011110000011000000111100001100000001111000110000100011110011000011000111001100000111100101100000100111000110000011110011110000000011100010000000111001110000000110011100000000111111001100000110011110000000110011001110",
	mem13 => "00110000111000111100000001111001000000000111110000000011001111000000110011100111001100000011100110000000110011110000000101111001000011001100111001100000111100110000000010011100000001101110011101100000011110010000000010011110000001101110011111000000011110010000000010011110000110001110011100000000011110010000011010011110100000001100111100000001111100111100000001111100000000001001111011000000110011110000000011110011110000001111100100000000001111001100000010011111000000001100111100000000111001110000001111000111",
	mem12 => "00000000110011110001100011100111000000001111001110000000111100110000000111111001000000000111110000011000011111100000000000111110000000000011111100001100100111110000000010011111000000001001111100001100110011110000000011001111000000001100111100011000110011110000000011001111000000001100111110000000110011110000000111001111000000001100111100000000110011110110000010011111000000001001111100000000100111110000000000111111110000000011111100000000011111110000000001111110000000001111111000000000111111000000110011111001",
	mem11 => "00000000111110010000000011110011000000001110011100000000111001110000011011001111000000001001111100000000001111110000000001111111000000001111111000001100111111000000000011111100000000001111100100000000111100110000000011100111011000001100111100000000100111110000000000111111000000000111111100000000111111100000000011111100000001101111100100000000111100110000000011100111000000001100111100000000100111110001100010011111000000000011111100000000011111110000000011111110000000001111110000110000111110010000000011111001",
	mem10 => "00000000111100110000000011100111000000001110011100000110110011110000000010011111000000001001111100000000100111110001100000111111000000000011111100000000011111110000000001111110000110000111111000000000011111100000000001111110000000000111111000000011011111100000000001111110000000000111111000011000011111100000000001111110000000000111111000110000001111100000000000111111000000001001111100011000100111110000000011001111000000001100111100000110111001110000000011110011011000001111001100000000111110010000000001111100",
	mem9 => "00000011001111100000000010011111000011001100111100000000111001110011000011111001000000000111110000110000001111100000000011001111001100001110011100000000111110010001100000111100000000001100111100001100111001110000000001111001000000111001111001100000111001110000000011110011000011000011110010000000111001110000000101111001000110001001111010000000111001110000000100111001000011001100111101100000011100110000000010011110000000111111001100011000111100010110000010011100100000001110011100000001111100010000011011110001",
	mem8 => "00011000100111000110000011000111110000000111001110000000110011100000000100111001000000111000111100000110011100110000011000011110000011001000111100001100110001110000110011100011000011001111000100001100011110000000110000111100000001100001111000000110111001110000001100111000100000111100011111000001001110010110000011001110001100000111000100011000001111000000110010001110100001101110001111000001000111000011000011000111000110000111000110000110000111000110000111000111001100000111000100001100000111001000001111000111",
	mem7 => "11000011001100010011000010001110000011001110001100001110011100001100001100011100000110001110001111000110011100001110000000011100001100001000111000011100011100011000011000111000110000110001110000011000000011100110001111000111100011000111000000110001000011000001110011000111110000110001100011100001011000110111000000001100001110001000011100011100001100011000111000011100011100010001110000111000000111001100011011000110111000010011000000111000100001101100011000110001011100010000110010001100011000111110001100011000",
	mem6 => "00111000100001101100011001100001011100010001100000011100100001101100011101100001011100010011000000011100000011001000111110000011111000111100000100111000001100001100111000011000011100010000110000111100000001101000111010000011011100111100000110011100011000001110001100110000011100010011000010001110001100001100011100011000111000110001100001110001000110000001111000011000100011110001100011110011001100000011100000110000111001110110000010011100110000000111001110000000110011100000000101111001000000110011110000000110",
	mem5 => "10001111000110001110011100110000111100011100000011110001000000001001110000000110111001110001100001111100110000000011110000000000110011110000011001111001001100000011111000000000100111100000001111100111001100000111100100000000100111100000001111100111011000000111100100000000100111100000110011100111100000001111100100000001001111001100000011001111000000001110011100110000111110010000000000111100001100001001111100000000111001110011000011110011000000001111100100110000001111000000000010011111110000001100111100000000",
	mem4 => "11100111000000001111001100000011111110010000000011111001001100000111110000000000001111100000000000111111000001101001111100000000100111111000000011001111000000011100111100000000110011111000000011100111000000011110011100000000111001110000000011100111000000111110011100000000111001110000000011100111001100001110011100000000111001110000000011100111000000001100111100000110110011110000000011001111000000001001111100000000100111110000110000111111000000000011111100000000011111110000000001111110011000001111111000000000",
	mem3 => "11111100000000001111100100000000111110010000000011110011001100001110011100000000110011110000000010011111000000000011111100000000001111110110000001111111000000001111111000000000111111000000000011111001000000001111001100000000111001110000001111001111000000001001111100000000001111110000000001111111000000001111111000011000111111000000000011111001000000001111001100000000111001110000000011100111110000001100111100000000100111110000000000111111000000000111111100000000111111101100000011111100000000001111110000000000",
	mem2 => "11111001000000001111001100000000111100110011000011100111000000001110011100000000110011110000000011001111100000001001111100000001100111110000000010011111000000000011111110000000001111110000000100111111000000000011111100000000001111110110000000111111000000000011111100000000001111110000000000111111000000110011111100000000001111110000000010011111000001101001111100000000110011110000000011001111000000111110011100000000111001111100000011110011000000001111100100000000111110010000110001111100000000000011111011000000",
	mem1 => "10011111000000001100111100000000111001110000001111110011000000000111100100001100001111100000000010011111000011001110011100000000111100110000110001111100000000001001111000000110110011110000000011110011000000110011110011000000110011110000000011100111000110000111100100000000100111100000001111100111011000001110001100000000011110010000011010011110011000001110011100000000001111000000011011001111001100000111100110000000110011100000000111000111000011001100011100110000110001111100000011000111000000001111001100000011",
	address_width => 9,
	erase_time => 500000000,
	init_file => "c:/users/jjo/onedrive - slac national accelerator laboratory/tid_air/projects/missionreadiness/rfinterlocks/altera_c02/rfinterlockrtm_a/pwm_gen_hex.mif",
	osc_sim_setting => 180000,
	program_time => 1600000)
-- pragma translate_on
PORT MAP (
	drdin => GND,
	drclk => \u0|ufm_parallel_0|ufm_drclk\,
	drshft => \u0|ufm_parallel_0|ufm_drshft~1_combout\,
	ardin => \u0|ufm_parallel_0|A\(8),
	arclk => \u0|ufm_parallel_0|ufm_arclk~combout\,
	arshft => \u0|ufm_parallel_0|ufm_arshft~combout\,
	oscena => \ALT_INV_~GND~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	drdout => \u0|ufm_parallel_0|wire_maxii_ufm_block1_drdout\,
	osc => \u0|ufm_parallel_0|ufm_osc\,
	bgpbusy => \u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\);

-- Location: LC_X13_Y6_N7
\sync_nbusy[0]\ : maxv_lcell
-- Equation(s):
-- sync_nbusy(0) = DFFEAS((!\u0|ufm_parallel_0|decode_dffe~regout\ & (((!\u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u0|ufm_parallel_0|decode_dffe~regout\,
	datac => \u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sync_nbusy(0));

-- Location: LC_X13_Y6_N6
\sync_nbusy[1]\ : maxv_lcell
-- Equation(s):
-- \Selector1~1\ = ((\u_clkDiv|iClk245KhzEn~regout\ & (sync_nbusy[1] & !\PWMLkup_s.UFM_Idle_s~regout\)))
-- sync_nbusy(1) = DFFEAS(\Selector1~1\, GLOBAL(\Clock~combout\), VCC, , , sync_nbusy(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_clkDiv|iClk245KhzEn~regout\,
	datac => sync_nbusy(0),
	datad => \PWMLkup_s.UFM_Idle_s~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~1\,
	regout => sync_nbusy(1));

-- Location: LC_X13_Y6_N2
\PWMLkup_s.UFM_Wait_s\ : maxv_lcell
-- Equation(s):
-- \PWMLkup_s.UFM_Wait_s~regout\ = DFFEAS((!\PWM0_SR[5]~1\ & ((\Selector1~1\) # ((\PWMLkup_s.UFM_Wait_s~regout\ & !\Selector1~3_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \Selector1~1\,
	datab => \PWMLkup_s.UFM_Wait_s~regout\,
	datac => \PWM0_SR[5]~1\,
	datad => \Selector1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PWMLkup_s.UFM_Wait_s~regout\);

-- Location: LC_X13_Y6_N0
\Selector1~2\ : maxv_lcell
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1\) # ((!sync_nbusy(1) & (!\PWMLkup_s.UFM_Shift_s~regout\ & \PWMLkup_s.UFM_Wait_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sync_nbusy(1),
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \Selector1~1\,
	datad => \PWMLkup_s.UFM_Wait_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~2_combout\);

-- Location: LC_X13_Y6_N1
\Selector1~3\ : maxv_lcell
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~2_combout\) # ((PWMCntr(1) & (\PWMLkup_s.UFM_Shift_s~regout\ & \nread~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => PWMCntr(1),
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \nread~0_combout\,
	datad => \Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~3_combout\);

-- Location: LC_X13_Y6_N8
\PWMLkup_s.UFM_Idle_s\ : maxv_lcell
-- Equation(s):
-- \PWMLkup_s.UFM_Idle_s~regout\ = DFFEAS((\PWMLkup_s.UFM_Idle_s~regout\) # (((\PWM0_SR[5]~1\) # (\Selector1~3_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWMLkup_s.UFM_Idle_s~regout\,
	datac => \PWM0_SR[5]~1\,
	datad => \Selector1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PWMLkup_s.UFM_Idle_s~regout\);

-- Location: LC_X13_Y6_N5
\PWMLkup_s.UFM_Data_s\ : maxv_lcell
-- Equation(s):
-- \PWMLkup_s.UFM_Data_s~regout\ = DFFEAS((!\PWM0_SR[5]~1\ & ((\Selector1~3_combout\ & ((!\Selector1~1\))) # (!\Selector1~3_combout\ & (\PWMLkup_s.UFM_Data_s~regout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0544",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWM0_SR[5]~1\,
	datab => \PWMLkup_s.UFM_Data_s~regout\,
	datac => \Selector1~1\,
	datad => \Selector1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PWMLkup_s.UFM_Data_s~regout\);

-- Location: LC_X13_Y6_N3
\Selector0~0\ : maxv_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (\PWMLkup_s.UFM_Wait_s~regout\) # ((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWMCntr(1)) # (!\nread~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => PWMCntr(1),
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \nread~0_combout\,
	datad => \PWMLkup_s.UFM_Wait_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X13_Y6_N9
\Selector0~1\ : maxv_lcell
-- Equation(s):
-- \Selector0~1_combout\ = (\nread~regout\ & ((\PWMLkup_s.UFM_Data_s~regout\) # ((\Selector0~0_combout\)))) # (!\nread~regout\ & (((!sync_nbusy(1) & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nread~regout\,
	datab => \PWMLkup_s.UFM_Data_s~regout\,
	datac => sync_nbusy(1),
	datad => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~1_combout\);

-- Location: LC_X13_Y6_N4
nread : maxv_lcell
-- Equation(s):
-- \nread~regout\ = DFFEAS((\Selector0~1_combout\) # ((!\PWMLkup_s.UFM_Idle_s~regout\ & ((!sync_nbusy(1)) # (!\u_clkDiv|iClk245KhzEn~regout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff15",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWMLkup_s.UFM_Idle_s~regout\,
	datab => \u_clkDiv|iClk245KhzEn~regout\,
	datac => sync_nbusy(1),
	datad => \Selector0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nread~regout\);

-- Location: LC_X13_Y5_N2
\u0|ufm_parallel_0|control_mux~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|control_mux~0_combout\ = (\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2)) # ((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4)) # ((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1)) # 
-- (\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|control_mux~0_combout\);

-- Location: LC_X14_Y7_N6
\u0|ufm_parallel_0|mux_nread~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|mux_nread~0_combout\ = ((\u0|ufm_parallel_0|control_mux~0_combout\ & (!\u0|ufm_parallel_0|data_valid_reg~0_combout\)) # (!\u0|ufm_parallel_0|control_mux~0_combout\ & ((!\nread~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5533",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|data_valid_reg~0_combout\,
	datab => \nread~regout\,
	datad => \u0|ufm_parallel_0|control_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|mux_nread~0_combout\);

-- Location: LC_X14_Y7_N7
\u0|ufm_parallel_0|real_decode_dffe\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|real_decode_dffe~regout\ = DFFEAS((!\u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\ & ((\u0|ufm_parallel_0|control_mux~0_combout\ & (!\u0|ufm_parallel_0|data_valid_reg~0_combout\)) # (!\u0|ufm_parallel_0|control_mux~0_combout\ & 
-- ((!\nread~regout\))))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1013",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|data_valid_reg~0_combout\,
	datab => \u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\,
	datac => \u0|ufm_parallel_0|control_mux~0_combout\,
	datad => \nread~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|real_decode_dffe~regout\);

-- Location: LC_X14_Y7_N0
\u0|ufm_parallel_0|real_decode2_dffe\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|real_decode2_dffe~regout\ = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , , \u0|ufm_parallel_0|real_decode_dffe~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|real_decode_dffe~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|real_decode2_dffe~regout\);

-- Location: LC_X14_Y7_N4
\u0|ufm_parallel_0|deco1_dffe~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|deco1_dffe~0_combout\ = (\u0|ufm_parallel_0|deco1_dffe~regout\ & (((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2)) # (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0))) # (!\u0|ufm_parallel_0|data_valid_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|data_valid_reg~0_combout\,
	datab => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0),
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(2),
	datad => \u0|ufm_parallel_0|deco1_dffe~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|deco1_dffe~0_combout\);

-- Location: LC_X14_Y7_N8
\u0|ufm_parallel_0|deco1_dffe\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|deco1_dffe~regout\ = DFFEAS((\u0|ufm_parallel_0|deco1_dffe~0_combout\) # ((\u0|ufm_parallel_0|mux_nread~0_combout\ & (!\u0|ufm_parallel_0|real_decode2_dffe~regout\ & !\u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\))), 
-- GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|mux_nread~0_combout\,
	datab => \u0|ufm_parallel_0|real_decode2_dffe~regout\,
	datac => \u0|ufm_parallel_0|deco1_dffe~0_combout\,
	datad => \u0|ufm_parallel_0|wire_maxii_ufm_block1_bgpbusy\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|deco1_dffe~regout\);

-- Location: LC_X13_Y5_N1
\u0|ufm_parallel_0|in_read_drclk~0\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|in_read_drclk~0_combout\ = (((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1) & !\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(1),
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|in_read_drclk~0_combout\);

-- Location: LC_X13_Y5_N0
\u0|ufm_parallel_0|in_read_drclk~1\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|in_read_drclk~1_combout\ = (\u0|ufm_parallel_0|deco1_dffe~regout\ & ((\u0|ufm_parallel_0|add_load~0_combout\ & ((\u0|ufm_parallel_0|in_read_drclk~0_combout\) # (!\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4)))) # 
-- (!\u0|ufm_parallel_0|add_load~0_combout\ & ((\u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a288",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ufm_parallel_0|deco1_dffe~regout\,
	datab => \u0|ufm_parallel_0|add_load~0_combout\,
	datac => \u0|ufm_parallel_0|in_read_drclk~0_combout\,
	datad => \u0|ufm_parallel_0|cntr2|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|in_read_drclk~1_combout\);

-- Location: LC_X13_Y5_N5
\u0|ufm_parallel_0|gated_clk2_dffe\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|ufm_drclk\ = (!\u0|ufm_parallel_0|ufm_osc\ & (((K1_gated_clk2_dffe))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|ufm_drclk\,
	regout => \u0|ufm_parallel_0|gated_clk2_dffe~regout\);

-- Location: LC_X14_Y7_N1
\u0|ufm_parallel_0|data_valid_reg\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|data_valid_reg~regout\ = DFFEAS((\u0|ufm_parallel_0|data_valid_reg~0_combout\ & (\u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & ((\u0|ufm_parallel_0|deco1_dffe~regout\)))) # 
-- (!\u0|ufm_parallel_0|data_valid_reg~0_combout\ & (((\u0|ufm_parallel_0|data_valid_reg~regout\)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	dataa => \u0|ufm_parallel_0|cntr2|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \u0|ufm_parallel_0|data_valid_reg~regout\,
	datac => \u0|ufm_parallel_0|data_valid_reg~0_combout\,
	datad => \u0|ufm_parallel_0|deco1_dffe~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|data_valid_reg~regout\);

-- Location: LC_X14_Y7_N2
\u0|ufm_parallel_0|data_valid_out_reg\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|wire_tmp_do_ena\(0) = ((\u0|ufm_parallel_0|data_valid_reg~regout\ & ((!\u0|ufm_parallel_0|deco1_dffe~regout\))))
-- \u0|ufm_parallel_0|data_valid_out_reg~regout\ = DFFEAS(\u0|ufm_parallel_0|wire_tmp_do_ena\(0), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datab => \u0|ufm_parallel_0|data_valid_reg~regout\,
	datad => \u0|ufm_parallel_0|deco1_dffe~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	regout => \u0|ufm_parallel_0|data_valid_out_reg~regout\);

-- Location: LC_X14_Y6_N6
\sync_data_valid[0]\ : maxv_lcell
-- Equation(s):
-- sync_data_valid(0) = DFFEAS(GND, GLOBAL(\Clock~combout\), VCC, , , \u0|ufm_parallel_0|data_valid_out_reg~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u0|ufm_parallel_0|data_valid_out_reg~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sync_data_valid(0));

-- Location: LC_X14_Y6_N0
\sync_data_valid[1]\ : maxv_lcell
-- Equation(s):
-- \PWM0_SR[5]~1\ = ((\u_clkDiv|iClk245KhzEn~regout\ & (sync_data_valid[1] & \PWMLkup_s.UFM_Data_s~regout\)))
-- sync_data_valid(1) = DFFEAS(\PWM0_SR[5]~1\, GLOBAL(\Clock~combout\), VCC, , , sync_data_valid(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u_clkDiv|iClk245KhzEn~regout\,
	datac => sync_data_valid(0),
	datad => \PWMLkup_s.UFM_Data_s~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PWM0_SR[5]~1\,
	regout => sync_data_valid(1));

-- Location: LC_X14_Y6_N5
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = ((PWMCntr(1) & (PWMCntr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => PWMCntr(1),
	datac => PWMCntr(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: LC_X14_Y6_N4
\PWMCntr[2]\ : maxv_lcell
-- Equation(s):
-- PWMCntr(2) = DFFEAS((\PWMCntr[2]~1_combout\ & (((PWMCntr(2))))) # (!\PWMCntr[2]~1_combout\ & (\PWMLkup_s.UFM_Shift_s~regout\ & (\Add1~0_combout\ $ (PWMCntr(2))))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \Add1~0_combout\,
	datab => \PWMCntr[2]~1_combout\,
	datac => PWMCntr(2),
	datad => \PWMLkup_s.UFM_Shift_s~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWMCntr(2));

-- Location: LC_X14_Y6_N8
\PWMCntr[2]~0\ : maxv_lcell
-- Equation(s):
-- \PWMCntr[2]~0_combout\ = (PWMCntr(2) & (((!PWMCntr(0) & PWMCntr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => PWMCntr(2),
	datac => PWMCntr(0),
	datad => PWMCntr(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PWMCntr[2]~0_combout\);

-- Location: LC_X14_Y6_N9
\PWMCntr[2]~1\ : maxv_lcell
-- Equation(s):
-- \PWMCntr[2]~1_combout\ = (!\PWM0_SR[5]~1\ & (((\PWMCntr[2]~0_combout\) # (!\PWMLkup_s.UFM_Shift_s~regout\)) # (!\u_clkDiv|iClk245KhzEn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f07",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDiv|iClk245KhzEn~regout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \PWM0_SR[5]~1\,
	datad => \PWMCntr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PWMCntr[2]~1_combout\);

-- Location: LC_X14_Y6_N7
\PWMCntr[0]\ : maxv_lcell
-- Equation(s):
-- PWMCntr(0) = DFFEAS(((PWMCntr(0) & ((\PWMCntr[2]~1_combout\))) # (!PWMCntr(0) & (\PWMLkup_s.UFM_Shift_s~regout\ & !\PWMCntr[2]~1_combout\))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => PWMCntr(0),
	datad => \PWMCntr[2]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWMCntr(0));

-- Location: LC_X14_Y6_N3
\nread~0\ : maxv_lcell
-- Equation(s):
-- \nread~0_combout\ = ((!PWMCntr(0) & (PWMCntr(2) & \u_clkDiv|iClk245KhzEn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => PWMCntr(0),
	datac => PWMCntr(2),
	datad => \u_clkDiv|iClk245KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nread~0_combout\);

-- Location: LC_X15_Y6_N8
\PWMLkup_s.UFM_Shift_s\ : maxv_lcell
-- Equation(s):
-- \PWMLkup_s.UFM_Shift_s~regout\ = DFFEAS((\PWM0_SR[5]~1\) # ((\PWMLkup_s.UFM_Shift_s~regout\ & ((!PWMCntr(1)) # (!\nread~0_combout\)))), GLOBAL(\Clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWMLkup_s.UFM_Shift_s~regout\,
	datab => \nread~0_combout\,
	datac => PWMCntr(1),
	datad => \PWM0_SR[5]~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PWMLkup_s.UFM_Shift_s~regout\);

-- Location: LC_X14_Y8_N5
\u0|ufm_parallel_0|sipo_dffe[0]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(0) = DFFEAS((((\u0|ufm_parallel_0|wire_maxii_ufm_block1_drdout\))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|wire_maxii_ufm_block1_drdout\,
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(0));

-- Location: LC_X14_Y8_N2
\u0|ufm_parallel_0|sipo_dffe[1]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(1) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, \u0|ufm_parallel_0|sipo_dffe\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(0),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(1));

-- Location: LC_X15_Y8_N0
\u0|ufm_parallel_0|tmp_do[1]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(1) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(1)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(1),
	aclr => GND,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(1));

-- Location: LC_X14_Y8_N3
\u0|ufm_parallel_0|sipo_dffe[2]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(2) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(1)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(1),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(2));

-- Location: LC_X14_Y8_N4
\u0|ufm_parallel_0|tmp_do[2]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(2) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(2)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(2),
	aclr => GND,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(2));

-- Location: LC_X14_Y8_N8
\u0|ufm_parallel_0|sipo_dffe[3]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(3) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(2)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(2),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(3));

-- Location: LC_X15_Y8_N6
\u0|ufm_parallel_0|tmp_do[3]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(3) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(3),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(3));

-- Location: LC_X14_Y8_N9
\u0|ufm_parallel_0|sipo_dffe[4]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(4) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(3)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(3),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(4));

-- Location: LC_X14_Y8_N6
\u0|ufm_parallel_0|sipo_dffe[5]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(5) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(4)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(4),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(5));

-- Location: LC_X15_Y8_N5
\u0|ufm_parallel_0|tmp_do[5]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(5) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(5),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(5));

-- Location: LC_X14_Y8_N1
\u0|ufm_parallel_0|sipo_dffe[6]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(6) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, \u0|ufm_parallel_0|sipo_dffe\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(5),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(6));

-- Location: LC_X15_Y9_N6
\u0|ufm_parallel_0|tmp_do[6]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(6) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(6),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(6));

-- Location: LC_X15_Y10_N7
\u0|ufm_parallel_0|sipo_dffe[7]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(7) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, \u0|ufm_parallel_0|sipo_dffe\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(6),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(7));

-- Location: LC_X15_Y9_N9
\u0|ufm_parallel_0|tmp_do[7]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(7) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(7),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(7));

-- Location: LC_X15_Y6_N5
\PWM0_SR[5]~0\ : maxv_lcell
-- Equation(s):
-- \PWM0_SR[5]~0_combout\ = (\u_clkDiv|iClk245KhzEn~regout\ & ((\PWMLkup_s.UFM_Shift_s~regout\) # ((\PWMLkup_s.UFM_Data_s~regout\ & sync_data_valid(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PWMLkup_s.UFM_Shift_s~regout\,
	datab => \PWMLkup_s.UFM_Data_s~regout\,
	datac => sync_data_valid(1),
	datad => \u_clkDiv|iClk245KhzEn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PWM0_SR[5]~0_combout\);

-- Location: LC_X15_Y9_N2
\PWM0_SR[7]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(7) = DFFEAS(((!\PWMLkup_s.UFM_Shift_s~regout\ & ((\u0|ufm_parallel_0|tmp_do\(7))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datad => \u0|ufm_parallel_0|tmp_do\(7),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(7));

-- Location: LC_X15_Y9_N5
\PWM0_SR[6]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(6) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWM0_SR(7)))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(6)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(6),
	datad => PWM0_SR(7),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(6));

-- Location: LC_X15_Y8_N8
\PWM0_SR[5]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(5) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWM0_SR(6)))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(5)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(5),
	datad => PWM0_SR(6),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(5));

-- Location: LC_X14_Y8_N7
\u0|ufm_parallel_0|tmp_do[4]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(4) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(4)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(4),
	aclr => GND,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(4));

-- Location: LC_X15_Y8_N1
\PWM0_SR[4]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(4) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & (PWM0_SR(5))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & ((\u0|ufm_parallel_0|tmp_do\(4))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => PWM0_SR(5),
	datab => \u0|ufm_parallel_0|tmp_do\(4),
	datad => \PWMLkup_s.UFM_Shift_s~regout\,
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(4));

-- Location: LC_X15_Y8_N4
\PWM0_SR[3]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(3) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWM0_SR(4)))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(3)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(3),
	datad => PWM0_SR(4),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(3));

-- Location: LC_X15_Y8_N2
\PWM0_SR[2]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(2) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWM0_SR(3)))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(2)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \u0|ufm_parallel_0|tmp_do\(2),
	datac => PWM0_SR(3),
	datad => \PWMLkup_s.UFM_Shift_s~regout\,
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(2));

-- Location: LC_X15_Y8_N7
\PWM0_SR[1]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(1) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWM0_SR(2)))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(1)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(1),
	datad => PWM0_SR(2),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(1));

-- Location: LC_X15_Y8_N3
\u0|ufm_parallel_0|tmp_do[0]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(0) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(0)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(0),
	aclr => GND,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(0));

-- Location: LC_X15_Y8_N9
\PWM0_SR[0]\ : maxv_lcell
-- Equation(s):
-- PWM0_SR(0) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & (PWM0_SR(1))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & ((\u0|ufm_parallel_0|tmp_do\(0))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => PWM0_SR(1),
	datad => \u0|ufm_parallel_0|tmp_do\(0),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM0_SR(0));

-- Location: LC_X15_Y10_N3
\u0|ufm_parallel_0|sipo_dffe[8]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(8) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, \u0|ufm_parallel_0|sipo_dffe\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(7),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(8));

-- Location: LC_X15_Y9_N8
\u0|ufm_parallel_0|tmp_do[8]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(8) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(8),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(8));

-- Location: LC_X15_Y10_N8
\u0|ufm_parallel_0|sipo_dffe[9]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(9) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(8)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(8),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(9));

-- Location: LC_X15_Y9_N0
\u0|ufm_parallel_0|tmp_do[9]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(9) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(9)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(9),
	aclr => GND,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(9));

-- Location: LC_X15_Y10_N9
\u0|ufm_parallel_0|sipo_dffe[10]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(10) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(9)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(9),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(10));

-- Location: LC_X15_Y9_N7
\u0|ufm_parallel_0|tmp_do[10]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(10) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(10),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(10));

-- Location: LC_X15_Y10_N5
\u0|ufm_parallel_0|sipo_dffe[11]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(11) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(10)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(10),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(11));

-- Location: LC_X16_Y9_N0
\u0|ufm_parallel_0|tmp_do[11]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(11) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(11),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(11));

-- Location: LC_X15_Y10_N0
\u0|ufm_parallel_0|sipo_dffe[12]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(12) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, \u0|ufm_parallel_0|sipo_dffe\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(11),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(12));

-- Location: LC_X16_Y9_N4
\u0|ufm_parallel_0|tmp_do[12]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(12) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(12)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(12),
	aclr => GND,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(12));

-- Location: LC_X15_Y10_N2
\u0|ufm_parallel_0|sipo_dffe[13]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(13) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, \u0|ufm_parallel_0|sipo_dffe\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(12),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(13));

-- Location: LC_X16_Y9_N6
\u0|ufm_parallel_0|tmp_do[13]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(13) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(13),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(13));

-- Location: LC_X15_Y10_N1
\u0|ufm_parallel_0|sipo_dffe[14]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(14) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(13)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(13),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(14));

-- Location: LC_X16_Y9_N5
\u0|ufm_parallel_0|tmp_do[14]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(14) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(14),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(14));

-- Location: LC_X15_Y10_N6
\u0|ufm_parallel_0|sipo_dffe[15]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|sipo_dffe\(15) = DFFEAS((((\u0|ufm_parallel_0|sipo_dffe\(14)))), GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|in_read_drclk~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datad => \u0|ufm_parallel_0|sipo_dffe\(14),
	aclr => GND,
	ena => \u0|ufm_parallel_0|in_read_drclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|sipo_dffe\(15));

-- Location: LC_X16_Y9_N7
\u0|ufm_parallel_0|tmp_do[15]\ : maxv_lcell
-- Equation(s):
-- \u0|ufm_parallel_0|tmp_do\(15) = DFFEAS(GND, GLOBAL(\u0|ufm_parallel_0|ufm_osc\), VCC, , \u0|ufm_parallel_0|wire_tmp_do_ena\(0), \u0|ufm_parallel_0|sipo_dffe\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \u0|ufm_parallel_0|ufm_osc\,
	datac => \u0|ufm_parallel_0|sipo_dffe\(15),
	aclr => GND,
	sload => VCC,
	ena => \u0|ufm_parallel_0|wire_tmp_do_ena\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|ufm_parallel_0|tmp_do\(15));

-- Location: LC_X16_Y9_N8
\PWM1_SR[7]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(7) = DFFEAS((((\u0|ufm_parallel_0|tmp_do\(15) & !\PWMLkup_s.UFM_Shift_s~regout\))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datac => \u0|ufm_parallel_0|tmp_do\(15),
	datad => \PWMLkup_s.UFM_Shift_s~regout\,
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(7));

-- Location: LC_X16_Y9_N2
\PWM1_SR[6]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(6) = DFFEAS((\PWMLkup_s.UFM_Shift_s~regout\ & (((PWM1_SR(7))))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (((\u0|ufm_parallel_0|tmp_do\(14))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(14),
	datad => PWM1_SR(7),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(6));

-- Location: LC_X16_Y9_N9
\PWM1_SR[5]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(5) = DFFEAS((\PWMLkup_s.UFM_Shift_s~regout\ & (((PWM1_SR(6))))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (((\u0|ufm_parallel_0|tmp_do\(13))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(13),
	datad => PWM1_SR(6),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(5));

-- Location: LC_X16_Y9_N3
\PWM1_SR[4]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(4) = DFFEAS((\PWMLkup_s.UFM_Shift_s~regout\ & (((PWM1_SR(5))))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (((\u0|ufm_parallel_0|tmp_do\(12))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(12),
	datad => PWM1_SR(5),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(4));

-- Location: LC_X16_Y9_N1
\PWM1_SR[3]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(3) = DFFEAS((\PWMLkup_s.UFM_Shift_s~regout\ & (((PWM1_SR(4))))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (((\u0|ufm_parallel_0|tmp_do\(11))))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(11),
	datad => PWM1_SR(4),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(3));

-- Location: LC_X15_Y9_N1
\PWM1_SR[2]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(2) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWM1_SR(3)))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(10)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(10),
	datad => PWM1_SR(3),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(2));

-- Location: LC_X15_Y9_N3
\PWM1_SR[1]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(1) = DFFEAS(((\PWMLkup_s.UFM_Shift_s~regout\ & ((PWM1_SR(2)))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(9)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datac => \u0|ufm_parallel_0|tmp_do\(9),
	datad => PWM1_SR(2),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(1));

-- Location: LC_X15_Y9_N4
\PWM1_SR[0]\ : maxv_lcell
-- Equation(s):
-- PWM1_SR(0) = DFFEAS((\PWMLkup_s.UFM_Shift_s~regout\ & (((PWM1_SR(1))))) # (!\PWMLkup_s.UFM_Shift_s~regout\ & (\u0|ufm_parallel_0|tmp_do\(8))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => \u0|ufm_parallel_0|tmp_do\(8),
	datab => \PWMLkup_s.UFM_Shift_s~regout\,
	datad => PWM1_SR(1),
	aclr => GND,
	ena => \PWM0_SR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PWM1_SR(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mod_Trigger~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Mod_Trigger,
	combout => \Mod_Trigger~combout\);

-- Location: LC_X5_Y9_N5
\n_Ext_Intlk~0\ : maxv_lcell
-- Equation(s):
-- \n_Ext_Intlk~0_combout\ = ((!\u_Sled|iSLEDFault~regout\ & ((!\u_FastFault|iFaultOut~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Sled|iSLEDFault~regout\,
	datad => \u_FastFault|iFaultOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \n_Ext_Intlk~0_combout\);

-- Location: LC_X5_Y9_N7
\Mod_Trigger_Out~0\ : maxv_lcell
-- Equation(s):
-- \Mod_Trigger_Out~0_combout\ = (\Mod_Trigger~combout\ & (!\u_ModFlt|ModFaultOut~regout\ & (\n_Ext_Intlk~0_combout\ & !\ByPass~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod_Trigger~combout\,
	datab => \u_ModFlt|ModFaultOut~regout\,
	datac => \n_Ext_Intlk~0_combout\,
	datad => \ByPass~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mod_Trigger_Out~0_combout\);

-- Location: LC_X5_Y9_N3
\n_Ext_Intlk~1\ : maxv_lcell
-- Equation(s):
-- \n_Ext_Intlk~1_combout\ = ((!\ByPass~combout\ & ((\u_Sled|iSLEDFault~regout\) # (\u_FastFault|iFaultOut~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ByPass~combout\,
	datac => \u_Sled|iSLEDFault~regout\,
	datad => \u_FastFault|iFaultOut~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \n_Ext_Intlk~1_combout\);

-- Location: LC_X15_Y7_N9
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!TestCntr(6) & (!TestCntr(5) & (!TestCntr(7) & !TestCntr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => TestCntr(6),
	datab => TestCntr(5),
	datac => TestCntr(7),
	datad => TestCntr(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X15_Y7_N8
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!TestCntr(0) & (!TestCntr(2) & (!TestCntr(1) & !TestCntr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => TestCntr(0),
	datab => TestCntr(2),
	datac => TestCntr(1),
	datad => TestCntr(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X14_Y7_N3
PWMStart : maxv_lcell
-- Equation(s):
-- \PWMStart~regout\ = DFFEAS((!TestCntr(8) & (((\Equal0~1_combout\ & \Equal0~0_combout\)))), GLOBAL(\Clock~combout\), VCC, , \PWM0_SR[5]~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	dataa => TestCntr(8),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	aclr => GND,
	ena => \PWM0_SR[5]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PWMStart~regout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cmd_SDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_spi|Dout~0\,
	oe => VCC,
	padio => ww_Cmd_SDO);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_Beam_I_Under~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_Beam_I_Under);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\SLED_AC_Out_P~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => PWM0_SR(0),
	oe => VCC,
	padio => ww_SLED_AC_Out_P);

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\SLED_AC_Out_M~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => PWM1_SR(0),
	oe => VCC,
	padio => ww_SLED_AC_Out_M);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N_Tune_En~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_Sled|ALT_INV_Tuning~regout\,
	oe => VCC,
	padio => ww_N_Tune_En);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\N_DeTune_En~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_Sled|ALT_INV_DeTuning~regout\,
	oe => VCC,
	padio => ww_N_DeTune_En);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mod_Trigger_Out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mod_Trigger_Out~0_combout\,
	oe => VCC,
	padio => ww_Mod_Trigger_Out);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_Ext_Intlk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \n_Ext_Intlk~1_combout\,
	oe => VCC,
	padio => ww_n_Ext_Intlk);

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_Mod_Spare_Out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_n_Mod_Spare_Out);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Mod_Status~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Mod_Status);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SSSB_Trigger~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SSSB_Trigger);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RFOn_AMC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RfOn~0_combout\,
	oe => VCC,
	padio => ww_RFOn_AMC);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RFOff~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_RfOn~0_combout\,
	oe => VCC,
	padio => ww_RFOff);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\FaultOut~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_RfOn~0_combout\,
	oe => VCC,
	padio => ww_FaultOut);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TestPoint[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => PWM0_SR(0),
	oe => VCC,
	padio => ww_TestPoint(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TestPoint[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => PWM1_SR(0),
	oe => VCC,
	padio => ww_TestPoint(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TestPoint[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \nread~regout\,
	oe => VCC,
	padio => ww_TestPoint(2));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TestPoint[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PWMStart~regout\,
	oe => VCC,
	padio => ww_TestPoint(3));
END structure;


