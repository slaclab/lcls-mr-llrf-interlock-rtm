-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

-- DATE "08/23/2013 11:01:18"

-- 
-- Device: Altera 5M570ZT100A5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	bpm_a IS
    PORT (
	CLK119Mhz : IN std_logic;
	ClkDivOut : OUT std_logic;
	ClkDivIn : IN std_logic;
	Cal_Mode0 : IN std_logic;
	Cal_Mode1 : IN std_logic;
	Cal_Trig : IN std_logic;
	Beam_Trig : IN std_logic;
	Beam_SWTrig : IN std_logic;
	Trig_Out : OUT std_logic;
	Clk_Sel_Out : OUT std_logic;
	Cal_Done : OUT std_logic;
	Cal_ACK : IN std_logic;
	Qspi_CLK : IN std_logic;
	Qspi_DOut : OUT std_logic;
	Qspi_DIn : IN std_logic;
	CL_ATV : OUT std_logic_vector(5 DOWNTO 1);
	CL_SW : OUT std_logic_vector(6 DOWNTO 1);
	OSC_En : OUT std_logic;
	VPC : OUT std_logic;
	C4_AT2_V : OUT std_logic_vector(5 DOWNTO 1);
	C4_AT1_V : OUT std_logic_vector(5 DOWNTO 1);
	C3_AT2_V : OUT std_logic_vector(5 DOWNTO 1);
	C3_AT1_V : OUT std_logic_vector(5 DOWNTO 1);
	C2_AT2_V : OUT std_logic_vector(5 DOWNTO 1);
	C2_AT1_V : OUT std_logic_vector(5 DOWNTO 1);
	C1_AT2_V : OUT std_logic_vector(5 DOWNTO 1);
	C1_AT1_V : OUT std_logic_vector(5 DOWNTO 1);
	Spare_Out : OUT std_logic;
	TP : OUT std_logic_vector(3 DOWNTO 1)
	);
END bpm_a;

-- Design Ports Information
-- Qspi_DIn	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK119Mhz	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ClkDivIn	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Qspi_CLK	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cal_Mode0	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cal_Mode1	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Beam_SWTrig	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Beam_Trig	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cal_Trig	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cal_ACK	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ClkDivOut	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Trig_Out	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Clk_Sel_Out	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Cal_Done	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Qspi_DOut	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_ATV[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_ATV[2]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_ATV[3]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_ATV[4]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_ATV[5]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_SW[1]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_SW[2]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_SW[3]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_SW[4]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_SW[5]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CL_SW[6]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OSC_En	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VPC	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT2_V[1]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT2_V[2]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT2_V[3]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT2_V[4]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT2_V[5]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT1_V[1]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT1_V[2]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT1_V[3]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT1_V[4]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C4_AT1_V[5]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT2_V[1]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT2_V[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT2_V[3]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT2_V[4]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT2_V[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT1_V[1]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT1_V[2]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT1_V[3]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT1_V[4]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C3_AT1_V[5]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT2_V[1]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT2_V[2]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT2_V[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT2_V[4]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT2_V[5]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT1_V[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT1_V[2]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT1_V[3]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT1_V[4]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C2_AT1_V[5]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT2_V[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT2_V[2]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT2_V[3]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT2_V[4]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT2_V[5]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT1_V[1]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT1_V[2]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT1_V[3]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT1_V[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- C1_AT1_V[5]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Spare_Out	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- TP[1]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- TP[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- TP[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF bpm_a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK119Mhz : std_logic;
SIGNAL ww_ClkDivOut : std_logic;
SIGNAL ww_ClkDivIn : std_logic;
SIGNAL ww_Cal_Mode0 : std_logic;
SIGNAL ww_Cal_Mode1 : std_logic;
SIGNAL ww_Cal_Trig : std_logic;
SIGNAL ww_Beam_Trig : std_logic;
SIGNAL ww_Beam_SWTrig : std_logic;
SIGNAL ww_Trig_Out : std_logic;
SIGNAL ww_Clk_Sel_Out : std_logic;
SIGNAL ww_Cal_Done : std_logic;
SIGNAL ww_Cal_ACK : std_logic;
SIGNAL ww_Qspi_CLK : std_logic;
SIGNAL ww_Qspi_DOut : std_logic;
SIGNAL ww_Qspi_DIn : std_logic;
SIGNAL ww_CL_ATV : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_CL_SW : std_logic_vector(6 DOWNTO 1);
SIGNAL ww_OSC_En : std_logic;
SIGNAL ww_VPC : std_logic;
SIGNAL ww_C4_AT2_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_C4_AT1_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_C3_AT2_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_C3_AT1_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_C2_AT2_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_C2_AT1_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_C1_AT2_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_C1_AT1_V : std_logic_vector(5 DOWNTO 1);
SIGNAL ww_Spare_Out : std_logic;
SIGNAL ww_TP : std_logic_vector(3 DOWNTO 1);
SIGNAL \u_QSPI|iDoutEn~regout\ : std_logic;
SIGNAL \u_clkDet|Clk2DetectRst~regout\ : std_logic;
SIGNAL \CLK119Mhz~combout\ : std_logic;
SIGNAL \Reset~regout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Equal2~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~0_combout\ : std_logic;
SIGNAL \Qspi_DIn~combout\ : std_logic;
SIGNAL \u_QSPI|Counter[0]~0_combout\ : std_logic;
SIGNAL \u_QSPI|Selector10~1_combout\ : std_logic;
SIGNAL \u_QSPI|Equal0~1_combout\ : std_logic;
SIGNAL \u_QSPI|Equal0~0_combout\ : std_logic;
SIGNAL \u_QSPI|QSPI_State.CMDIn~regout\ : std_logic;
SIGNAL \u_QSPI|QSPI_State.Read1~regout\ : std_logic;
SIGNAL \u_QSPI|Selector16~0_combout\ : std_logic;
SIGNAL \u_QSPI|QSPI_State.Readt~regout\ : std_logic;
SIGNAL \u_QSPI|QSPI_State.Idle~regout\ : std_logic;
SIGNAL \u_QSPI|DataOut[4]~0_combout\ : std_logic;
SIGNAL \u_QSPI|Address[0]~0\ : std_logic;
SIGNAL \u_QSPI|iRead~0_combout\ : std_logic;
SIGNAL \u_QSPI|iRead~regout\ : std_logic;
SIGNAL \u_QSPI|Write_Strb~regout\ : std_logic;
SIGNAL \u_BPMReg|OffTime_Reg[7]~3_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~1_combout\ : std_logic;
SIGNAL \QSPI_Trig~0\ : std_logic;
SIGNAL \u_BPMReg|CALReg[4]~2_combout\ : std_logic;
SIGNAL \QSPI_Trig~regout\ : std_logic;
SIGNAL \Beam_SWTrig~combout\ : std_logic;
SIGNAL \swBeamTrigLatch~regout\ : std_logic;
SIGNAL \Beam_Trig~combout\ : std_logic;
SIGNAL \BeamTrigLatch~regout\ : std_logic;
SIGNAL \u_BeamTrigCon|Sys_Trigger~regout\ : std_logic;
SIGNAL \u_BPMReg|Trig2AMP_Reg[7]~2_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux83~2\ : std_logic;
SIGNAL \u_BPMReg|AMP2RF1_Reg[7]~2_combout\ : std_logic;
SIGNAL \u_BPMReg|RFWidth_Reg[7]~0_combout\ : std_logic;
SIGNAL \Cal_Trig~combout\ : std_logic;
SIGNAL \CalTrigLatch~regout\ : std_logic;
SIGNAL \u_CalTrigCon|Sys_Trigger~regout\ : std_logic;
SIGNAL \Cal_Mode0~combout\ : std_logic;
SIGNAL \Cal_Mode1~combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector6~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector2~0_combout\ : std_logic;
SIGNAL \u_clkDet|ClkOk~1_combout\ : std_logic;
SIGNAL \u_clkDet|SysClkWindow~0_combout\ : std_logic;
SIGNAL \u_clkDet|Equal2~0_combout\ : std_logic;
SIGNAL \u_clkDet|SysClkWindow~regout\ : std_logic;
SIGNAL \u_clkDet|PCIeClkw_p~0\ : std_logic;
SIGNAL \u_clkDet|Clk2DetWindow~regout\ : std_logic;
SIGNAL \u_clkDet|Clk2DetCount[3]~1_combout\ : std_logic;
SIGNAL \u_clkDet|ClkOk~0_combout\ : std_logic;
SIGNAL \u_clkDet|ClkOk~regout\ : std_logic;
SIGNAL \u_Cal_seq|CalSeq_p~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.Wait_RF2~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.RF_On2~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.Wait_RF1~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.RF_On1~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.Wait_Off1~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.Wait_Off2~regout\ : std_logic;
SIGNAL \u_Cal_seq|Selector0~4_combout\ : std_logic;
SIGNAL \u_Cal_seq|Equal3~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.Idle~regout\ : std_logic;
SIGNAL \u_Cal_seq|Selector9~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[6]~1\ : std_logic;
SIGNAL \u_Cal_seq|LdCntr~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[6]~6\ : std_logic;
SIGNAL \u_Cal_seq|Selector25~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[8]~3\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[6]~7_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector19~0\ : std_logic;
SIGNAL \u_QSPI|Selector18~0\ : std_logic;
SIGNAL \u_Cal_seq|Selector20~0\ : std_logic;
SIGNAL \u_QSPI|Selector19~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector18~0\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[8]~4_combout\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[8]~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[8]~5_combout\ : std_logic;
SIGNAL \u_Cal_seq|Advance~3_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector24~0\ : std_logic;
SIGNAL \u_Cal_seq|Selector23~0_combout\ : std_logic;
SIGNAL \u_QSPI|Selector21~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector22~0_combout\ : std_logic;
SIGNAL \u_QSPI|Selector20~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector21~0\ : std_logic;
SIGNAL \u_Cal_seq|Advance~4_combout\ : std_logic;
SIGNAL \u_Cal_seq|Advance~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|Advance~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|Advance~5_combout\ : std_logic;
SIGNAL \u_Cal_seq|Equal2~5_combout\ : std_logic;
SIGNAL \u_Cal_seq|Counter[14]~32_combout\ : std_logic;
SIGNAL \u_Cal_seq|Counter[0]~1\ : std_logic;
SIGNAL \u_Cal_seq|Counter[0]~1COUT1_47\ : std_logic;
SIGNAL \u_Cal_seq|Counter[1]~3\ : std_logic;
SIGNAL \u_Cal_seq|Counter[1]~3COUT1_49\ : std_logic;
SIGNAL \u_Cal_seq|Counter[2]~5\ : std_logic;
SIGNAL \u_Cal_seq|Counter[3]~7\ : std_logic;
SIGNAL \u_Cal_seq|Counter[3]~7COUT1_51\ : std_logic;
SIGNAL \u_Cal_seq|Equal2~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Counter[4]~9\ : std_logic;
SIGNAL \u_Cal_seq|Counter[4]~9COUT1_53\ : std_logic;
SIGNAL \u_Cal_seq|Counter[5]~11\ : std_logic;
SIGNAL \u_Cal_seq|Counter[5]~11COUT1_55\ : std_logic;
SIGNAL \u_Cal_seq|Counter[6]~13\ : std_logic;
SIGNAL \u_Cal_seq|Counter[6]~13COUT1_57\ : std_logic;
SIGNAL \u_Cal_seq|Counter[7]~15\ : std_logic;
SIGNAL \u_Cal_seq|Counter[8]~17\ : std_logic;
SIGNAL \u_Cal_seq|Counter[8]~17COUT1_59\ : std_logic;
SIGNAL \u_Cal_seq|Counter[9]~19\ : std_logic;
SIGNAL \u_Cal_seq|Counter[9]~19COUT1_61\ : std_logic;
SIGNAL \u_Cal_seq|Counter[10]~21\ : std_logic;
SIGNAL \u_Cal_seq|Counter[10]~21COUT1_63\ : std_logic;
SIGNAL \u_Cal_seq|Counter[11]~23\ : std_logic;
SIGNAL \u_Cal_seq|Counter[11]~23COUT1_65\ : std_logic;
SIGNAL \u_Cal_seq|Counter[12]~25\ : std_logic;
SIGNAL \u_Cal_seq|Counter[13]~27\ : std_logic;
SIGNAL \u_Cal_seq|Counter[13]~27COUT1_67\ : std_logic;
SIGNAL \u_Cal_seq|Counter[14]~29\ : std_logic;
SIGNAL \u_Cal_seq|Counter[14]~29COUT1_69\ : std_logic;
SIGNAL \u_Cal_seq|Equal2~3_combout\ : std_logic;
SIGNAL \u_Cal_seq|Equal2~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|Equal2~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|Equal2~4_combout\ : std_logic;
SIGNAL \u_Cal_seq|Advance~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Advance~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextState.Wait_AMP~regout\ : std_logic;
SIGNAL \u_Cal_seq|NextCount[6]~0_combout\ : std_logic;
SIGNAL \u_BPMReg|RF12RF2_Reg[7]~2_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux83~3\ : std_logic;
SIGNAL \u_BPMReg|Mux83~0\ : std_logic;
SIGNAL \u_BPMReg|RF2Red_Reg[7]~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector30~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector30~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|SW4~regout\ : std_logic;
SIGNAL \u_Cal_seq|Selector27~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector27~0\ : std_logic;
SIGNAL \u_Cal_seq|Equal3~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector27~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|SW1~regout\ : std_logic;
SIGNAL \u_Cal_seq|SW6~regout\ : std_logic;
SIGNAL \u_BPMReg|RF2Green_Reg[7]~0_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux83~1\ : std_logic;
SIGNAL \u_BPMReg|Trig2Beam_Reg[7]~2_combout\ : std_logic;
SIGNAL \u_BPMReg|Trig2Beam_Reg[7]~3_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector28~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Selector28~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|SW2~regout\ : std_logic;
SIGNAL \u_Cal_seq|SW5~regout\ : std_logic;
SIGNAL \u_Cal_seq|Mux9~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Mux9~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Pulse~0\ : std_logic;
SIGNAL \u_QSPI|Selector19~2\ : std_logic;
SIGNAL \u_Cal_seq|Mux4~0\ : std_logic;
SIGNAL \u_Cal_seq|Mux4~1_combout\ : std_logic;
SIGNAL \u_QSPI|Selector20~0\ : std_logic;
SIGNAL \u_Cal_seq|Mux5~0\ : std_logic;
SIGNAL \u_Cal_seq|Mux5~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|Mux7~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Mux7~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|Mux8~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|Mux8~1_combout\ : std_logic;
SIGNAL \u_QSPI|Selector21~6\ : std_logic;
SIGNAL \u_Cal_seq|Mux6~0\ : std_logic;
SIGNAL \u_Cal_seq|Mux6~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Equal1~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|Mux2~0\ : std_logic;
SIGNAL \u_Cal_seq|Mux2~1_combout\ : std_logic;
SIGNAL \u_QSPI|Selector18~2\ : std_logic;
SIGNAL \u_Cal_seq|Mux3~0\ : std_logic;
SIGNAL \u_Cal_seq|Mux3~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Equal1~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Equal1~2_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~2\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~2COUT1_48\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~35_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~37\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~37COUT1_50\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~30_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~32\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~32COUT1_52\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~25_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~27\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~27COUT1_54\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~20_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~22\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~15_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~17\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~17COUT1_56\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~10_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~12\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~12COUT1_58\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Add0~5_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Equal2~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Equal2~1_combout\ : std_logic;
SIGNAL \u_Cal_seq|u_Pulse|Pulse~regout\ : std_logic;
SIGNAL \u_BPMReg|Trig2Beam_Reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[0]~1\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[0]~1COUT1_27\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[1]~3\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[1]~3COUT1_29\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[2]~5\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[2]~5COUT1_31\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[7]~8_combout\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[3]~7\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[3]~7COUT1_33\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[4]~10\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[5]~12\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[5]~12COUT1_35\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[6]~14\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[6]~14COUT1_37\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[7]~17_combout\ : std_logic;
SIGNAL \u_Beam_Seq|BeamTrigger~1_combout\ : std_logic;
SIGNAL \u_Beam_Seq|BeamTrigger~0\ : std_logic;
SIGNAL \u_Beam_Seq|BeamTrigger~2_combout\ : std_logic;
SIGNAL \u_Beam_Seq|Cntr[7]~18_combout\ : std_logic;
SIGNAL \u_Beam_Seq|BeamTrigger~regout\ : std_logic;
SIGNAL \Trig_Out~0_combout\ : std_logic;
SIGNAL \ClkDivIn~combout\ : std_logic;
SIGNAL \u_BPMReg|Mux0~0\ : std_logic;
SIGNAL \u_BPMReg|OffTime_Reg[7]~2_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux0~1_combout\ : std_logic;
SIGNAL \u_BPMReg|CALAck~regout\ : std_logic;
SIGNAL \Cal_ACK~combout\ : std_logic;
SIGNAL \CalAckInLatch~regout\ : std_logic;
SIGNAL \u_CalAck|Sys_Trigger~regout\ : std_logic;
SIGNAL \u_handshake|CALDoneRst~regout\ : std_logic;
SIGNAL \u_Cal_seq|iCalDone~regout\ : std_logic;
SIGNAL \u_handshake|CALDone_out~regout\ : std_logic;
SIGNAL \Qspi_CLK~combout\ : std_logic;
SIGNAL \u_QSPI|DoutEn~regout\ : std_logic;
SIGNAL \u_QSPI|DataOutSR[6]~0_combout\ : std_logic;
SIGNAL \u_QSPI|Selector19~1\ : std_logic;
SIGNAL \u_QSPI|Selector19~3\ : std_logic;
SIGNAL \u_BPMReg|PowerOn~regout\ : std_logic;
SIGNAL \u_QSPI|DataOutSR[6]~1_combout\ : std_logic;
SIGNAL \u_QSPI|DataOutSR[6]~2_combout\ : std_logic;
SIGNAL \u_QSPI|DataOutSR[6]~3\ : std_logic;
SIGNAL \u_QSPI|DataOutSR[2]~6_combout\ : std_logic;
SIGNAL \u_QSPI|Selector20~3\ : std_logic;
SIGNAL \u_BPMReg|ATT1Reg~0\ : std_logic;
SIGNAL \u_BPMReg|CALReg[4]~5_combout\ : std_logic;
SIGNAL \u_QSPI|Selector20~4_combout\ : std_logic;
SIGNAL \u_BPMReg|ATT1Reg[4]~5_combout\ : std_logic;
SIGNAL \u_QSPI|DataOutSR[2]~4\ : std_logic;
SIGNAL \u_QSPI|DataOutSR[2]~5_combout\ : std_logic;
SIGNAL \u_QSPI|Selector20~5_combout\ : std_logic;
SIGNAL \u_BPMReg|ATT2Reg[4]~0_combout\ : std_logic;
SIGNAL \u_QSPI|Selector20~6_combout\ : std_logic;
SIGNAL \u_QSPI|Selector20~1\ : std_logic;
SIGNAL \u_QSPI|Selector20~7_combout\ : std_logic;
SIGNAL \u_QSPI|Selector21~7\ : std_logic;
SIGNAL \u_QSPI|Selector22~7\ : std_logic;
SIGNAL \u_QSPI|Selector22~8_combout\ : std_logic;
SIGNAL \u_QSPI|Selector22~2\ : std_logic;
SIGNAL \u_QSPI|Selector22~3_combout\ : std_logic;
SIGNAL \u_QSPI|Selector23~0\ : std_logic;
SIGNAL \u_QSPI|Selector23~1_combout\ : std_logic;
SIGNAL \u_BPMReg|CALReg[2]~4\ : std_logic;
SIGNAL \u_BPMReg|CALReg[2]~3_combout\ : std_logic;
SIGNAL \u_QSPI|Selector23~4_combout\ : std_logic;
SIGNAL \u_QSPI|Selector23~2\ : std_logic;
SIGNAL \u_QSPI|Selector23~3_combout\ : std_logic;
SIGNAL \u_QSPI|Selector23~5_combout\ : std_logic;
SIGNAL \u_BPMReg|ATT1Reg~3\ : std_logic;
SIGNAL \u_QSPI|Selector23~6_combout\ : std_logic;
SIGNAL \u_QSPI|Selector23~7_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~2\ : std_logic;
SIGNAL \u_BPMReg|Mux90~3_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~0_combout\ : std_logic;
SIGNAL \u_BPMReg|ATT1Reg~4\ : std_logic;
SIGNAL \u_BPMReg|Mux90~4_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~5_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~6_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~7_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~8_combout\ : std_logic;
SIGNAL \u_BPMReg|Mux90~9_combout\ : std_logic;
SIGNAL \u_QSPI|Selector24~1_combout\ : std_logic;
SIGNAL \u_QSPI|Selector24~0_combout\ : std_logic;
SIGNAL \u_BPMReg|ATT1Reg~2\ : std_logic;
SIGNAL \u_BPMReg|CSRReg[3]~0_combout\ : std_logic;
SIGNAL \u_QSPI|Selector22~4\ : std_logic;
SIGNAL \u_QSPI|Selector22~5_combout\ : std_logic;
SIGNAL \u_QSPI|Selector22~10_combout\ : std_logic;
SIGNAL \u_QSPI|Selector22~6_combout\ : std_logic;
SIGNAL \u_BPMReg|ATT1Reg~1\ : std_logic;
SIGNAL \u_QSPI|Selector21~2\ : std_logic;
SIGNAL \u_QSPI|Selector21~3_combout\ : std_logic;
SIGNAL \u_QSPI|Selector21~4_combout\ : std_logic;
SIGNAL \u_QSPI|Selector21~1\ : std_logic;
SIGNAL \u_QSPI|Selector21~5_combout\ : std_logic;
SIGNAL \u_QSPI|Selector19~4_combout\ : std_logic;
SIGNAL \u_QSPI|Selector18~4_combout\ : std_logic;
SIGNAL \u_QSPI|Selector18~3\ : std_logic;
SIGNAL \u_QSPI|Selector18~1\ : std_logic;
SIGNAL \u_QSPI|Load~regout\ : std_logic;
SIGNAL \u_QSPI|iDout~0\ : std_logic;
SIGNAL \u_QSPI|iDout~regout\ : std_logic;
SIGNAL \u_QSPI|Dout~0\ : std_logic;
SIGNAL \CL_SW~0_combout\ : std_logic;
SIGNAL \CL_SW~1_combout\ : std_logic;
SIGNAL \CL_SW~2_combout\ : std_logic;
SIGNAL \CL_SW~3_combout\ : std_logic;
SIGNAL \CL_SW~4_combout\ : std_logic;
SIGNAL \OSC_En~0\ : std_logic;
SIGNAL \u_Cal_seq|Selector26~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|iAMP_On~regout\ : std_logic;
SIGNAL \ivpc~0_combout\ : std_logic;
SIGNAL \u_Cal_seq|AutoOscOn~regout\ : std_logic;
SIGNAL \u_Cal_seq|Mux1~0_combout\ : std_logic;
SIGNAL \u_BeamTrigCon|Cal_TrigSr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_BeamTrigCon|SW_TrigSr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_CalAck|Cal_TrigSr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL SwBeamTrigSr : std_logic_vector(2 DOWNTO 0);
SIGNAL PonCntr : std_logic_vector(3 DOWNTO 0);
SIGNAL ClkDiv : std_logic_vector(1 DOWNTO 0);
SIGNAL CalTrigSr : std_logic_vector(2 DOWNTO 0);
SIGNAL CALAckInSr : std_logic_vector(2 DOWNTO 0);
SIGNAL BeamTrigSr : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_clkDet|SysClkCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_clkDet|Clk2DetWindowSr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_clkDet|Clk2DetCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_CalTrigCon|Cal_TrigSr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_handshake|CalRegAckSr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_handshake|CalAckSr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_QSPI|DataOutSR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_QSPI|DataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_QSPI|DInSr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_QSPI|Counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_QSPI|Address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|Trig2Beam_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|Trig2AMP_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|RFWidth_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|RF2Red_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|RF2Green_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|RF12RF2_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|OffTime_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_BPMReg|CSRReg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_BPMReg|CALReg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_BPMReg|ATT2Reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_BPMReg|ATT1Reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_BPMReg|AMP2RF1_Reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_Beam_Seq|Cntr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_Cal_seq|NextCount\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_Cal_seq|Counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_Cal_seq|u_Pulse|TrigSr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_Cal_seq|u_Pulse|Cntr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Qspi_CLK~combout\ : std_logic;
SIGNAL \u_Cal_seq|ALT_INV_NextState.Idle~regout\ : std_logic;
SIGNAL \u_QSPI|ALT_INV_Write_Strb~regout\ : std_logic;
SIGNAL \ALT_INV_Reset~regout\ : std_logic;

BEGIN

ww_CLK119Mhz <= CLK119Mhz;
ClkDivOut <= ww_ClkDivOut;
ww_ClkDivIn <= ClkDivIn;
ww_Cal_Mode0 <= Cal_Mode0;
ww_Cal_Mode1 <= Cal_Mode1;
ww_Cal_Trig <= Cal_Trig;
ww_Beam_Trig <= Beam_Trig;
ww_Beam_SWTrig <= Beam_SWTrig;
Trig_Out <= ww_Trig_Out;
Clk_Sel_Out <= ww_Clk_Sel_Out;
Cal_Done <= ww_Cal_Done;
ww_Cal_ACK <= Cal_ACK;
ww_Qspi_CLK <= Qspi_CLK;
Qspi_DOut <= ww_Qspi_DOut;
ww_Qspi_DIn <= Qspi_DIn;
CL_ATV <= ww_CL_ATV;
CL_SW <= ww_CL_SW;
OSC_En <= ww_OSC_En;
VPC <= ww_VPC;
C4_AT2_V <= ww_C4_AT2_V;
C4_AT1_V <= ww_C4_AT1_V;
C3_AT2_V <= ww_C3_AT2_V;
C3_AT1_V <= ww_C3_AT1_V;
C2_AT2_V <= ww_C2_AT2_V;
C2_AT1_V <= ww_C2_AT1_V;
C1_AT2_V <= ww_C1_AT2_V;
C1_AT1_V <= ww_C1_AT1_V;
Spare_Out <= ww_Spare_Out;
TP <= ww_TP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Qspi_CLK~combout\ <= NOT \Qspi_CLK~combout\;
\u_Cal_seq|ALT_INV_NextState.Idle~regout\ <= NOT \u_Cal_seq|NextState.Idle~regout\;
\u_QSPI|ALT_INV_Write_Strb~regout\ <= NOT \u_QSPI|Write_Strb~regout\;
\ALT_INV_Reset~regout\ <= NOT \Reset~regout\;

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK119Mhz~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK119Mhz,
	combout => \CLK119Mhz~combout\);

-- Location: LC_X10_Y3_N9
\PonCntr[2]\ : maxv_lcell
-- Equation(s):
-- PonCntr(2) = DFFEAS(((PonCntr(2)) # ((PonCntr(1) & PonCntr(0)))), GLOBAL(\CLK119Mhz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	datab => PonCntr(1),
	datac => PonCntr(0),
	datad => PonCntr(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PonCntr(2));

-- Location: LC_X10_Y3_N0
\PonCntr[0]\ : maxv_lcell
-- Equation(s):
-- PonCntr(0) = DFFEAS((((PonCntr(2) & PonCntr(1))) # (!PonCntr(0))), GLOBAL(\CLK119Mhz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	datab => PonCntr(2),
	datac => PonCntr(1),
	datad => PonCntr(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PonCntr(0));

-- Location: LC_X10_Y3_N7
\PonCntr[1]\ : maxv_lcell
-- Equation(s):
-- PonCntr(1) = DFFEAS(((PonCntr(1) & ((PonCntr(2)) # (!PonCntr(0)))) # (!PonCntr(1) & (PonCntr(0)))), GLOBAL(\CLK119Mhz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	datab => PonCntr(1),
	datac => PonCntr(0),
	datad => PonCntr(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PonCntr(1));

-- Location: LC_X10_Y3_N5
Reset : maxv_lcell
-- Equation(s):
-- \Reset~regout\ = DFFEAS((((!PonCntr(2)) # (!PonCntr(0))) # (!PonCntr(1))), GLOBAL(\CLK119Mhz~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	datab => PonCntr(1),
	datac => PonCntr(0),
	datad => PonCntr(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Reset~regout\);

-- Location: LC_X12_Y1_N4
\ClkDiv[0]\ : maxv_lcell
-- Equation(s):
-- ClkDiv(0) = DFFEAS((((!ClkDiv(0)))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \CLK119Mhz~combout\,
	datac => ClkDiv(0),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkDiv(0));

-- Location: LC_X12_Y1_N2
\ClkDiv[1]\ : maxv_lcell
-- Equation(s):
-- ClkDiv(1) = DFFEAS(((ClkDiv(0) $ (ClkDiv(1)))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	datac => ClkDiv(0),
	datad => ClkDiv(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkDiv(1));

-- Location: LC_X2_Y4_N0
\u_Cal_seq|u_Pulse|Equal2~2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Equal2~2_combout\ = (!\u_Cal_seq|u_Pulse|Cntr\(0) & (((\u_Cal_seq|u_Pulse|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|u_Pulse|Cntr\(0),
	datad => \u_Cal_seq|u_Pulse|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Equal2~2_combout\);

-- Location: LC_X2_Y5_N0
\u_Cal_seq|u_Pulse|Add0~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~0_combout\ = (!\u_Cal_seq|u_Pulse|Cntr\(0))
-- \u_Cal_seq|u_Pulse|Add0~2\ = CARRY((\u_Cal_seq|u_Pulse|Cntr\(0)))
-- \u_Cal_seq|u_Pulse|Add0~2COUT1_48\ = CARRY((\u_Cal_seq|u_Pulse|Cntr\(0)))

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
	dataa => \u_Cal_seq|u_Pulse|Cntr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~0_combout\,
	cout0 => \u_Cal_seq|u_Pulse|Add0~2\,
	cout1 => \u_Cal_seq|u_Pulse|Add0~2COUT1_48\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Qspi_DIn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Qspi_DIn,
	combout => \Qspi_DIn~combout\);

-- Location: LC_X7_Y7_N3
\u_QSPI|Counter[0]~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Counter[0]~0_combout\ = (((\u_QSPI|QSPI_State.Idle~regout\) # (\Qspi_DIn~combout\)))

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
	datac => \u_QSPI|QSPI_State.Idle~regout\,
	datad => \Qspi_DIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Counter[0]~0_combout\);

-- Location: LC_X10_Y7_N6
\u_QSPI|Counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Counter\(0) = DFFEAS((\u_QSPI|Counter\(0) & (((\u_QSPI|Equal0~0_combout\ & \u_QSPI|QSPI_State.CMDIn~regout\)))) # (!\u_QSPI|Counter\(0) & ((\u_QSPI|QSPI_State.Idle~regout\) # ((\u_QSPI|Equal0~0_combout\ & \u_QSPI|QSPI_State.CMDIn~regout\)))), 
-- GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Counter\(0),
	datab => \u_QSPI|QSPI_State.Idle~regout\,
	datac => \u_QSPI|Equal0~0_combout\,
	datad => \u_QSPI|QSPI_State.CMDIn~regout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|Counter\(0));

-- Location: LC_X10_Y7_N8
\u_QSPI|Selector10~1\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector10~1_combout\ = ((\u_QSPI|QSPI_State.Idle~regout\ & ((!\u_QSPI|Equal0~0_combout\) # (!\u_QSPI|QSPI_State.CMDIn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_QSPI|QSPI_State.CMDIn~regout\,
	datac => \u_QSPI|Equal0~0_combout\,
	datad => \u_QSPI|QSPI_State.Idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector10~1_combout\);

-- Location: LC_X10_Y7_N9
\u_QSPI|Counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Counter\(1) = DFFEAS(((\u_QSPI|Counter\(1) $ (!\u_QSPI|Counter\(0))) # (!\u_QSPI|Selector10~1_combout\)), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datab => \u_QSPI|Counter\(1),
	datac => \u_QSPI|Counter\(0),
	datad => \u_QSPI|Selector10~1_combout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|Counter\(1));

-- Location: LC_X10_Y7_N7
\u_QSPI|Counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Counter\(2) = DFFEAS((\u_QSPI|Counter\(2) $ (((!\u_QSPI|Counter\(0) & !\u_QSPI|Counter\(1))))) # (!\u_QSPI|Selector10~1_combout\), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Counter\(0),
	datab => \u_QSPI|Counter\(1),
	datac => \u_QSPI|Counter\(2),
	datad => \u_QSPI|Selector10~1_combout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|Counter\(2));

-- Location: LC_X10_Y7_N1
\u_QSPI|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Equal0~1_combout\ = (!\u_QSPI|Counter\(0) & (!\u_QSPI|Counter\(1) & (!\u_QSPI|Counter\(2))))

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
	dataa => \u_QSPI|Counter\(0),
	datab => \u_QSPI|Counter\(1),
	datac => \u_QSPI|Counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Equal0~1_combout\);

-- Location: LC_X10_Y7_N2
\u_QSPI|Counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Counter\(3) = DFFEAS((\u_QSPI|QSPI_State.Idle~regout\ & ((\u_QSPI|Counter\(3) & ((!\u_QSPI|Equal0~1_combout\))) # (!\u_QSPI|Counter\(3) & (!\u_QSPI|QSPI_State.CMDIn~regout\ & \u_QSPI|Equal0~1_combout\)))), GLOBAL(\Qspi_CLK~combout\), 
-- !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|QSPI_State.CMDIn~regout\,
	datab => \u_QSPI|Counter\(3),
	datac => \u_QSPI|QSPI_State.Idle~regout\,
	datad => \u_QSPI|Equal0~1_combout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|Counter\(3));

-- Location: LC_X10_Y7_N5
\u_QSPI|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Equal0~0_combout\ = (!\u_QSPI|Counter\(0) & (!\u_QSPI|Counter\(1) & (!\u_QSPI|Counter\(2) & !\u_QSPI|Counter\(3))))

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
	dataa => \u_QSPI|Counter\(0),
	datab => \u_QSPI|Counter\(1),
	datac => \u_QSPI|Counter\(2),
	datad => \u_QSPI|Counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Equal0~0_combout\);

-- Location: LC_X10_Y3_N8
\u_QSPI|QSPI_State.CMDIn\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|QSPI_State.CMDIn~regout\ = DFFEAS((\u_QSPI|QSPI_State.Idle~regout\ & (((\u_QSPI|QSPI_State.CMDIn~regout\ & !\u_QSPI|Equal0~0_combout\)))) # (!\u_QSPI|QSPI_State.Idle~regout\ & ((\Qspi_DIn~combout\) # ((\u_QSPI|QSPI_State.CMDIn~regout\ & 
-- !\u_QSPI|Equal0~0_combout\)))), GLOBAL(\Qspi_CLK~combout\), VCC, , !\Reset~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|QSPI_State.Idle~regout\,
	datab => \Qspi_DIn~combout\,
	datac => \u_QSPI|QSPI_State.CMDIn~regout\,
	datad => \u_QSPI|Equal0~0_combout\,
	aclr => GND,
	ena => \ALT_INV_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|QSPI_State.CMDIn~regout\);

-- Location: LC_X10_Y3_N6
\u_QSPI|QSPI_State.Read1\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Address[0]~0\ = ((\u_QSPI|QSPI_State.CMDIn~regout\ & ((\u_QSPI|Equal0~0_combout\))))
-- \u_QSPI|QSPI_State.Read1~regout\ = DFFEAS(\u_QSPI|Address[0]~0\, GLOBAL(\Qspi_CLK~combout\), VCC, , !\Reset~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datab => \u_QSPI|QSPI_State.CMDIn~regout\,
	datad => \u_QSPI|Equal0~0_combout\,
	aclr => GND,
	ena => \ALT_INV_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Address[0]~0\,
	regout => \u_QSPI|QSPI_State.Read1~regout\);

-- Location: LC_X5_Y4_N5
\u_QSPI|Selector16~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector16~0_combout\ = ((!\u_QSPI|QSPI_State.Read1~regout\ & ((\u_QSPI|Equal0~0_combout\) # (!\u_QSPI|QSPI_State.Readt~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_QSPI|QSPI_State.Read1~regout\,
	datac => \u_QSPI|Equal0~0_combout\,
	datad => \u_QSPI|QSPI_State.Readt~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector16~0_combout\);

-- Location: LC_X10_Y3_N2
\u_QSPI|QSPI_State.Readt\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|QSPI_State.Readt~regout\ = DFFEAS((((!\u_QSPI|Selector16~0_combout\))), GLOBAL(\Qspi_CLK~combout\), VCC, , !\Reset~regout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|Selector16~0_combout\,
	aclr => GND,
	ena => \ALT_INV_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|QSPI_State.Readt~regout\);

-- Location: LC_X10_Y3_N4
\u_QSPI|QSPI_State.Idle\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|QSPI_State.Idle~regout\ = DFFEAS((\u_QSPI|QSPI_State.Idle~regout\ & (((!\u_QSPI|Equal0~0_combout\) # (!\u_QSPI|QSPI_State.Readt~regout\)))) # (!\u_QSPI|QSPI_State.Idle~regout\ & (\Qspi_DIn~combout\ & ((!\u_QSPI|Equal0~0_combout\) # 
-- (!\u_QSPI|QSPI_State.Readt~regout\)))), GLOBAL(\Qspi_CLK~combout\), VCC, , !\Reset~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0eee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|QSPI_State.Idle~regout\,
	datab => \Qspi_DIn~combout\,
	datac => \u_QSPI|QSPI_State.Readt~regout\,
	datad => \u_QSPI|Equal0~0_combout\,
	aclr => GND,
	ena => \ALT_INV_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|QSPI_State.Idle~regout\);

-- Location: LC_X7_Y7_N5
\u_QSPI|DInSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DInSr\(0) = DFFEAS(((\Qspi_DIn~combout\) # ((!\u_QSPI|QSPI_State.Idle~regout\ & \u_QSPI|DInSr\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|QSPI_State.Idle~regout\,
	datac => \u_QSPI|DInSr\(0),
	datad => \Qspi_DIn~combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DInSr\(0));

-- Location: LC_X7_Y7_N9
\u_QSPI|DInSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DInSr\(1) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, \u_QSPI|DInSr\(0), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DInSr\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DInSr\(1));

-- Location: LC_X5_Y6_N4
\u_QSPI|DataOut[4]~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOut[4]~0_combout\ = ((\u_QSPI|Equal0~0_combout\ & (\u_QSPI|QSPI_State.Readt~regout\)))

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
	datab => \u_QSPI|Equal0~0_combout\,
	datac => \u_QSPI|QSPI_State.Readt~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOut[4]~0_combout\);

-- Location: LC_X6_Y7_N0
\u_QSPI|DataOut[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOut\(2) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, \u_QSPI|DInSr\(1), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DInSr\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOut\(2));

-- Location: LC_X7_Y7_N0
\u_QSPI|DInSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DInSr\(2) = DFFEAS((((\u_QSPI|DInSr\(1)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DInSr\(1),
	aclr => \Reset~regout\,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DInSr\(2));

-- Location: LC_X7_Y7_N4
\u_QSPI|DInSr[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DInSr\(3) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, \u_QSPI|DInSr\(2), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DInSr\(2),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DInSr\(3));

-- Location: LC_X7_Y7_N7
\u_QSPI|DInSr[4]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DInSr\(4) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, \u_QSPI|DInSr\(3), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DInSr\(3),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DInSr\(4));

-- Location: LC_X7_Y7_N6
\u_QSPI|DInSr[5]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DInSr\(5) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, \u_QSPI|DInSr\(4), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DInSr\(4),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DInSr\(5));

-- Location: LC_X6_Y6_N9
\u_QSPI|DataOut[4]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg~0\ = (\u_QSPI|DataOut\(5)) # ((\u_QSPI|DataOut\(7)) # ((H1_DataOut[4]) # (\u_QSPI|DataOut\(6))))
-- \u_QSPI|DataOut\(4) = DFFEAS(\u_BPMReg|ATT1Reg~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, \u_QSPI|DInSr\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOut\(5),
	datab => \u_QSPI|DataOut\(7),
	datac => \u_QSPI|DInSr\(3),
	datad => \u_QSPI|DataOut\(6),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|ATT1Reg~0\,
	regout => \u_QSPI|DataOut\(4));

-- Location: LC_X6_Y7_N2
\u_QSPI|DataOut[1]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOut\(1) = DFFEAS((((\u_QSPI|DInSr\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DInSr\(0),
	aclr => \Reset~regout\,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOut\(1));

-- Location: LC_X6_Y6_N3
\u_QSPI|DataOut[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg[2]~4\ = (\u_QSPI|DataOut\(4)) # ((H1_DataOut[3]) # ((\u_QSPI|DataOut\(2) & \u_QSPI|DataOut\(1))))
-- \u_QSPI|DataOut\(3) = DFFEAS(\u_BPMReg|CALReg[2]~4\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, \u_QSPI|DInSr\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOut\(4),
	datab => \u_QSPI|DataOut\(2),
	datac => \u_QSPI|DInSr\(2),
	datad => \u_QSPI|DataOut\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|CALReg[2]~4\,
	regout => \u_QSPI|DataOut\(3));

-- Location: LC_X7_Y7_N8
\u_QSPI|DInSr[6]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DInSr\(6) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Counter[0]~0_combout\, \u_QSPI|DInSr\(5), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DInSr\(5),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DInSr\(6));

-- Location: LC_X6_Y6_N8
\u_QSPI|DataOut[7]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg~1\ = (\u_QSPI|DataOut\(5)) # ((\u_QSPI|DataOut\(3)) # ((H1_DataOut[7]) # (\u_QSPI|DataOut\(6))))
-- \u_QSPI|DataOut\(7) = DFFEAS(\u_BPMReg|ATT1Reg~1\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, \u_QSPI|DInSr\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOut\(5),
	datab => \u_QSPI|DataOut\(3),
	datac => \u_QSPI|DInSr\(6),
	datad => \u_QSPI|DataOut\(6),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|ATT1Reg~1\,
	regout => \u_QSPI|DataOut\(7));

-- Location: LC_X6_Y7_N6
\u_QSPI|DataOut[6]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg~2\ = (\u_QSPI|DataOut\(5)) # ((\u_QSPI|DataOut\(2)) # ((H1_DataOut[6]) # (\u_QSPI|DataOut\(7))))
-- \u_QSPI|DataOut\(6) = DFFEAS(\u_BPMReg|ATT1Reg~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, \u_QSPI|DInSr\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOut\(5),
	datab => \u_QSPI|DataOut\(2),
	datac => \u_QSPI|DInSr\(5),
	datad => \u_QSPI|DataOut\(7),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|ATT1Reg~2\,
	regout => \u_QSPI|DataOut\(6));

-- Location: LC_X6_Y7_N5
\u_QSPI|DataOut[5]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg~3\ = (\u_QSPI|DataOut\(6)) # ((\u_QSPI|DataOut\(1)) # ((H1_DataOut[5]) # (\u_QSPI|DataOut\(7))))
-- \u_QSPI|DataOut\(5) = DFFEAS(\u_BPMReg|ATT1Reg~3\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, \u_QSPI|DInSr\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOut\(6),
	datab => \u_QSPI|DataOut\(1),
	datac => \u_QSPI|DInSr\(4),
	datad => \u_QSPI|DataOut\(7),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|ATT1Reg~3\,
	regout => \u_QSPI|DataOut\(5));

-- Location: LC_X6_Y6_N6
\u_QSPI|DataOut[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg~4\ = (\u_QSPI|DataOut\(5)) # ((\u_QSPI|DataOut\(7)) # ((H1_DataOut[0]) # (\u_QSPI|DataOut\(6))))
-- \u_QSPI|DataOut\(0) = DFFEAS(\u_BPMReg|ATT1Reg~4\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|DataOut[4]~0_combout\, \Qspi_DIn~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOut\(5),
	datab => \u_QSPI|DataOut\(7),
	datac => \Qspi_DIn~combout\,
	datad => \u_QSPI|DataOut\(6),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|DataOut[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|ATT1Reg~4\,
	regout => \u_QSPI|DataOut\(0));

-- Location: LC_X7_Y7_N1
\u_QSPI|iRead~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|iRead~0_combout\ = ((\u_QSPI|iRead~regout\ & ((\u_QSPI|QSPI_State.Idle~regout\) # (\Qspi_DIn~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|QSPI_State.Idle~regout\,
	datac => \u_QSPI|iRead~regout\,
	datad => \Qspi_DIn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|iRead~0_combout\);

-- Location: LC_X7_Y7_N2
\u_QSPI|iRead\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|iRead~regout\ = DFFEAS((\u_QSPI|Address[0]~0\ & ((\u_QSPI|QSPI_State.Idle~regout\ & (\u_QSPI|DInSr\(5))) # (!\u_QSPI|QSPI_State.Idle~regout\ & ((\u_QSPI|iRead~0_combout\))))) # (!\u_QSPI|Address[0]~0\ & (((\u_QSPI|iRead~0_combout\)))), 
-- GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DInSr\(5),
	datab => \u_QSPI|Address[0]~0\,
	datac => \u_QSPI|QSPI_State.Idle~regout\,
	datad => \u_QSPI|iRead~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|iRead~regout\);

-- Location: LC_X5_Y6_N3
\u_QSPI|Write_Strb\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Write_Strb~regout\ = DFFEAS((\u_QSPI|QSPI_State.Readt~regout\ & ((\u_QSPI|Write_Strb~regout\) # ((\u_QSPI|Equal0~0_combout\ & !\u_QSPI|iRead~regout\)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|QSPI_State.Readt~regout\,
	datab => \u_QSPI|Equal0~0_combout\,
	datac => \u_QSPI|iRead~regout\,
	datad => \u_QSPI|Write_Strb~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|Write_Strb~regout\);

-- Location: LC_X5_Y6_N7
\u_QSPI|Address[5]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux0~0\ = (((!H1_Address[5] & !\u_QSPI|Address\(3))))
-- \u_QSPI|Address\(5) = DFFEAS(\u_BPMReg|Mux0~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Address[0]~0\, \u_QSPI|DInSr\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DInSr\(4),
	datad => \u_QSPI|Address\(3),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux0~0\,
	regout => \u_QSPI|Address\(5));

-- Location: LC_X5_Y6_N1
\u_QSPI|Address[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR[6]~3\ = (!\u_QSPI|QSPI_State.Readt~regout\ & (!\u_QSPI|Address\(5) & (!H1_Address[3])))
-- \u_QSPI|Address\(3) = DFFEAS(\u_QSPI|DataOutSR[6]~3\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Address[0]~0\, \u_QSPI|DInSr\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|QSPI_State.Readt~regout\,
	datab => \u_QSPI|Address\(5),
	datac => \u_QSPI|DInSr\(2),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOutSR[6]~3\,
	regout => \u_QSPI|Address\(3));

-- Location: LC_X7_Y5_N3
\u_BPMReg|OffTime_Reg[7]~3\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg[7]~3_combout\ = (\u_QSPI|Address\(2) & (!\u_QSPI|Address\(1) & (\u_BPMReg|Trig2Beam_Reg[7]~2_combout\ & !\u_QSPI|Address\(0))))

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
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(1),
	datac => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|OffTime_Reg[7]~3_combout\);

-- Location: LC_X7_Y5_N4
\u_BPMReg|OffTime_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg\(5) = DFFEAS((((!\u_QSPI|DataOut\(5)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(5),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|OffTime_Reg\(5));

-- Location: LC_X6_Y5_N8
\u_BPMReg|Trig2Beam_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector19~2\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))))) # (!\u_QSPI|Address\(1) & ((\u_QSPI|Address\(0) & ((D1_Trig2Beam_Reg[5]))) # (!\u_QSPI|Address\(0) & (!\u_BPMReg|OffTime_Reg\(5)))))
-- \u_BPMReg|Trig2Beam_Reg\(5) = DFFEAS(\u_QSPI|Selector19~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, \u_QSPI|DataOut\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa11",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|OffTime_Reg\(5),
	datac => \u_QSPI|DataOut\(5),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector19~2\,
	regout => \u_BPMReg|Trig2Beam_Reg\(5));

-- Location: LC_X8_Y5_N6
\u_BPMReg|OffTime_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg\(6) = DFFEAS((((\u_QSPI|DataOut\(6)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(6),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|OffTime_Reg\(6));

-- Location: LC_X8_Y6_N0
\u_BPMReg|Trig2Beam_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector18~2\ = (\u_QSPI|Address\(0) & ((\u_QSPI|Address\(1)) # ((D1_Trig2Beam_Reg[6])))) # (!\u_QSPI|Address\(0) & (!\u_QSPI|Address\(1) & ((\u_BPMReg|OffTime_Reg\(6)))))
-- \u_BPMReg|Trig2Beam_Reg\(6) = DFFEAS(\u_QSPI|Selector18~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, \u_QSPI|DataOut\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(0),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(6),
	datad => \u_BPMReg|OffTime_Reg\(6),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector18~2\,
	regout => \u_BPMReg|Trig2Beam_Reg\(6));

-- Location: LC_X6_Y4_N8
\u_BPMReg|Mux90~1\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~1_combout\ = ((\u_QSPI|Address\(1) & ((!\u_QSPI|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_QSPI|Address\(1),
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~1_combout\);

-- Location: LC_X6_Y4_N9
\u_QSPI|Address[6]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Address\(6) = DFFEAS((((\u_QSPI|DInSr\(5)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Address[0]~0\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DInSr\(5),
	aclr => \Reset~regout\,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|Address\(6));

-- Location: LC_X6_Y4_N7
\u_QSPI|Address[7]\ : maxv_lcell
-- Equation(s):
-- \QSPI_Trig~0\ = (\u_BPMReg|Mux90~1_combout\ & (!\u_QSPI|Address\(6) & (H1_Address[7] & \u_QSPI|Address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|Mux90~1_combout\,
	datab => \u_QSPI|Address\(6),
	datac => \u_QSPI|DInSr\(6),
	datad => \u_QSPI|Address\(2),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QSPI_Trig~0\,
	regout => \u_QSPI|Address\(7));

-- Location: LC_X5_Y6_N2
\u_BPMReg|CALReg[4]~2\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg[4]~2_combout\ = (\u_QSPI|Write_Strb~regout\ & (!\u_QSPI|Address\(3) & (!\u_QSPI|Address\(5) & !\u_QSPI|Address\(4))))

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
	dataa => \u_QSPI|Write_Strb~regout\,
	datab => \u_QSPI|Address\(3),
	datac => \u_QSPI|Address\(5),
	datad => \u_QSPI|Address\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|CALReg[4]~2_combout\);

-- Location: LC_X5_Y7_N2
QSPI_Trig : maxv_lcell
-- Equation(s):
-- \QSPI_Trig~regout\ = DFFEAS((!\u_BeamTrigCon|Sys_Trigger~regout\ & ((\QSPI_Trig~regout\) # ((\QSPI_Trig~0\ & \u_BPMReg|CALReg[4]~2_combout\)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \QSPI_Trig~0\,
	datab => \QSPI_Trig~regout\,
	datac => \u_BPMReg|CALReg[4]~2_combout\,
	datad => \u_BeamTrigCon|Sys_Trigger~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QSPI_Trig~regout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Beam_SWTrig~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Beam_SWTrig,
	combout => \Beam_SWTrig~combout\);

-- Location: LC_X8_Y7_N5
\SwBeamTrigSr[0]\ : maxv_lcell
-- Equation(s):
-- SwBeamTrigSr(0) = DFFEAS((((\Beam_SWTrig~combout\))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \CLK119Mhz~combout\,
	datad => \Beam_SWTrig~combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SwBeamTrigSr(0));

-- Location: LC_X8_Y7_N6
\SwBeamTrigSr[1]\ : maxv_lcell
-- Equation(s):
-- SwBeamTrigSr(1) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , SwBeamTrigSr(0), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => SwBeamTrigSr(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SwBeamTrigSr(1));

-- Location: LC_X8_Y7_N2
\SwBeamTrigSr[2]\ : maxv_lcell
-- Equation(s):
-- SwBeamTrigSr(2) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , SwBeamTrigSr(1), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => SwBeamTrigSr(1),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SwBeamTrigSr(2));

-- Location: LC_X8_Y7_N8
swBeamTrigLatch : maxv_lcell
-- Equation(s):
-- \swBeamTrigLatch~regout\ = DFFEAS((!\u_BeamTrigCon|Sys_Trigger~regout\ & ((\swBeamTrigLatch~regout\) # ((SwBeamTrigSr(1) & !SwBeamTrigSr(2))))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => SwBeamTrigSr(1),
	datab => SwBeamTrigSr(2),
	datac => \u_BeamTrigCon|Sys_Trigger~regout\,
	datad => \swBeamTrigLatch~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \swBeamTrigLatch~regout\);

-- Location: LC_X8_Y7_N4
\u_BeamTrigCon|SW_TrigSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_BeamTrigCon|SW_TrigSr\(0) = DFFEAS((((\QSPI_Trig~regout\) # (\swBeamTrigLatch~regout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datac => \QSPI_Trig~regout\,
	datad => \swBeamTrigLatch~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BeamTrigCon|SW_TrigSr\(0));

-- Location: LC_X8_Y7_N9
\u_BeamTrigCon|SW_TrigSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_BeamTrigCon|SW_TrigSr\(1) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_BeamTrigCon|SW_TrigSr\(0), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_BeamTrigCon|SW_TrigSr\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BeamTrigCon|SW_TrigSr\(1));

-- Location: LC_X9_Y7_N2
\u_BeamTrigCon|SW_TrigSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_BeamTrigCon|SW_TrigSr\(2) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_BeamTrigCon|SW_TrigSr\(1), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_BeamTrigCon|SW_TrigSr\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BeamTrigCon|SW_TrigSr\(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Beam_Trig~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Beam_Trig,
	combout => \Beam_Trig~combout\);

-- Location: LC_X9_Y7_N0
\BeamTrigSr[0]\ : maxv_lcell
-- Equation(s):
-- BeamTrigSr(0) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , \Beam_Trig~combout\, , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => \Beam_Trig~combout\,
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => BeamTrigSr(0));

-- Location: LC_X9_Y7_N1
\BeamTrigSr[1]\ : maxv_lcell
-- Equation(s):
-- BeamTrigSr(1) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , BeamTrigSr(0), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => BeamTrigSr(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => BeamTrigSr(1));

-- Location: LC_X9_Y7_N7
\BeamTrigSr[2]\ : maxv_lcell
-- Equation(s):
-- BeamTrigSr(2) = DFFEAS((((BeamTrigSr(1)))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \CLK119Mhz~combout\,
	datad => BeamTrigSr(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => BeamTrigSr(2));

-- Location: LC_X9_Y7_N6
BeamTrigLatch : maxv_lcell
-- Equation(s):
-- \BeamTrigLatch~regout\ = DFFEAS((!\u_BeamTrigCon|Sys_Trigger~regout\ & ((\BeamTrigLatch~regout\) # ((BeamTrigSr(1) & !BeamTrigSr(2))))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => \BeamTrigLatch~regout\,
	datab => BeamTrigSr(1),
	datac => BeamTrigSr(2),
	datad => \u_BeamTrigCon|Sys_Trigger~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BeamTrigLatch~regout\);

-- Location: LC_X9_Y7_N4
\u_BeamTrigCon|Cal_TrigSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_BeamTrigCon|Cal_TrigSr\(0) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \BeamTrigLatch~regout\, , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \BeamTrigLatch~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BeamTrigCon|Cal_TrigSr\(0));

-- Location: LC_X9_Y7_N5
\u_BeamTrigCon|Cal_TrigSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_BeamTrigCon|Cal_TrigSr\(1) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_BeamTrigCon|Cal_TrigSr\(0), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_BeamTrigCon|Cal_TrigSr\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BeamTrigCon|Cal_TrigSr\(1));

-- Location: LC_X9_Y7_N8
\u_BeamTrigCon|Cal_TrigSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_BeamTrigCon|Cal_TrigSr\(2) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_BeamTrigCon|Cal_TrigSr\(1), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_BeamTrigCon|Cal_TrigSr\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BeamTrigCon|Cal_TrigSr\(2));

-- Location: LC_X9_Y7_N9
\u_BeamTrigCon|Sys_Trigger\ : maxv_lcell
-- Equation(s):
-- \u_BeamTrigCon|Sys_Trigger~regout\ = DFFEAS((\u_BeamTrigCon|SW_TrigSr\(1) & (((\u_BeamTrigCon|Cal_TrigSr\(1) & !\u_BeamTrigCon|Cal_TrigSr\(2))) # (!\u_BeamTrigCon|SW_TrigSr\(2)))) # (!\u_BeamTrigCon|SW_TrigSr\(1) & (((\u_BeamTrigCon|Cal_TrigSr\(1) & 
-- !\u_BeamTrigCon|Cal_TrigSr\(2))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_BeamTrigCon|SW_TrigSr\(1),
	datab => \u_BeamTrigCon|SW_TrigSr\(2),
	datac => \u_BeamTrigCon|Cal_TrigSr\(1),
	datad => \u_BeamTrigCon|Cal_TrigSr\(2),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BeamTrigCon|Sys_Trigger~regout\);

-- Location: LC_X8_Y6_N7
\u_BPMReg|Trig2Beam_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|BeamTrigger~0\ = (!\u_BPMReg|Trig2Beam_Reg\(5) & (!\u_BPMReg|Trig2Beam_Reg\(6) & (!D1_Trig2Beam_Reg[7] & \u_BeamTrigCon|Sys_Trigger~regout\)))
-- \u_BPMReg|Trig2Beam_Reg\(7) = DFFEAS(\u_Beam_Seq|BeamTrigger~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, \u_QSPI|DataOut\(7), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|Trig2Beam_Reg\(5),
	datab => \u_BPMReg|Trig2Beam_Reg\(6),
	datac => \u_QSPI|DataOut\(7),
	datad => \u_BeamTrigCon|Sys_Trigger~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Beam_Seq|BeamTrigger~0\,
	regout => \u_BPMReg|Trig2Beam_Reg\(7));

-- Location: LC_X7_Y6_N8
\u_BPMReg|Trig2AMP_Reg[7]~2\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg[7]~2_combout\ = (!\u_QSPI|Address\(0) & (!\u_QSPI|Address\(1) & (!\u_QSPI|Address\(2) & \u_BPMReg|Trig2Beam_Reg[7]~2_combout\)))

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
	dataa => \u_QSPI|Address\(0),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|Address\(2),
	datad => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\);

-- Location: LC_X9_Y6_N4
\u_BPMReg|Trig2AMP_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg\(7) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, \u_QSPI|DataOut\(7), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(7),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2AMP_Reg\(7));

-- Location: LC_X8_Y6_N4
\u_QSPI|Address[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux83~2\ = (\u_QSPI|Address\(1) & ((\u_BPMReg|RF12RF2_Reg\(7)) # ((H1_Address[0])))) # (!\u_QSPI|Address\(1) & (((!H1_Address[0] & \u_BPMReg|Trig2AMP_Reg\(7)))))
-- \u_QSPI|Address\(0) = DFFEAS(\u_BPMReg|Mux83~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Address[0]~0\, \Qspi_DIn~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF12RF2_Reg\(7),
	datab => \u_QSPI|Address\(1),
	datac => \Qspi_DIn~combout\,
	datad => \u_BPMReg|Trig2AMP_Reg\(7),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux83~2\,
	regout => \u_QSPI|Address\(0));

-- Location: LC_X7_Y6_N5
\u_BPMReg|AMP2RF1_Reg[7]~2\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|AMP2RF1_Reg[7]~2_combout\ = (\u_QSPI|Address\(0) & (!\u_QSPI|Address\(1) & (!\u_QSPI|Address\(2) & \u_BPMReg|Trig2Beam_Reg[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(0),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|Address\(2),
	datad => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\);

-- Location: LC_X7_Y6_N9
\u_BPMReg|AMP2RF1_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|AMP2RF1_Reg\(7) = DFFEAS((((!\u_QSPI|DataOut\(7)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(7),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|AMP2RF1_Reg\(7));

-- Location: LC_X7_Y5_N8
\u_BPMReg|RFWidth_Reg[7]~0\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RFWidth_Reg[7]~0_combout\ = (!\u_QSPI|Address\(2) & (\u_QSPI|Address\(1) & (\u_BPMReg|Trig2Beam_Reg[7]~2_combout\ & \u_QSPI|Address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(1),
	datac => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|RFWidth_Reg[7]~0_combout\);

-- Location: LC_X7_Y6_N3
\u_BPMReg|RFWidth_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux83~3\ = (\u_QSPI|Address\(0) & ((\u_BPMReg|Mux83~2\ & (D1_RFWidth_Reg[7])) # (!\u_BPMReg|Mux83~2\ & ((!\u_BPMReg|AMP2RF1_Reg\(7)))))) # (!\u_QSPI|Address\(0) & (\u_BPMReg|Mux83~2\))
-- \u_BPMReg|RFWidth_Reg\(7) = DFFEAS(\u_BPMReg|Mux83~3\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, \u_QSPI|DataOut\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4e6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(0),
	datab => \u_BPMReg|Mux83~2\,
	datac => \u_QSPI|DataOut\(7),
	datad => \u_BPMReg|AMP2RF1_Reg\(7),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux83~3\,
	regout => \u_BPMReg|RFWidth_Reg\(7));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cal_Trig~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cal_Trig,
	combout => \Cal_Trig~combout\);

-- Location: LC_X12_Y6_N7
\CalTrigSr[0]\ : maxv_lcell
-- Equation(s):
-- CalTrigSr(0) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , \Cal_Trig~combout\, , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => \Cal_Trig~combout\,
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CalTrigSr(0));

-- Location: LC_X12_Y6_N4
\CalTrigSr[1]\ : maxv_lcell
-- Equation(s):
-- CalTrigSr(1) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , CalTrigSr(0), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => CalTrigSr(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CalTrigSr(1));

-- Location: LC_X12_Y6_N1
\CalTrigSr[2]\ : maxv_lcell
-- Equation(s):
-- CalTrigSr(2) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , CalTrigSr(1), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => CalTrigSr(1),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CalTrigSr(2));

-- Location: LC_X12_Y6_N8
CalTrigLatch : maxv_lcell
-- Equation(s):
-- \CalTrigLatch~regout\ = DFFEAS((!\u_CalTrigCon|Sys_Trigger~regout\ & ((\CalTrigLatch~regout\) # ((!CalTrigSr(2) & CalTrigSr(1))))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => \CalTrigLatch~regout\,
	datab => CalTrigSr(2),
	datac => CalTrigSr(1),
	datad => \u_CalTrigCon|Sys_Trigger~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CalTrigLatch~regout\);

-- Location: LC_X12_Y6_N5
\u_CalTrigCon|Cal_TrigSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_CalTrigCon|Cal_TrigSr\(0) = DFFEAS((((\CalTrigLatch~regout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \CalTrigLatch~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalTrigCon|Cal_TrigSr\(0));

-- Location: LC_X12_Y6_N9
\u_CalTrigCon|Cal_TrigSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_CalTrigCon|Cal_TrigSr\(1) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_CalTrigCon|Cal_TrigSr\(0), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_CalTrigCon|Cal_TrigSr\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalTrigCon|Cal_TrigSr\(1));

-- Location: LC_X12_Y6_N2
\u_CalTrigCon|Cal_TrigSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_CalTrigCon|Cal_TrigSr\(2) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_CalTrigCon|Cal_TrigSr\(1), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_CalTrigCon|Cal_TrigSr\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalTrigCon|Cal_TrigSr\(2));

-- Location: LC_X12_Y6_N6
\u_CalTrigCon|Sys_Trigger\ : maxv_lcell
-- Equation(s):
-- \u_CalTrigCon|Sys_Trigger~regout\ = DFFEAS((!\u_CalTrigCon|Cal_TrigSr\(2) & (((\u_CalTrigCon|Cal_TrigSr\(1))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_CalTrigCon|Cal_TrigSr\(2),
	datac => \u_CalTrigCon|Cal_TrigSr\(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalTrigCon|Sys_Trigger~regout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cal_Mode0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cal_Mode0,
	combout => \Cal_Mode0~combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cal_Mode1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cal_Mode1,
	combout => \Cal_Mode1~combout\);

-- Location: LC_X11_Y2_N6
\u_Cal_seq|Selector6~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector6~0_combout\ = (((\Cal_Mode0~combout\ & \Cal_Mode1~combout\)))

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
	datac => \Cal_Mode0~combout\,
	datad => \Cal_Mode1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector6~0_combout\);

-- Location: LC_X11_Y6_N0
\u_Cal_seq|Selector2~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector2~0_combout\ = (\u_CalTrigCon|Sys_Trigger~regout\ & (!\u_Cal_seq|NextState.Idle~regout\ & ((\Cal_Mode0~combout\) # (\Cal_Mode1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CalTrigCon|Sys_Trigger~regout\,
	datab => \Cal_Mode0~combout\,
	datac => \Cal_Mode1~combout\,
	datad => \u_Cal_seq|NextState.Idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector2~0_combout\);

-- Location: LC_X12_Y3_N7
\u_clkDet|SysClkCount[0]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|SysClkCount\(0) = DFFEAS((((!\u_clkDet|SysClkCount\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_clkDet|SysClkCount\(0),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|SysClkCount\(0));

-- Location: LC_X12_Y3_N9
\u_clkDet|SysClkCount[1]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|SysClkCount\(1) = DFFEAS(\u_clkDet|SysClkCount\(0) $ ((((\u_clkDet|SysClkCount\(1))))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_clkDet|SysClkCount\(0),
	datac => \u_clkDet|SysClkCount\(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|SysClkCount\(1));

-- Location: LC_X11_Y3_N1
\u_clkDet|SysClkCount[2]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|SysClkCount\(2) = DFFEAS(\u_clkDet|SysClkCount\(2) $ (((\u_clkDet|SysClkCount\(0) & ((\u_clkDet|SysClkCount\(1)))))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_clkDet|SysClkCount\(0),
	datab => \u_clkDet|SysClkCount\(2),
	datad => \u_clkDet|SysClkCount\(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|SysClkCount\(2));

-- Location: LC_X12_Y3_N3
\u_clkDet|SysClkCount[3]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|SysClkCount\(3) = DFFEAS(\u_clkDet|SysClkCount\(3) $ (((\u_clkDet|SysClkCount\(0) & (\u_clkDet|SysClkCount\(1) & \u_clkDet|SysClkCount\(2))))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_clkDet|SysClkCount\(3),
	datab => \u_clkDet|SysClkCount\(0),
	datac => \u_clkDet|SysClkCount\(1),
	datad => \u_clkDet|SysClkCount\(2),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|SysClkCount\(3));

-- Location: LC_X12_Y3_N4
\u_clkDet|ClkOk~1\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|ClkOk~1_combout\ = (\u_clkDet|SysClkCount\(3) & (!\u_clkDet|SysClkCount\(0) & (\u_clkDet|SysClkCount\(1) & !\u_clkDet|SysClkCount\(2))))

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
	dataa => \u_clkDet|SysClkCount\(3),
	datab => \u_clkDet|SysClkCount\(0),
	datac => \u_clkDet|SysClkCount\(1),
	datad => \u_clkDet|SysClkCount\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDet|ClkOk~1_combout\);

-- Location: LC_X11_Y3_N2
\u_clkDet|SysClkWindow~0\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|SysClkWindow~0_combout\ = ((\u_clkDet|SysClkCount\(3)) # ((\u_clkDet|SysClkCount\(0)) # (!\u_clkDet|SysClkCount\(1)))) # (!\u_clkDet|SysClkCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_clkDet|SysClkCount\(2),
	datab => \u_clkDet|SysClkCount\(3),
	datac => \u_clkDet|SysClkCount\(0),
	datad => \u_clkDet|SysClkCount\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDet|SysClkWindow~0_combout\);

-- Location: LC_X11_Y3_N4
\u_clkDet|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Equal2~0_combout\ = (!\u_clkDet|SysClkCount\(2) & (!\u_clkDet|SysClkCount\(3) & (!\u_clkDet|SysClkCount\(0) & !\u_clkDet|SysClkCount\(1))))

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
	dataa => \u_clkDet|SysClkCount\(2),
	datab => \u_clkDet|SysClkCount\(3),
	datac => \u_clkDet|SysClkCount\(0),
	datad => \u_clkDet|SysClkCount\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDet|Equal2~0_combout\);

-- Location: LC_X11_Y3_N8
\u_clkDet|SysClkWindow\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|SysClkWindow~regout\ = DFFEAS((\u_clkDet|Equal2~0_combout\) # ((\u_clkDet|SysClkWindow~regout\ & (\u_clkDet|SysClkWindow~0_combout\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_clkDet|SysClkWindow~regout\,
	datab => \u_clkDet|SysClkWindow~0_combout\,
	datac => \u_clkDet|Equal2~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|SysClkWindow~regout\);

-- Location: LC_X11_Y3_N9
\u_clkDet|Clk2DetectRst\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|PCIeClkw_p~0\ = (((F1_Clk2DetectRst) # (\Reset~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datac => \u_clkDet|Equal2~0_combout\,
	datad => \Reset~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDet|PCIeClkw_p~0\,
	regout => \u_clkDet|Clk2DetectRst~regout\);

-- Location: LC_X11_Y3_N7
\u_clkDet|Clk2DetWindowSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetWindowSr\(0) = DFFEAS((((\u_clkDet|SysClkWindow~regout\))), GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , , , , )

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
	clk => \CLK119Mhz~combout\,
	datad => \u_clkDet|SysClkWindow~regout\,
	aclr => \u_clkDet|PCIeClkw_p~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetWindowSr\(0));

-- Location: LC_X11_Y3_N0
\u_clkDet|Clk2DetWindowSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetWindowSr\(1) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , \u_clkDet|Clk2DetWindowSr\(0), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => \u_clkDet|Clk2DetWindowSr\(0),
	aclr => \u_clkDet|PCIeClkw_p~0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetWindowSr\(1));

-- Location: LC_X11_Y3_N5
\u_clkDet|Clk2DetWindowSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetWindowSr\(2) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , \u_clkDet|Clk2DetWindowSr\(1), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => \u_clkDet|Clk2DetWindowSr\(1),
	aclr => \u_clkDet|PCIeClkw_p~0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetWindowSr\(2));

-- Location: LC_X11_Y3_N3
\u_clkDet|Clk2DetWindow\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetWindow~regout\ = DFFEAS((\u_clkDet|Clk2DetWindowSr\(2) & (((\u_clkDet|Clk2DetWindowSr\(1) & \u_clkDet|Clk2DetWindow~regout\)))) # (!\u_clkDet|Clk2DetWindowSr\(2) & (((\u_clkDet|Clk2DetWindowSr\(1)) # (\u_clkDet|Clk2DetWindow~regout\)))), 
-- GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => \u_clkDet|Clk2DetWindowSr\(2),
	datac => \u_clkDet|Clk2DetWindowSr\(1),
	datad => \u_clkDet|Clk2DetWindow~regout\,
	aclr => \u_clkDet|PCIeClkw_p~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetWindow~regout\);

-- Location: LC_X12_Y3_N2
\u_clkDet|Clk2DetCount[0]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetCount\(0) = DFFEAS(\u_clkDet|Clk2DetCount\(0) $ (((\u_clkDet|Clk2DetWindow~regout\ & ((!\u_clkDet|ClkOk~0_combout\) # (!\u_clkDet|Clk2DetCount\(3)))))), GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a666",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => \u_clkDet|Clk2DetCount\(0),
	datab => \u_clkDet|Clk2DetWindow~regout\,
	datac => \u_clkDet|Clk2DetCount\(3),
	datad => \u_clkDet|ClkOk~0_combout\,
	aclr => \u_clkDet|PCIeClkw_p~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetCount\(0));

-- Location: LC_X12_Y3_N5
\u_clkDet|Clk2DetCount[3]~1\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetCount[3]~1_combout\ = ((\u_clkDet|Clk2DetWindow~regout\ & ((!\u_clkDet|ClkOk~0_combout\) # (!\u_clkDet|Clk2DetCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDet|Clk2DetCount\(3),
	datac => \u_clkDet|ClkOk~0_combout\,
	datad => \u_clkDet|Clk2DetWindow~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDet|Clk2DetCount[3]~1_combout\);

-- Location: LC_X12_Y3_N6
\u_clkDet|Clk2DetCount[1]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetCount\(1) = DFFEAS(\u_clkDet|Clk2DetCount\(1) $ (((\u_clkDet|Clk2DetCount\(0) & ((\u_clkDet|Clk2DetCount[3]~1_combout\))))), GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => \u_clkDet|Clk2DetCount\(1),
	datab => \u_clkDet|Clk2DetCount\(0),
	datad => \u_clkDet|Clk2DetCount[3]~1_combout\,
	aclr => \u_clkDet|PCIeClkw_p~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetCount\(1));

-- Location: LC_X12_Y3_N8
\u_clkDet|Clk2DetCount[2]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetCount\(2) = DFFEAS(\u_clkDet|Clk2DetCount\(2) $ (((\u_clkDet|Clk2DetCount\(1) & (\u_clkDet|Clk2DetCount\(0) & \u_clkDet|Clk2DetCount[3]~1_combout\)))), GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , , , , )

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
	clk => \CLK119Mhz~combout\,
	dataa => \u_clkDet|Clk2DetCount\(1),
	datab => \u_clkDet|Clk2DetCount\(0),
	datac => \u_clkDet|Clk2DetCount[3]~1_combout\,
	datad => \u_clkDet|Clk2DetCount\(2),
	aclr => \u_clkDet|PCIeClkw_p~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetCount\(2));

-- Location: LC_X12_Y3_N0
\u_clkDet|ClkOk~0\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|ClkOk~0_combout\ = ((\u_clkDet|Clk2DetCount\(0) & (\u_clkDet|Clk2DetCount\(1) & \u_clkDet|Clk2DetCount\(2))))

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
	datab => \u_clkDet|Clk2DetCount\(0),
	datac => \u_clkDet|Clk2DetCount\(1),
	datad => \u_clkDet|Clk2DetCount\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_clkDet|ClkOk~0_combout\);

-- Location: LC_X11_Y3_N6
\u_clkDet|Clk2DetCount[3]\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|Clk2DetCount\(3) = DFFEAS((\u_clkDet|Clk2DetCount\(3)) # ((\u_clkDet|Clk2DetWindow~regout\ & (\u_clkDet|ClkOk~0_combout\))), GLOBAL(\CLK119Mhz~combout\), !\u_clkDet|PCIeClkw_p~0\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => \u_clkDet|Clk2DetWindow~regout\,
	datab => \u_clkDet|Clk2DetCount\(3),
	datac => \u_clkDet|ClkOk~0_combout\,
	aclr => \u_clkDet|PCIeClkw_p~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|Clk2DetCount\(3));

-- Location: LC_X12_Y3_N1
\u_clkDet|ClkOk\ : maxv_lcell
-- Equation(s):
-- \u_clkDet|ClkOk~regout\ = DFFEAS((\u_clkDet|ClkOk~1_combout\ & (((\u_clkDet|Clk2DetCount\(3) & \u_clkDet|ClkOk~0_combout\)))) # (!\u_clkDet|ClkOk~1_combout\ & (\u_clkDet|ClkOk~regout\)), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_clkDet|ClkOk~regout\,
	datab => \u_clkDet|ClkOk~1_combout\,
	datac => \u_clkDet|Clk2DetCount\(3),
	datad => \u_clkDet|ClkOk~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_clkDet|ClkOk~regout\);

-- Location: LC_X11_Y4_N2
\u_Cal_seq|CalSeq_p~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|CalSeq_p~0_combout\ = (((\Reset~regout\) # (!\u_clkDet|ClkOk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Reset~regout\,
	datad => \u_clkDet|ClkOk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|CalSeq_p~0_combout\);

-- Location: LC_X11_Y2_N3
\u_Cal_seq|NextState.Wait_RF2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextState.Wait_RF2~regout\ = DFFEAS((\Cal_Mode0~combout\ & (((\Cal_Mode1~combout\ & \u_Cal_seq|NextState.Wait_Off1~regout\)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|Advance~regout\, , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \Cal_Mode0~combout\,
	datac => \Cal_Mode1~combout\,
	datad => \u_Cal_seq|NextState.Wait_Off1~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextState.Wait_RF2~regout\);

-- Location: LC_X11_Y6_N9
\u_Cal_seq|NextState.RF_On2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextState.RF_On2~regout\ = DFFEAS((((\u_Cal_seq|NextState.Wait_RF2~regout\))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|Advance~regout\, , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \u_Cal_seq|NextState.Wait_RF2~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextState.RF_On2~regout\);

-- Location: LC_X11_Y6_N7
\u_Cal_seq|NextState.Wait_RF1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[8]~3\ = (!\u_Cal_seq|NextState.RF_On1~regout\ & (!\u_Cal_seq|NextState.Wait_RF2~regout\ & (!E1_NextState.Wait_RF1 & !\u_Cal_seq|NextState.RF_On2~regout\)))
-- \u_Cal_seq|NextState.Wait_RF1~regout\ = DFFEAS(\u_Cal_seq|NextCount[8]~3\, GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|Advance~regout\, \u_Cal_seq|NextState.Wait_AMP~regout\, , , VCC)

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
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextState.RF_On1~regout\,
	datab => \u_Cal_seq|NextState.Wait_RF2~regout\,
	datac => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datad => \u_Cal_seq|NextState.RF_On2~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sload => VCC,
	ena => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[8]~3\,
	regout => \u_Cal_seq|NextState.Wait_RF1~regout\);

-- Location: LC_X11_Y6_N4
\u_Cal_seq|NextState.RF_On1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[6]~6\ = (\u_Cal_seq|NextState.Wait_Off1~regout\) # ((!\u_Cal_seq|NextState.Wait_AMP~regout\ & ((E1_NextState.RF_On1) # (\u_Cal_seq|NextState.RF_On2~regout\))))
-- \u_Cal_seq|NextState.RF_On1~regout\ = DFFEAS(\u_Cal_seq|NextCount[6]~6\, GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|Advance~regout\, \u_Cal_seq|NextState.Wait_RF1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dddc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datab => \u_Cal_seq|NextState.Wait_Off1~regout\,
	datac => \u_Cal_seq|NextState.Wait_RF1~regout\,
	datad => \u_Cal_seq|NextState.RF_On2~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sload => VCC,
	ena => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[6]~6\,
	regout => \u_Cal_seq|NextState.RF_On1~regout\);

-- Location: LC_X11_Y6_N1
\u_Cal_seq|NextState.Wait_Off1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[6]~1\ = (!\u_Cal_seq|Selector2~0_combout\ & (((!\u_Cal_seq|Advance~regout\) # (!E1_NextState.Wait_Off1)) # (!\u_Cal_seq|Selector6~0_combout\)))
-- \u_Cal_seq|NextState.Wait_Off1~regout\ = DFFEAS(\u_Cal_seq|NextCount[6]~1\, GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|Advance~regout\, \u_Cal_seq|NextState.RF_On1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1333",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Selector6~0_combout\,
	datab => \u_Cal_seq|Selector2~0_combout\,
	datac => \u_Cal_seq|NextState.RF_On1~regout\,
	datad => \u_Cal_seq|Advance~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sload => VCC,
	ena => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[6]~1\,
	regout => \u_Cal_seq|NextState.Wait_Off1~regout\);

-- Location: LC_X11_Y2_N9
\u_Cal_seq|NextState.Wait_Off2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector27~0\ = (E1_NextState.Wait_Off2) # ((!\u_Cal_seq|Advance~regout\ & ((\u_Cal_seq|NextState.RF_On1~regout\) # (\u_Cal_seq|NextState.RF_On2~regout\))))
-- \u_Cal_seq|NextState.Wait_Off2~regout\ = DFFEAS(\u_Cal_seq|Selector27~0\, GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|Advance~regout\, \u_Cal_seq|NextState.RF_On2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextState.RF_On1~regout\,
	datab => \u_Cal_seq|NextState.RF_On2~regout\,
	datac => \u_Cal_seq|NextState.RF_On2~regout\,
	datad => \u_Cal_seq|Advance~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sload => VCC,
	ena => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector27~0\,
	regout => \u_Cal_seq|NextState.Wait_Off2~regout\);

-- Location: LC_X11_Y2_N5
\u_Cal_seq|Selector0~4\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector0~4_combout\ = ((!\u_Cal_seq|NextState.Wait_Off2~regout\ & ((\u_Cal_seq|Selector6~0_combout\) # (!\u_Cal_seq|NextState.Wait_Off1~regout\)))) # (!\u_Cal_seq|Advance~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "31ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|NextState.Wait_Off1~regout\,
	datab => \u_Cal_seq|NextState.Wait_Off2~regout\,
	datac => \u_Cal_seq|Selector6~0_combout\,
	datad => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector0~4_combout\);

-- Location: LC_X11_Y2_N7
\u_Cal_seq|Equal3~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal3~1_combout\ = (((!\Cal_Mode0~combout\ & !\Cal_Mode1~combout\)))

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
	datac => \Cal_Mode0~combout\,
	datad => \Cal_Mode1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal3~1_combout\);

-- Location: LC_X11_Y4_N4
\u_Cal_seq|NextState.Idle\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextState.Idle~regout\ = DFFEAS((\u_Cal_seq|Selector0~4_combout\ & ((\u_Cal_seq|NextState.Idle~regout\) # ((\u_CalTrigCon|Sys_Trigger~regout\ & !\u_Cal_seq|Equal3~1_combout\)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_CalTrigCon|Sys_Trigger~regout\,
	datab => \u_Cal_seq|Selector0~4_combout\,
	datac => \u_Cal_seq|Equal3~1_combout\,
	datad => \u_Cal_seq|NextState.Idle~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextState.Idle~regout\);

-- Location: LC_X11_Y2_N0
\u_Cal_seq|Selector9~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector9~0_combout\ = (((\u_Cal_seq|NextState.Idle~regout\ & !\u_Cal_seq|NextState.Wait_Off1~regout\)))

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
	datac => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_Cal_seq|NextState.Wait_Off1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector9~0_combout\);

-- Location: LC_X11_Y4_N8
\u_Cal_seq|LdCntr\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|LdCntr~regout\ = DFFEAS(((\u_Cal_seq|Advance~regout\ & (\u_Cal_seq|Selector9~0_combout\ & !\u_Cal_seq|NextState.Wait_Off2~regout\))) # (!\u_Cal_seq|NextCount[6]~1\), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Advance~regout\,
	datab => \u_Cal_seq|Selector9~0_combout\,
	datac => \u_Cal_seq|NextState.Wait_Off2~regout\,
	datad => \u_Cal_seq|NextCount[6]~1\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|LdCntr~regout\);

-- Location: LC_X10_Y6_N6
\u_BPMReg|RF12RF2_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF12RF2_Reg\(0) = DFFEAS((((!\u_QSPI|DataOut\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(0),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF12RF2_Reg\(0));

-- Location: LC_X8_Y5_N3
\u_BPMReg|RFWidth_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RFWidth_Reg\(0) = DFFEAS((((!\u_QSPI|DataOut\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(0),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RFWidth_Reg\(0));

-- Location: LC_X7_Y6_N7
\u_BPMReg|AMP2RF1_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|AMP2RF1_Reg\(0) = DFFEAS((((!\u_QSPI|DataOut\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(0),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|AMP2RF1_Reg\(0));

-- Location: LC_X8_Y5_N0
\u_Cal_seq|Selector25~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector25~0_combout\ = (\u_Cal_seq|NextCount[6]~0_combout\ & (!\u_BPMReg|RFWidth_Reg\(0) & ((!\u_Cal_seq|NextCount[6]~6\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & (((\u_Cal_seq|NextCount[6]~6\) # (!\u_BPMReg|AMP2RF1_Reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f53",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|RFWidth_Reg\(0),
	datab => \u_BPMReg|AMP2RF1_Reg\(0),
	datac => \u_Cal_seq|NextCount[6]~0_combout\,
	datad => \u_Cal_seq|NextCount[6]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector25~0_combout\);

-- Location: LC_X8_Y5_N7
\u_BPMReg|OffTime_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg\(0) = DFFEAS((((!\u_QSPI|DataOut\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(0),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|OffTime_Reg\(0));

-- Location: LC_X11_Y6_N2
\u_Cal_seq|NextCount[6]~7\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[6]~7_combout\ = ((\u_Cal_seq|Advance~regout\ & ((\u_Cal_seq|NextState.Wait_AMP~regout\) # (!\u_Cal_seq|NextCount[8]~3\)))) # (!\u_Cal_seq|NextCount[6]~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|NextCount[8]~3\,
	datab => \u_Cal_seq|Advance~regout\,
	datac => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datad => \u_Cal_seq|NextCount[6]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[6]~7_combout\);

-- Location: LC_X10_Y6_N2
\u_Cal_seq|NextCount[0]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(0) = DFFEAS((\u_Cal_seq|Selector25~0_combout\ & (((!\u_Cal_seq|NextCount[6]~6\)) # (!\u_BPMReg|RF12RF2_Reg\(0)))) # (!\u_Cal_seq|Selector25~0_combout\ & (((!\u_BPMReg|OffTime_Reg\(0) & \u_Cal_seq|NextCount[6]~6\)))), 
-- GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_BPMReg|RF12RF2_Reg\(0),
	datab => \u_Cal_seq|Selector25~0_combout\,
	datac => \u_BPMReg|OffTime_Reg\(0),
	datad => \u_Cal_seq|NextCount[6]~6\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(0));

-- Location: LC_X9_Y6_N5
\u_BPMReg|Trig2AMP_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg\(6) = DFFEAS((((\u_QSPI|DataOut\(6)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(6),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2AMP_Reg\(6));

-- Location: LC_X9_Y5_N8
\u_BPMReg|AMP2RF1_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector18~0\ = (\u_QSPI|Address\(0) & ((\u_QSPI|Address\(1)) # ((D1_AMP2RF1_Reg[6])))) # (!\u_QSPI|Address\(0) & (!\u_QSPI|Address\(1) & ((\u_BPMReg|Trig2AMP_Reg\(6)))))
-- \u_BPMReg|AMP2RF1_Reg\(6) = DFFEAS(\u_QSPI|Selector18~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, \u_QSPI|DataOut\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(0),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(6),
	datad => \u_BPMReg|Trig2AMP_Reg\(6),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector18~0\,
	regout => \u_BPMReg|AMP2RF1_Reg\(6));

-- Location: LC_X9_Y5_N5
\u_BPMReg|RFWidth_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector19~0\ = (\u_Cal_seq|NextCount[6]~0_combout\ & (((D1_RFWidth_Reg[6] & !\u_Cal_seq|NextCount[6]~6\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_BPMReg|AMP2RF1_Reg\(6)) # ((\u_Cal_seq|NextCount[6]~6\))))
-- \u_BPMReg|RFWidth_Reg\(6) = DFFEAS(\u_Cal_seq|Selector19~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, \u_QSPI|DataOut\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33e2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|AMP2RF1_Reg\(6),
	datab => \u_Cal_seq|NextCount[6]~0_combout\,
	datac => \u_QSPI|DataOut\(6),
	datad => \u_Cal_seq|NextCount[6]~6\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector19~0\,
	regout => \u_BPMReg|RFWidth_Reg\(6));

-- Location: LC_X9_Y4_N8
\u_BPMReg|RF12RF2_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector18~1\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Selector18~0\ & (\u_BPMReg|RFWidth_Reg\(6))) # (!\u_QSPI|Selector18~0\ & ((D1_RF12RF2_Reg[6]))))) # (!\u_QSPI|Address\(1) & (((\u_QSPI|Selector18~0\))))
-- \u_BPMReg|RF12RF2_Reg\(6) = DFFEAS(\u_QSPI|Selector18~1\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, \u_QSPI|DataOut\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|RFWidth_Reg\(6),
	datac => \u_QSPI|DataOut\(6),
	datad => \u_QSPI|Selector18~0\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector18~1\,
	regout => \u_BPMReg|RF12RF2_Reg\(6));

-- Location: LC_X10_Y4_N5
\u_Cal_seq|NextCount[6]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(6) = DFFEAS((\u_Cal_seq|NextCount[6]~6\ & ((\u_Cal_seq|Selector19~0\ & ((\u_BPMReg|RF12RF2_Reg\(6)))) # (!\u_Cal_seq|Selector19~0\ & (\u_BPMReg|OffTime_Reg\(6))))) # (!\u_Cal_seq|NextCount[6]~6\ & (((\u_Cal_seq|Selector19~0\)))), 
-- GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextCount[6]~6\,
	datab => \u_BPMReg|OffTime_Reg\(6),
	datac => \u_Cal_seq|Selector19~0\,
	datad => \u_BPMReg|RF12RF2_Reg\(6),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(6));

-- Location: LC_X9_Y4_N3
\u_BPMReg|RF12RF2_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF12RF2_Reg\(5) = DFFEAS((((!\u_QSPI|DataOut\(5)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(5),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF12RF2_Reg\(5));

-- Location: LC_X9_Y5_N6
\u_BPMReg|RFWidth_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector20~0\ = (\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|NextCount[6]~6\ & (!\u_BPMReg|OffTime_Reg\(5))) # (!\u_Cal_seq|NextCount[6]~6\ & ((D1_RFWidth_Reg[5]))))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & 
-- (((\u_Cal_seq|NextCount[6]~6\))))
-- \u_BPMReg|RFWidth_Reg\(5) = DFFEAS(\u_Cal_seq|Selector20~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, \u_QSPI|DataOut\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|OffTime_Reg\(5),
	datab => \u_Cal_seq|NextCount[6]~0_combout\,
	datac => \u_QSPI|DataOut\(5),
	datad => \u_Cal_seq|NextCount[6]~6\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector20~0\,
	regout => \u_BPMReg|RFWidth_Reg\(5));

-- Location: LC_X9_Y6_N2
\u_BPMReg|Trig2AMP_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg\(5) = DFFEAS((((!\u_QSPI|DataOut\(5)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(5),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2AMP_Reg\(5));

-- Location: LC_X9_Y4_N0
\u_QSPI|Selector19~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector19~0_combout\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))) # (!\u_BPMReg|RF12RF2_Reg\(5)))) # (!\u_QSPI|Address\(1) & (((!\u_BPMReg|Trig2AMP_Reg\(5) & !\u_QSPI|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc47",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|RF12RF2_Reg\(5),
	datab => \u_QSPI|Address\(1),
	datac => \u_BPMReg|Trig2AMP_Reg\(5),
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector19~0_combout\);

-- Location: LC_X9_Y5_N3
\u_BPMReg|AMP2RF1_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector19~1\ = (\u_QSPI|Address\(0) & ((\u_QSPI|Selector19~0_combout\ & (\u_BPMReg|RFWidth_Reg\(5))) # (!\u_QSPI|Selector19~0_combout\ & ((D1_AMP2RF1_Reg[5]))))) # (!\u_QSPI|Address\(0) & (((\u_QSPI|Selector19~0_combout\))))
-- \u_BPMReg|AMP2RF1_Reg\(5) = DFFEAS(\u_QSPI|Selector19~1\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, \u_QSPI|DataOut\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(0),
	datab => \u_BPMReg|RFWidth_Reg\(5),
	datac => \u_QSPI|DataOut\(5),
	datad => \u_QSPI|Selector19~0_combout\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector19~1\,
	regout => \u_BPMReg|AMP2RF1_Reg\(5));

-- Location: LC_X10_Y4_N9
\u_Cal_seq|NextCount[5]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(5) = DFFEAS((\u_Cal_seq|NextCount[6]~0_combout\ & (((\u_Cal_seq|Selector20~0\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|Selector20~0\ & (!\u_BPMReg|RF12RF2_Reg\(5))) # (!\u_Cal_seq|Selector20~0\ & 
-- ((\u_BPMReg|AMP2RF1_Reg\(5)))))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextCount[6]~0_combout\,
	datab => \u_BPMReg|RF12RF2_Reg\(5),
	datac => \u_Cal_seq|Selector20~0\,
	datad => \u_BPMReg|AMP2RF1_Reg\(5),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(5));

-- Location: LC_X8_Y5_N5
\u_BPMReg|OffTime_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector18~0\ = (\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|NextCount[6]~6\ & ((D1_OffTime_Reg[7]))) # (!\u_Cal_seq|NextCount[6]~6\ & (\u_BPMReg|RFWidth_Reg\(7))))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & 
-- (((\u_Cal_seq|NextCount[6]~6\))))
-- \u_BPMReg|OffTime_Reg\(7) = DFFEAS(\u_Cal_seq|Selector18~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, \u_QSPI|DataOut\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RFWidth_Reg\(7),
	datab => \u_Cal_seq|NextCount[6]~0_combout\,
	datac => \u_QSPI|DataOut\(7),
	datad => \u_Cal_seq|NextCount[6]~6\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector18~0\,
	regout => \u_BPMReg|OffTime_Reg\(7));

-- Location: LC_X10_Y4_N4
\u_Cal_seq|NextCount[7]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(7) = DFFEAS((\u_Cal_seq|NextCount[6]~0_combout\ & (((\u_Cal_seq|Selector18~0\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|Selector18~0\ & ((\u_BPMReg|RF12RF2_Reg\(7)))) # (!\u_Cal_seq|Selector18~0\ & 
-- (!\u_BPMReg|AMP2RF1_Reg\(7))))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1a1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextCount[6]~0_combout\,
	datab => \u_BPMReg|AMP2RF1_Reg\(7),
	datac => \u_Cal_seq|Selector18~0\,
	datad => \u_BPMReg|RF12RF2_Reg\(7),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(7));

-- Location: LC_X9_Y6_N6
\u_BPMReg|Trig2AMP_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~2\ = (\u_QSPI|Address\(0) & (((\u_QSPI|Address\(1))))) # (!\u_QSPI|Address\(0) & ((\u_QSPI|Address\(1) & (!\u_BPMReg|RF12RF2_Reg\(0))) # (!\u_QSPI|Address\(1) & ((D1_Trig2AMP_Reg[0])))))
-- \u_BPMReg|Trig2AMP_Reg\(0) = DFFEAS(\u_BPMReg|Mux90~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, \u_QSPI|DataOut\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF12RF2_Reg\(0),
	datab => \u_QSPI|Address\(0),
	datac => \u_QSPI|DataOut\(0),
	datad => \u_QSPI|Address\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~2\,
	regout => \u_BPMReg|Trig2AMP_Reg\(0));

-- Location: LC_X11_Y6_N6
\u_Cal_seq|NextCount[8]~4\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[8]~4_combout\ = (!\u_Cal_seq|NextState.Wait_AMP~regout\ & (((!\u_Cal_seq|NextState.Wait_Off1~regout\)) # (!\u_Cal_seq|Advance~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1155",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datab => \u_Cal_seq|Advance~regout\,
	datad => \u_Cal_seq|NextState.Wait_Off1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[8]~4_combout\);

-- Location: LC_X11_Y6_N5
\u_Cal_seq|NextCount[8]~2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[8]~2_combout\ = (\u_Cal_seq|NextState.Wait_Off1~regout\ & (((!\Cal_Mode1~combout\) # (!\Cal_Mode0~combout\)))) # (!\u_Cal_seq|NextState.Wait_Off1~regout\ & (!\u_Cal_seq|Advance~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f55",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|Advance~regout\,
	datab => \Cal_Mode0~combout\,
	datac => \Cal_Mode1~combout\,
	datad => \u_Cal_seq|NextState.Wait_Off1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[8]~2_combout\);

-- Location: LC_X11_Y4_N7
\u_Cal_seq|NextCount[8]~5\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[8]~5_combout\ = (\u_Cal_seq|Selector2~0_combout\) # ((!\u_Cal_seq|NextCount[8]~2_combout\ & ((!\u_Cal_seq|NextCount[8]~3\) # (!\u_Cal_seq|NextCount[8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|Selector2~0_combout\,
	datab => \u_Cal_seq|NextCount[8]~4_combout\,
	datac => \u_Cal_seq|NextCount[8]~2_combout\,
	datad => \u_Cal_seq|NextCount[8]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[8]~5_combout\);

-- Location: LC_X10_Y4_N2
\u_Cal_seq|NextCount[8]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(8) = DFFEAS(((!\u_Cal_seq|NextState.Idle~regout\ & ((\u_BPMReg|Trig2AMP_Reg\(0))))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

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
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_BPMReg|Trig2AMP_Reg\(0),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(8));

-- Location: LC_X10_Y4_N1
\u_Cal_seq|Advance~3\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Advance~3_combout\ = (!\u_Cal_seq|NextCount\(6) & (!\u_Cal_seq|NextCount\(5) & (!\u_Cal_seq|NextCount\(7) & !\u_Cal_seq|NextCount\(8))))

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
	dataa => \u_Cal_seq|NextCount\(6),
	datab => \u_Cal_seq|NextCount\(5),
	datac => \u_Cal_seq|NextCount\(7),
	datad => \u_Cal_seq|NextCount\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Advance~3_combout\);

-- Location: LC_X7_Y6_N2
\u_BPMReg|AMP2RF1_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|AMP2RF1_Reg\(1) = DFFEAS((((!\u_QSPI|DataOut\(1)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(1),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|AMP2RF1_Reg\(1));

-- Location: LC_X8_Y5_N4
\u_BPMReg|RFWidth_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RFWidth_Reg\(1) = DFFEAS((((!\u_QSPI|DataOut\(1)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(1),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RFWidth_Reg\(1));

-- Location: LC_X8_Y5_N9
\u_BPMReg|OffTime_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector24~0\ = (\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|NextCount[6]~6\ & ((D1_OffTime_Reg[1]))) # (!\u_Cal_seq|NextCount[6]~6\ & (!\u_BPMReg|RFWidth_Reg\(1))))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & 
-- (((\u_Cal_seq|NextCount[6]~6\))))
-- \u_BPMReg|OffTime_Reg\(1) = DFFEAS(\u_Cal_seq|Selector24~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, \u_QSPI|DataOut\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f344",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RFWidth_Reg\(1),
	datab => \u_Cal_seq|NextCount[6]~0_combout\,
	datac => \u_QSPI|DataOut\(1),
	datad => \u_Cal_seq|NextCount[6]~6\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector24~0\,
	regout => \u_BPMReg|OffTime_Reg\(1));

-- Location: LC_X9_Y6_N1
\u_BPMReg|Trig2AMP_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg\(1) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, \u_QSPI|DataOut\(1), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2AMP_Reg\(1));

-- Location: LC_X9_Y6_N3
\u_BPMReg|RF12RF2_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~2\ = (\u_QSPI|Address\(1) & (((D1_RF12RF2_Reg[1]) # (\u_QSPI|Address\(0))))) # (!\u_QSPI|Address\(1) & (\u_BPMReg|Trig2AMP_Reg\(1) & ((!\u_QSPI|Address\(0)))))
-- \u_BPMReg|RF12RF2_Reg\(1) = DFFEAS(\u_QSPI|Selector23~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, \u_QSPI|DataOut\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|Trig2AMP_Reg\(1),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(1),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~2\,
	regout => \u_BPMReg|RF12RF2_Reg\(1));

-- Location: LC_X10_Y6_N0
\u_Cal_seq|NextCount[1]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(1) = DFFEAS((\u_Cal_seq|NextCount[6]~0_combout\ & (((\u_Cal_seq|Selector24~0\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|Selector24~0\ & ((\u_BPMReg|RF12RF2_Reg\(1)))) # (!\u_Cal_seq|Selector24~0\ & 
-- (!\u_BPMReg|AMP2RF1_Reg\(1))))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1a1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextCount[6]~0_combout\,
	datab => \u_BPMReg|AMP2RF1_Reg\(1),
	datac => \u_Cal_seq|Selector24~0\,
	datad => \u_BPMReg|RF12RF2_Reg\(1),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(1));

-- Location: LC_X9_Y6_N7
\u_BPMReg|Trig2AMP_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg\(2) = DFFEAS((((!\u_QSPI|DataOut\(2)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(2),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2AMP_Reg\(2));

-- Location: LC_X9_Y4_N4
\u_BPMReg|RF12RF2_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~2\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Address\(0)) # ((D1_RF12RF2_Reg[2])))) # (!\u_QSPI|Address\(1) & (!\u_QSPI|Address\(0) & ((!\u_BPMReg|Trig2AMP_Reg\(2)))))
-- \u_BPMReg|RF12RF2_Reg\(2) = DFFEAS(\u_QSPI|Selector22~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, \u_QSPI|DataOut\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8b9",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_QSPI|Address\(0),
	datac => \u_QSPI|DataOut\(2),
	datad => \u_BPMReg|Trig2AMP_Reg\(2),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~2\,
	regout => \u_BPMReg|RF12RF2_Reg\(2));

-- Location: LC_X7_Y5_N5
\u_BPMReg|OffTime_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg\(2) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, \u_QSPI|DataOut\(2), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(2),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|OffTime_Reg\(2));

-- Location: LC_X7_Y6_N0
\u_BPMReg|RFWidth_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RFWidth_Reg\(2) = DFFEAS((((!\u_QSPI|DataOut\(2)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(2),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RFWidth_Reg\(2));

-- Location: LC_X7_Y6_N4
\u_BPMReg|AMP2RF1_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|AMP2RF1_Reg\(2) = DFFEAS((((!\u_QSPI|DataOut\(2)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(2),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|AMP2RF1_Reg\(2));

-- Location: LC_X8_Y6_N5
\u_Cal_seq|Selector23~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector23~0_combout\ = (\u_Cal_seq|NextCount[6]~0_combout\ & (!\u_BPMReg|RFWidth_Reg\(2) & ((!\u_Cal_seq|NextCount[6]~6\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & (((\u_Cal_seq|NextCount[6]~6\) # (!\u_BPMReg|AMP2RF1_Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f53",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|RFWidth_Reg\(2),
	datab => \u_BPMReg|AMP2RF1_Reg\(2),
	datac => \u_Cal_seq|NextCount[6]~0_combout\,
	datad => \u_Cal_seq|NextCount[6]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector23~0_combout\);

-- Location: LC_X10_Y4_N6
\u_Cal_seq|NextCount[2]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(2) = DFFEAS((\u_Cal_seq|NextCount[6]~6\ & ((\u_Cal_seq|Selector23~0_combout\ & (\u_BPMReg|RF12RF2_Reg\(2))) # (!\u_Cal_seq|Selector23~0_combout\ & ((\u_BPMReg|OffTime_Reg\(2)))))) # (!\u_Cal_seq|NextCount[6]~6\ & 
-- (((\u_Cal_seq|Selector23~0_combout\)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_BPMReg|RF12RF2_Reg\(2),
	datab => \u_BPMReg|OffTime_Reg\(2),
	datac => \u_Cal_seq|NextCount[6]~6\,
	datad => \u_Cal_seq|Selector23~0_combout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(2));

-- Location: LC_X10_Y6_N8
\u_BPMReg|RF12RF2_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF12RF2_Reg\(3) = DFFEAS((((!\u_QSPI|DataOut\(3)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(3),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF12RF2_Reg\(3));

-- Location: LC_X9_Y5_N1
\u_BPMReg|AMP2RF1_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|AMP2RF1_Reg\(3) = DFFEAS((((!\u_QSPI|DataOut\(3)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(3),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|AMP2RF1_Reg\(3));

-- Location: LC_X9_Y6_N9
\u_BPMReg|Trig2AMP_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg\(3) = DFFEAS((((!\u_QSPI|DataOut\(3)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(3),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2AMP_Reg\(3));

-- Location: LC_X9_Y5_N7
\u_QSPI|Selector21~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~0_combout\ = (\u_QSPI|Address\(0) & (((\u_QSPI|Address\(1)) # (!\u_BPMReg|AMP2RF1_Reg\(3))))) # (!\u_QSPI|Address\(0) & (!\u_BPMReg|Trig2AMP_Reg\(3) & ((!\u_QSPI|Address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Trig2AMP_Reg\(3),
	datab => \u_BPMReg|AMP2RF1_Reg\(3),
	datac => \u_QSPI|Address\(0),
	datad => \u_QSPI|Address\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~0_combout\);

-- Location: LC_X9_Y5_N4
\u_BPMReg|RFWidth_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~1\ = (\u_QSPI|Selector21~0_combout\ & (((D1_RFWidth_Reg[3]) # (!\u_QSPI|Address\(1))))) # (!\u_QSPI|Selector21~0_combout\ & (!\u_BPMReg|RF12RF2_Reg\(3) & ((\u_QSPI|Address\(1)))))
-- \u_BPMReg|RFWidth_Reg\(3) = DFFEAS(\u_QSPI|Selector21~1\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, \u_QSPI|DataOut\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF12RF2_Reg\(3),
	datab => \u_QSPI|Selector21~0_combout\,
	datac => \u_QSPI|DataOut\(3),
	datad => \u_QSPI|Address\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~1\,
	regout => \u_BPMReg|RFWidth_Reg\(3));

-- Location: LC_X8_Y5_N1
\u_BPMReg|OffTime_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg\(3) = DFFEAS((((!\u_QSPI|DataOut\(3)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(3),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|OffTime_Reg\(3));

-- Location: LC_X9_Y5_N0
\u_Cal_seq|Selector22~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector22~0_combout\ = (\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|NextCount[6]~6\ & ((!\u_BPMReg|OffTime_Reg\(3)))) # (!\u_Cal_seq|NextCount[6]~6\ & (\u_BPMReg|RFWidth_Reg\(3))))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & 
-- (((\u_Cal_seq|NextCount[6]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|RFWidth_Reg\(3),
	datab => \u_Cal_seq|NextCount[6]~0_combout\,
	datac => \u_BPMReg|OffTime_Reg\(3),
	datad => \u_Cal_seq|NextCount[6]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector22~0_combout\);

-- Location: LC_X10_Y6_N5
\u_Cal_seq|NextCount[3]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(3) = DFFEAS((\u_Cal_seq|NextCount[6]~0_combout\ & (((\u_Cal_seq|Selector22~0_combout\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_Cal_seq|Selector22~0_combout\ & (!\u_BPMReg|RF12RF2_Reg\(3))) # 
-- (!\u_Cal_seq|Selector22~0_combout\ & ((!\u_BPMReg|AMP2RF1_Reg\(3)))))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb05",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextCount[6]~0_combout\,
	datab => \u_BPMReg|RF12RF2_Reg\(3),
	datac => \u_BPMReg|AMP2RF1_Reg\(3),
	datad => \u_Cal_seq|Selector22~0_combout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(3));

-- Location: LC_X9_Y4_N2
\u_BPMReg|RF12RF2_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF12RF2_Reg\(4) = DFFEAS((((!\u_QSPI|DataOut\(4)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(4),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF12RF2_Reg\(4));

-- Location: LC_X8_Y5_N2
\u_BPMReg|OffTime_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg\(4) = DFFEAS((((!\u_QSPI|DataOut\(4)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|OffTime_Reg[7]~3_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(4),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|OffTime_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|OffTime_Reg\(4));

-- Location: LC_X9_Y6_N8
\u_BPMReg|Trig2AMP_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2AMP_Reg\(4) = DFFEAS((((!\u_QSPI|DataOut\(4)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2AMP_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(4),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|Trig2AMP_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2AMP_Reg\(4));

-- Location: LC_X9_Y4_N1
\u_QSPI|Selector20~2\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~2_combout\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))) # (!\u_BPMReg|RF12RF2_Reg\(4)))) # (!\u_QSPI|Address\(1) & (((!\u_BPMReg|Trig2AMP_Reg\(4) & !\u_QSPI|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa27",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|RF12RF2_Reg\(4),
	datac => \u_BPMReg|Trig2AMP_Reg\(4),
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~2_combout\);

-- Location: LC_X9_Y5_N2
\u_BPMReg|RFWidth_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector21~0\ = (\u_Cal_seq|NextCount[6]~0_combout\ & (((D1_RFWidth_Reg[4] & !\u_Cal_seq|NextCount[6]~6\)))) # (!\u_Cal_seq|NextCount[6]~0_combout\ & ((\u_BPMReg|AMP2RF1_Reg\(4)) # ((\u_Cal_seq|NextCount[6]~6\))))
-- \u_BPMReg|RFWidth_Reg\(4) = DFFEAS(\u_Cal_seq|Selector21~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RFWidth_Reg[7]~0_combout\, \u_QSPI|DataOut\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33e2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|AMP2RF1_Reg\(4),
	datab => \u_Cal_seq|NextCount[6]~0_combout\,
	datac => \u_QSPI|DataOut\(4),
	datad => \u_Cal_seq|NextCount[6]~6\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RFWidth_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector21~0\,
	regout => \u_BPMReg|RFWidth_Reg\(4));

-- Location: LC_X9_Y5_N9
\u_BPMReg|AMP2RF1_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~3\ = (\u_QSPI|Address\(0) & ((\u_QSPI|Selector20~2_combout\ & ((\u_BPMReg|RFWidth_Reg\(4)))) # (!\u_QSPI|Selector20~2_combout\ & (D1_AMP2RF1_Reg[4])))) # (!\u_QSPI|Address\(0) & (\u_QSPI|Selector20~2_combout\))
-- \u_BPMReg|AMP2RF1_Reg\(4) = DFFEAS(\u_QSPI|Selector20~3\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|AMP2RF1_Reg[7]~2_combout\, \u_QSPI|DataOut\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(0),
	datab => \u_QSPI|Selector20~2_combout\,
	datac => \u_QSPI|DataOut\(4),
	datad => \u_BPMReg|RFWidth_Reg\(4),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|AMP2RF1_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~3\,
	regout => \u_BPMReg|AMP2RF1_Reg\(4));

-- Location: LC_X10_Y6_N1
\u_Cal_seq|NextCount[4]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(4) = DFFEAS((\u_Cal_seq|Selector21~0\ & (((!\u_Cal_seq|NextCount[6]~6\)) # (!\u_BPMReg|RF12RF2_Reg\(4)))) # (!\u_Cal_seq|Selector21~0\ & (((!\u_BPMReg|OffTime_Reg\(4) & \u_Cal_seq|NextCount[6]~6\)))), GLOBAL(\ClkDivIn~combout\), 
-- !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[6]~7_combout\, , , !\u_Cal_seq|NextState.Idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_BPMReg|RF12RF2_Reg\(4),
	datab => \u_BPMReg|OffTime_Reg\(4),
	datac => \u_Cal_seq|Selector21~0\,
	datad => \u_Cal_seq|NextCount[6]~6\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sclr => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	ena => \u_Cal_seq|NextCount[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(4));

-- Location: LC_X10_Y2_N9
\u_Cal_seq|Advance~4\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Advance~4_combout\ = (!\u_Cal_seq|NextCount\(1) & (!\u_Cal_seq|NextCount\(2) & (!\u_Cal_seq|NextCount\(3) & !\u_Cal_seq|NextCount\(4))))

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
	dataa => \u_Cal_seq|NextCount\(1),
	datab => \u_Cal_seq|NextCount\(2),
	datac => \u_Cal_seq|NextCount\(3),
	datad => \u_Cal_seq|NextCount\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Advance~4_combout\);

-- Location: LC_X9_Y4_N5
\u_Cal_seq|NextCount[10]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(10) = DFFEAS((((!\u_Cal_seq|NextState.Idle~regout\ & !\u_BPMReg|Trig2AMP_Reg\(2)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datac => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_BPMReg|Trig2AMP_Reg\(2),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(10));

-- Location: LC_X9_Y4_N9
\u_Cal_seq|NextCount[11]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(11) = DFFEAS((((!\u_Cal_seq|NextState.Idle~regout\ & !\u_BPMReg|Trig2AMP_Reg\(3)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datac => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_BPMReg|Trig2AMP_Reg\(3),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(11));

-- Location: LC_X9_Y4_N6
\u_Cal_seq|NextCount[12]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(12) = DFFEAS(((!\u_BPMReg|Trig2AMP_Reg\(4) & (!\u_Cal_seq|NextState.Idle~regout\))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_BPMReg|Trig2AMP_Reg\(4),
	datac => \u_Cal_seq|NextState.Idle~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(12));

-- Location: LC_X11_Y4_N1
\u_Cal_seq|NextCount[9]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(9) = DFFEAS((((!\u_Cal_seq|NextState.Idle~regout\ & \u_BPMReg|Trig2AMP_Reg\(1)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

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
	clk => \ClkDivIn~combout\,
	datac => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_BPMReg|Trig2AMP_Reg\(1),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(9));

-- Location: LC_X9_Y4_N7
\u_Cal_seq|Advance~2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Advance~2_combout\ = (!\u_Cal_seq|NextCount\(10) & (!\u_Cal_seq|NextCount\(11) & (!\u_Cal_seq|NextCount\(12) & !\u_Cal_seq|NextCount\(9))))

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
	dataa => \u_Cal_seq|NextCount\(10),
	datab => \u_Cal_seq|NextCount\(11),
	datac => \u_Cal_seq|NextCount\(12),
	datad => \u_Cal_seq|NextCount\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Advance~2_combout\);

-- Location: LC_X11_Y4_N5
\u_Cal_seq|NextCount[15]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(15) = DFFEAS((((!\u_Cal_seq|NextState.Idle~regout\ & \u_BPMReg|Trig2AMP_Reg\(7)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

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
	clk => \ClkDivIn~combout\,
	datac => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_BPMReg|Trig2AMP_Reg\(7),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(15));

-- Location: LC_X10_Y2_N0
\u_Cal_seq|NextCount[14]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(14) = DFFEAS((!\u_Cal_seq|NextState.Idle~regout\ & (((\u_BPMReg|Trig2AMP_Reg\(6))))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextState.Idle~regout\,
	datac => \u_BPMReg|Trig2AMP_Reg\(6),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(14));

-- Location: LC_X11_Y4_N0
\u_Cal_seq|NextCount[13]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount\(13) = DFFEAS((!\u_Cal_seq|NextState.Idle~regout\ & (((!\u_BPMReg|Trig2AMP_Reg\(5))))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , \u_Cal_seq|NextCount[8]~5_combout\, , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextState.Idle~regout\,
	datac => \u_BPMReg|Trig2AMP_Reg\(5),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	ena => \u_Cal_seq|NextCount[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextCount\(13));

-- Location: LC_X10_Y2_N6
\u_Cal_seq|Advance~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Advance~1_combout\ = (!\u_Cal_seq|NextCount\(15) & (!\u_Cal_seq|NextCount\(14) & (!\u_Cal_seq|NextCount\(13) & \u_Cal_seq|LdCntr~regout\)))

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
	dataa => \u_Cal_seq|NextCount\(15),
	datab => \u_Cal_seq|NextCount\(14),
	datac => \u_Cal_seq|NextCount\(13),
	datad => \u_Cal_seq|LdCntr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Advance~1_combout\);

-- Location: LC_X10_Y2_N7
\u_Cal_seq|Advance~5\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Advance~5_combout\ = (\u_Cal_seq|Advance~3_combout\ & (\u_Cal_seq|Advance~4_combout\ & (\u_Cal_seq|Advance~2_combout\ & \u_Cal_seq|Advance~1_combout\)))

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
	dataa => \u_Cal_seq|Advance~3_combout\,
	datab => \u_Cal_seq|Advance~4_combout\,
	datac => \u_Cal_seq|Advance~2_combout\,
	datad => \u_Cal_seq|Advance~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Advance~5_combout\);

-- Location: LC_X10_Y5_N2
\u_Cal_seq|Counter[0]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(0) = DFFEAS(((!\u_Cal_seq|Counter\(0))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(0), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[0]~1\ = CARRY(((\u_Cal_seq|Counter\(0))))
-- \u_Cal_seq|Counter[0]~1COUT1_47\ = CARRY(((\u_Cal_seq|Counter\(0))))

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
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|Counter\(0),
	datac => \u_Cal_seq|NextCount\(0),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(0),
	cout0 => \u_Cal_seq|Counter[0]~1\,
	cout1 => \u_Cal_seq|Counter[0]~1COUT1_47\);

-- Location: LC_X10_Y2_N4
\u_Cal_seq|Equal2~5\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal2~5_combout\ = ((!\u_Cal_seq|Counter\(0) & ((\u_Cal_seq|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Cal_seq|Counter\(0),
	datad => \u_Cal_seq|Equal2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal2~5_combout\);

-- Location: LC_X10_Y2_N5
\u_Cal_seq|Counter[14]~32\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter[14]~32_combout\ = (\u_Cal_seq|LdCntr~regout\ & ((\u_Cal_seq|NextCount\(0)) # ((!\u_Cal_seq|Advance~5_combout\)))) # (!\u_Cal_seq|LdCntr~regout\ & (!\u_Cal_seq|Equal2~5_combout\ & ((\u_Cal_seq|NextCount\(0)) # 
-- (!\u_Cal_seq|Advance~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8acf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|LdCntr~regout\,
	datab => \u_Cal_seq|NextCount\(0),
	datac => \u_Cal_seq|Advance~5_combout\,
	datad => \u_Cal_seq|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Counter[14]~32_combout\);

-- Location: LC_X10_Y5_N3
\u_Cal_seq|Counter[1]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(1) = DFFEAS(\u_Cal_seq|Counter\(1) $ ((((!\u_Cal_seq|Counter[0]~1\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(1), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[1]~3\ = CARRY((!\u_Cal_seq|Counter\(1) & ((!\u_Cal_seq|Counter[0]~1\))))
-- \u_Cal_seq|Counter[1]~3COUT1_49\ = CARRY((!\u_Cal_seq|Counter\(1) & ((!\u_Cal_seq|Counter[0]~1COUT1_47\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(1),
	datac => \u_Cal_seq|NextCount\(1),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin0 => \u_Cal_seq|Counter[0]~1\,
	cin1 => \u_Cal_seq|Counter[0]~1COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(1),
	cout0 => \u_Cal_seq|Counter[1]~3\,
	cout1 => \u_Cal_seq|Counter[1]~3COUT1_49\);

-- Location: LC_X10_Y5_N4
\u_Cal_seq|Counter[2]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(2) = DFFEAS(\u_Cal_seq|Counter\(2) $ ((((\u_Cal_seq|Counter[1]~3\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(2), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[2]~5\ = CARRY((\u_Cal_seq|Counter\(2)) # ((!\u_Cal_seq|Counter[1]~3COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(2),
	datac => \u_Cal_seq|NextCount\(2),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin0 => \u_Cal_seq|Counter[1]~3\,
	cin1 => \u_Cal_seq|Counter[1]~3COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(2),
	cout => \u_Cal_seq|Counter[2]~5\);

-- Location: LC_X10_Y5_N5
\u_Cal_seq|Counter[3]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(3) = DFFEAS(\u_Cal_seq|Counter\(3) $ ((((!\u_Cal_seq|Counter[2]~5\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(3), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[3]~7\ = CARRY((!\u_Cal_seq|Counter\(3) & ((!\u_Cal_seq|Counter[2]~5\))))
-- \u_Cal_seq|Counter[3]~7COUT1_51\ = CARRY((!\u_Cal_seq|Counter\(3) & ((!\u_Cal_seq|Counter[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(3),
	datac => \u_Cal_seq|NextCount\(3),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[2]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(3),
	cout0 => \u_Cal_seq|Counter[3]~7\,
	cout1 => \u_Cal_seq|Counter[3]~7COUT1_51\);

-- Location: LC_X10_Y5_N6
\u_Cal_seq|Counter[4]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(4) = DFFEAS(\u_Cal_seq|Counter\(4) $ (((((!\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[3]~7\) # (\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[3]~7COUT1_51\))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(4), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[4]~9\ = CARRY((\u_Cal_seq|Counter\(4)) # ((!\u_Cal_seq|Counter[3]~7\)))
-- \u_Cal_seq|Counter[4]~9COUT1_53\ = CARRY((\u_Cal_seq|Counter\(4)) # ((!\u_Cal_seq|Counter[3]~7COUT1_51\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(4),
	datac => \u_Cal_seq|NextCount\(4),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[2]~5\,
	cin0 => \u_Cal_seq|Counter[3]~7\,
	cin1 => \u_Cal_seq|Counter[3]~7COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(4),
	cout0 => \u_Cal_seq|Counter[4]~9\,
	cout1 => \u_Cal_seq|Counter[4]~9COUT1_53\);

-- Location: LC_X10_Y5_N1
\u_Cal_seq|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal2~0_combout\ = (!\u_Cal_seq|Counter\(3) & (!\u_Cal_seq|Counter\(2) & (!\u_Cal_seq|Counter\(4) & !\u_Cal_seq|Counter\(1))))

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
	dataa => \u_Cal_seq|Counter\(3),
	datab => \u_Cal_seq|Counter\(2),
	datac => \u_Cal_seq|Counter\(4),
	datad => \u_Cal_seq|Counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal2~0_combout\);

-- Location: LC_X10_Y5_N7
\u_Cal_seq|Counter[5]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(5) = DFFEAS((\u_Cal_seq|Counter\(5) $ ((!(!\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[4]~9\) # (\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[4]~9COUT1_53\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(5), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[5]~11\ = CARRY(((!\u_Cal_seq|Counter\(5) & !\u_Cal_seq|Counter[4]~9\)))
-- \u_Cal_seq|Counter[5]~11COUT1_55\ = CARRY(((!\u_Cal_seq|Counter\(5) & !\u_Cal_seq|Counter[4]~9COUT1_53\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|Counter\(5),
	datac => \u_Cal_seq|NextCount\(5),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[2]~5\,
	cin0 => \u_Cal_seq|Counter[4]~9\,
	cin1 => \u_Cal_seq|Counter[4]~9COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(5),
	cout0 => \u_Cal_seq|Counter[5]~11\,
	cout1 => \u_Cal_seq|Counter[5]~11COUT1_55\);

-- Location: LC_X10_Y5_N8
\u_Cal_seq|Counter[6]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(6) = DFFEAS(\u_Cal_seq|Counter\(6) $ (((((!\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[5]~11\) # (\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[5]~11COUT1_55\))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(6), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[6]~13\ = CARRY((\u_Cal_seq|Counter\(6)) # ((!\u_Cal_seq|Counter[5]~11\)))
-- \u_Cal_seq|Counter[6]~13COUT1_57\ = CARRY((\u_Cal_seq|Counter\(6)) # ((!\u_Cal_seq|Counter[5]~11COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(6),
	datac => \u_Cal_seq|NextCount\(6),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[2]~5\,
	cin0 => \u_Cal_seq|Counter[5]~11\,
	cin1 => \u_Cal_seq|Counter[5]~11COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(6),
	cout0 => \u_Cal_seq|Counter[6]~13\,
	cout1 => \u_Cal_seq|Counter[6]~13COUT1_57\);

-- Location: LC_X10_Y5_N9
\u_Cal_seq|Counter[7]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(7) = DFFEAS((\u_Cal_seq|Counter\(7) $ ((!(!\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[6]~13\) # (\u_Cal_seq|Counter[2]~5\ & \u_Cal_seq|Counter[6]~13COUT1_57\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(7), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[7]~15\ = CARRY(((!\u_Cal_seq|Counter\(7) & !\u_Cal_seq|Counter[6]~13COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|Counter\(7),
	datac => \u_Cal_seq|NextCount\(7),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[2]~5\,
	cin0 => \u_Cal_seq|Counter[6]~13\,
	cin1 => \u_Cal_seq|Counter[6]~13COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(7),
	cout => \u_Cal_seq|Counter[7]~15\);

-- Location: LC_X11_Y5_N0
\u_Cal_seq|Counter[8]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(8) = DFFEAS((\u_Cal_seq|Counter\(8) $ ((\u_Cal_seq|Counter[7]~15\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(8), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[8]~17\ = CARRY(((\u_Cal_seq|Counter\(8)) # (!\u_Cal_seq|Counter[7]~15\)))
-- \u_Cal_seq|Counter[8]~17COUT1_59\ = CARRY(((\u_Cal_seq|Counter\(8)) # (!\u_Cal_seq|Counter[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|Counter\(8),
	datac => \u_Cal_seq|NextCount\(8),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[7]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(8),
	cout0 => \u_Cal_seq|Counter[8]~17\,
	cout1 => \u_Cal_seq|Counter[8]~17COUT1_59\);

-- Location: LC_X11_Y5_N1
\u_Cal_seq|Counter[9]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(9) = DFFEAS((\u_Cal_seq|Counter\(9) $ ((!(!\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[8]~17\) # (\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[8]~17COUT1_59\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(9), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[9]~19\ = CARRY(((!\u_Cal_seq|Counter\(9) & !\u_Cal_seq|Counter[8]~17\)))
-- \u_Cal_seq|Counter[9]~19COUT1_61\ = CARRY(((!\u_Cal_seq|Counter\(9) & !\u_Cal_seq|Counter[8]~17COUT1_59\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|Counter\(9),
	datac => \u_Cal_seq|NextCount\(9),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[7]~15\,
	cin0 => \u_Cal_seq|Counter[8]~17\,
	cin1 => \u_Cal_seq|Counter[8]~17COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(9),
	cout0 => \u_Cal_seq|Counter[9]~19\,
	cout1 => \u_Cal_seq|Counter[9]~19COUT1_61\);

-- Location: LC_X11_Y5_N2
\u_Cal_seq|Counter[10]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(10) = DFFEAS((\u_Cal_seq|Counter\(10) $ (((!\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[9]~19\) # (\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[9]~19COUT1_61\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(10), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[10]~21\ = CARRY(((\u_Cal_seq|Counter\(10)) # (!\u_Cal_seq|Counter[9]~19\)))
-- \u_Cal_seq|Counter[10]~21COUT1_63\ = CARRY(((\u_Cal_seq|Counter\(10)) # (!\u_Cal_seq|Counter[9]~19COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|Counter\(10),
	datac => \u_Cal_seq|NextCount\(10),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[7]~15\,
	cin0 => \u_Cal_seq|Counter[9]~19\,
	cin1 => \u_Cal_seq|Counter[9]~19COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(10),
	cout0 => \u_Cal_seq|Counter[10]~21\,
	cout1 => \u_Cal_seq|Counter[10]~21COUT1_63\);

-- Location: LC_X11_Y5_N3
\u_Cal_seq|Counter[11]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(11) = DFFEAS(\u_Cal_seq|Counter\(11) $ ((((!(!\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[10]~21\) # (\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[10]~21COUT1_63\))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(11), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[11]~23\ = CARRY((!\u_Cal_seq|Counter\(11) & ((!\u_Cal_seq|Counter[10]~21\))))
-- \u_Cal_seq|Counter[11]~23COUT1_65\ = CARRY((!\u_Cal_seq|Counter\(11) & ((!\u_Cal_seq|Counter[10]~21COUT1_63\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(11),
	datac => \u_Cal_seq|NextCount\(11),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[7]~15\,
	cin0 => \u_Cal_seq|Counter[10]~21\,
	cin1 => \u_Cal_seq|Counter[10]~21COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(11),
	cout0 => \u_Cal_seq|Counter[11]~23\,
	cout1 => \u_Cal_seq|Counter[11]~23COUT1_65\);

-- Location: LC_X11_Y5_N4
\u_Cal_seq|Counter[12]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(12) = DFFEAS(\u_Cal_seq|Counter\(12) $ (((((!\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[11]~23\) # (\u_Cal_seq|Counter[7]~15\ & \u_Cal_seq|Counter[11]~23COUT1_65\))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(12), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[12]~25\ = CARRY((\u_Cal_seq|Counter\(12)) # ((!\u_Cal_seq|Counter[11]~23COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(12),
	datac => \u_Cal_seq|NextCount\(12),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[7]~15\,
	cin0 => \u_Cal_seq|Counter[11]~23\,
	cin1 => \u_Cal_seq|Counter[11]~23COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(12),
	cout => \u_Cal_seq|Counter[12]~25\);

-- Location: LC_X11_Y5_N5
\u_Cal_seq|Counter[13]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(13) = DFFEAS(\u_Cal_seq|Counter\(13) $ ((((!\u_Cal_seq|Counter[12]~25\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(13), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[13]~27\ = CARRY((!\u_Cal_seq|Counter\(13) & ((!\u_Cal_seq|Counter[12]~25\))))
-- \u_Cal_seq|Counter[13]~27COUT1_67\ = CARRY((!\u_Cal_seq|Counter\(13) & ((!\u_Cal_seq|Counter[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(13),
	datac => \u_Cal_seq|NextCount\(13),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[12]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(13),
	cout0 => \u_Cal_seq|Counter[13]~27\,
	cout1 => \u_Cal_seq|Counter[13]~27COUT1_67\);

-- Location: LC_X11_Y5_N6
\u_Cal_seq|Counter[14]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(14) = DFFEAS(\u_Cal_seq|Counter\(14) $ (((((!\u_Cal_seq|Counter[12]~25\ & \u_Cal_seq|Counter[13]~27\) # (\u_Cal_seq|Counter[12]~25\ & \u_Cal_seq|Counter[13]~27COUT1_67\))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(14), , , \u_Cal_seq|LdCntr~regout\)
-- \u_Cal_seq|Counter[14]~29\ = CARRY((\u_Cal_seq|Counter\(14)) # ((!\u_Cal_seq|Counter[13]~27\)))
-- \u_Cal_seq|Counter[14]~29COUT1_69\ = CARRY((\u_Cal_seq|Counter\(14)) # ((!\u_Cal_seq|Counter[13]~27COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Counter\(14),
	datac => \u_Cal_seq|NextCount\(14),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[12]~25\,
	cin0 => \u_Cal_seq|Counter[13]~27\,
	cin1 => \u_Cal_seq|Counter[13]~27COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(14),
	cout0 => \u_Cal_seq|Counter[14]~29\,
	cout1 => \u_Cal_seq|Counter[14]~29COUT1_69\);

-- Location: LC_X11_Y5_N7
\u_Cal_seq|Counter[15]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Counter\(15) = DFFEAS((\u_Cal_seq|Counter\(15) $ ((!(!\u_Cal_seq|Counter[12]~25\ & \u_Cal_seq|Counter[14]~29\) # (\u_Cal_seq|Counter[12]~25\ & \u_Cal_seq|Counter[14]~29COUT1_69\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Cal_seq|Counter[14]~32_combout\, \u_Cal_seq|NextCount\(15), , , \u_Cal_seq|LdCntr~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Cal_seq|Counter\(15),
	datac => \u_Cal_seq|NextCount\(15),
	aclr => \Reset~regout\,
	sload => \u_Cal_seq|LdCntr~regout\,
	ena => \u_Cal_seq|Counter[14]~32_combout\,
	cin => \u_Cal_seq|Counter[12]~25\,
	cin0 => \u_Cal_seq|Counter[14]~29\,
	cin1 => \u_Cal_seq|Counter[14]~29COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Counter\(15));

-- Location: LC_X11_Y5_N9
\u_Cal_seq|Equal2~3\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal2~3_combout\ = (!\u_Cal_seq|Counter\(14) & (!\u_Cal_seq|Counter\(15) & (!\u_Cal_seq|Counter\(13))))

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
	dataa => \u_Cal_seq|Counter\(14),
	datab => \u_Cal_seq|Counter\(15),
	datac => \u_Cal_seq|Counter\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal2~3_combout\);

-- Location: LC_X11_Y5_N8
\u_Cal_seq|Equal2~2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal2~2_combout\ = (!\u_Cal_seq|Counter\(11) & (!\u_Cal_seq|Counter\(10) & (!\u_Cal_seq|Counter\(12) & !\u_Cal_seq|Counter\(9))))

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
	dataa => \u_Cal_seq|Counter\(11),
	datab => \u_Cal_seq|Counter\(10),
	datac => \u_Cal_seq|Counter\(12),
	datad => \u_Cal_seq|Counter\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal2~2_combout\);

-- Location: LC_X10_Y5_N0
\u_Cal_seq|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal2~1_combout\ = (!\u_Cal_seq|Counter\(8) & (!\u_Cal_seq|Counter\(7) & (!\u_Cal_seq|Counter\(5) & !\u_Cal_seq|Counter\(6))))

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
	dataa => \u_Cal_seq|Counter\(8),
	datab => \u_Cal_seq|Counter\(7),
	datac => \u_Cal_seq|Counter\(5),
	datad => \u_Cal_seq|Counter\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal2~1_combout\);

-- Location: LC_X10_Y2_N3
\u_Cal_seq|Equal2~4\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal2~4_combout\ = (\u_Cal_seq|Equal2~0_combout\ & (\u_Cal_seq|Equal2~3_combout\ & (\u_Cal_seq|Equal2~2_combout\ & \u_Cal_seq|Equal2~1_combout\)))

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
	dataa => \u_Cal_seq|Equal2~0_combout\,
	datab => \u_Cal_seq|Equal2~3_combout\,
	datac => \u_Cal_seq|Equal2~2_combout\,
	datad => \u_Cal_seq|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal2~4_combout\);

-- Location: LC_X10_Y2_N1
\u_Cal_seq|Advance~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Advance~0_combout\ = (\u_Cal_seq|Equal2~4_combout\ & (((\u_Cal_seq|Counter\(0))))) # (!\u_Cal_seq|Equal2~4_combout\ & (\u_Cal_seq|Advance~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|Equal2~4_combout\,
	datab => \u_Cal_seq|Advance~regout\,
	datad => \u_Cal_seq|Counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Advance~0_combout\);

-- Location: LC_X10_Y2_N2
\u_Cal_seq|Advance\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Advance~regout\ = DFFEAS((\u_Cal_seq|LdCntr~regout\ & (!\u_Cal_seq|NextCount\(0) & (\u_Cal_seq|Advance~5_combout\))) # (!\u_Cal_seq|LdCntr~regout\ & ((\u_Cal_seq|Advance~0_combout\) # ((!\u_Cal_seq|NextCount\(0) & 
-- \u_Cal_seq|Advance~5_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7530",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|LdCntr~regout\,
	datab => \u_Cal_seq|NextCount\(0),
	datac => \u_Cal_seq|Advance~5_combout\,
	datad => \u_Cal_seq|Advance~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|Advance~regout\);

-- Location: LC_X11_Y6_N3
\u_Cal_seq|NextState.Wait_AMP\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextState.Wait_AMP~regout\ = DFFEAS((\u_Cal_seq|Selector2~0_combout\) # ((\u_Cal_seq|NextState.Wait_AMP~regout\ & (!\u_Cal_seq|Advance~regout\))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datab => \u_Cal_seq|Advance~regout\,
	datac => \u_Cal_seq|Selector2~0_combout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|NextState.Wait_AMP~regout\);

-- Location: LC_X11_Y6_N8
\u_Cal_seq|NextCount[6]~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|NextCount[6]~0_combout\ = (!\u_Cal_seq|NextState.Wait_AMP~regout\ & (((!\u_Cal_seq|NextState.Wait_Off1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datad => \u_Cal_seq|NextState.Wait_Off1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|NextCount[6]~0_combout\);

-- Location: LC_X8_Y6_N2
\u_QSPI|Address[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux83~0\ = (\u_QSPI|Address\(0) & ((\u_BPMReg|Trig2Beam_Reg\(7)) # ((H1_Address[1])))) # (!\u_QSPI|Address\(0) & (((!H1_Address[1] & \u_BPMReg|OffTime_Reg\(7)))))
-- \u_QSPI|Address\(1) = DFFEAS(\u_BPMReg|Mux83~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Address[0]~0\, \u_QSPI|DInSr\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(0),
	datab => \u_BPMReg|Trig2Beam_Reg\(7),
	datac => \u_QSPI|DInSr\(0),
	datad => \u_BPMReg|OffTime_Reg\(7),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux83~0\,
	regout => \u_QSPI|Address\(1));

-- Location: LC_X6_Y4_N3
\u_QSPI|Address[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR[2]~4\ = (\u_QSPI|Address\(4)) # ((\u_QSPI|Address\(1) & (!H1_Address[2] & \u_QSPI|Address\(0))))
-- \u_QSPI|Address\(2) = DFFEAS(\u_QSPI|DataOutSR[2]~4\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Address[0]~0\, \u_QSPI|DInSr\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_QSPI|Address\(4),
	datac => \u_QSPI|DInSr\(1),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOutSR[2]~4\,
	regout => \u_QSPI|Address\(2));

-- Location: LC_X7_Y5_N0
\u_BPMReg|RF12RF2_Reg[7]~2\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF12RF2_Reg[7]~2_combout\ = (!\u_QSPI|Address\(2) & (\u_QSPI|Address\(1) & (\u_BPMReg|Trig2Beam_Reg[7]~2_combout\ & !\u_QSPI|Address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(1),
	datac => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|RF12RF2_Reg[7]~2_combout\);

-- Location: LC_X9_Y6_N0
\u_BPMReg|RF12RF2_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF12RF2_Reg\(7) = DFFEAS(GND, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF12RF2_Reg[7]~2_combout\, \u_QSPI|DataOut\(7), , , VCC)

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(7),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF12RF2_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF12RF2_Reg\(7));

-- Location: LC_X7_Y5_N7
\u_BPMReg|RF2Red_Reg[7]~2\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Red_Reg[7]~2_combout\ = (\u_QSPI|Address\(2) & (\u_QSPI|Address\(1) & (\u_BPMReg|Trig2Beam_Reg[7]~2_combout\ & !\u_QSPI|Address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(1),
	datac => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|RF2Red_Reg[7]~2_combout\);

-- Location: LC_X7_Y4_N4
\u_BPMReg|RF2Red_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux83~1\ = (\u_QSPI|Address\(1) & ((\u_BPMReg|Mux83~0\ & (\u_BPMReg|RF2Green_Reg\(7))) # (!\u_BPMReg|Mux83~0\ & ((D1_RF2Red_Reg[7]))))) # (!\u_QSPI|Address\(1) & (((\u_BPMReg|Mux83~0\))))
-- \u_BPMReg|RF2Red_Reg\(7) = DFFEAS(\u_BPMReg|Mux83~1\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, \u_QSPI|DataOut\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF2Green_Reg\(7),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(7),
	datad => \u_BPMReg|Mux83~0\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux83~1\,
	regout => \u_BPMReg|RF2Red_Reg\(7));

-- Location: LC_X12_Y2_N8
\u_Cal_seq|Selector30~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector30~0_combout\ = (\Cal_Mode1~combout\ & ((\Cal_Mode0~combout\ & (\u_Cal_seq|NextState.Wait_Off1~regout\)) # (!\Cal_Mode0~combout\ & ((\u_Cal_seq|NextState.Wait_AMP~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|NextState.Wait_Off1~regout\,
	datab => \Cal_Mode0~combout\,
	datac => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datad => \Cal_Mode1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector30~0_combout\);

-- Location: LC_X12_Y2_N6
\u_Cal_seq|Selector30~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector30~1_combout\ = (\u_Cal_seq|NextState.Idle~regout\) # ((\u_Cal_seq|NextState.Wait_AMP~regout\) # ((\u_Cal_seq|NextState.Wait_Off1~regout\) # (\u_CalTrigCon|Sys_Trigger~regout\)))

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
	dataa => \u_Cal_seq|NextState.Idle~regout\,
	datab => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datac => \u_Cal_seq|NextState.Wait_Off1~regout\,
	datad => \u_CalTrigCon|Sys_Trigger~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector30~1_combout\);

-- Location: LC_X12_Y4_N4
\u_Cal_seq|SW4\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|SW4~regout\ = DFFEAS((\u_Cal_seq|Advance~regout\ & ((\u_Cal_seq|Selector30~0_combout\) # ((\u_Cal_seq|SW4~regout\ & \u_Cal_seq|Selector30~1_combout\)))) # (!\u_Cal_seq|Advance~regout\ & (((\u_Cal_seq|SW4~regout\ & 
-- \u_Cal_seq|Selector30~1_combout\)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Advance~regout\,
	datab => \u_Cal_seq|Selector30~0_combout\,
	datac => \u_Cal_seq|SW4~regout\,
	datad => \u_Cal_seq|Selector30~1_combout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|SW4~regout\);

-- Location: LC_X11_Y2_N8
\u_Cal_seq|Selector27~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector27~1_combout\ = (!\u_Cal_seq|NextState.Wait_RF2~regout\ & (((!\u_Cal_seq|NextState.Wait_RF1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|NextState.Wait_RF2~regout\,
	datad => \u_Cal_seq|NextState.Wait_RF1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector27~1_combout\);

-- Location: LC_X11_Y2_N1
\u_Cal_seq|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Equal3~0_combout\ = (((!\u_Cal_seq|NextState.Idle~regout\ & \u_CalTrigCon|Sys_Trigger~regout\)))

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
	datac => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_CalTrigCon|Sys_Trigger~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Equal3~0_combout\);

-- Location: LC_X11_Y2_N2
\u_Cal_seq|Selector27~2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector27~2_combout\ = ((\u_Cal_seq|Selector27~0\) # ((\u_Cal_seq|Equal3~0_combout\) # (!\u_Cal_seq|NextCount[6]~0_combout\))) # (!\u_Cal_seq|Selector27~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|Selector27~1_combout\,
	datab => \u_Cal_seq|Selector27~0\,
	datac => \u_Cal_seq|NextCount[6]~0_combout\,
	datad => \u_Cal_seq|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector27~2_combout\);

-- Location: LC_X11_Y4_N6
\u_Cal_seq|SW1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|SW1~regout\ = DFFEAS((\u_Cal_seq|Advance~regout\ & (((\u_Cal_seq|Selector27~2_combout\ & \u_Cal_seq|SW1~regout\)) # (!\u_Cal_seq|Selector27~1_combout\))) # (!\u_Cal_seq|Advance~regout\ & (((\u_Cal_seq|Selector27~2_combout\ & 
-- \u_Cal_seq|SW1~regout\)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Advance~regout\,
	datab => \u_Cal_seq|Selector27~1_combout\,
	datac => \u_Cal_seq|Selector27~2_combout\,
	datad => \u_Cal_seq|SW1~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|SW1~regout\);

-- Location: LC_X12_Y4_N9
\u_Cal_seq|SW6\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|SW6~regout\ = DFFEAS((\u_Cal_seq|SW4~regout\ & (\u_Cal_seq|SW1~regout\ & ((\u_CalTrigCon|Sys_Trigger~regout\) # (\u_Cal_seq|NextState.Idle~regout\)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|SW4~regout\,
	datab => \u_CalTrigCon|Sys_Trigger~regout\,
	datac => \u_Cal_seq|SW1~regout\,
	datad => \u_Cal_seq|NextState.Idle~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|SW6~regout\);

-- Location: LC_X6_Y5_N0
\u_BPMReg|RF2Green_Reg[7]~0\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Green_Reg[7]~0_combout\ = (\u_BPMReg|Trig2Beam_Reg[7]~2_combout\ & (\u_QSPI|Address\(2) & (\u_QSPI|Address\(1) & \u_QSPI|Address\(0))))

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
	dataa => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	datab => \u_QSPI|Address\(2),
	datac => \u_QSPI|Address\(1),
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|RF2Green_Reg[7]~0_combout\);

-- Location: LC_X7_Y4_N5
\u_BPMReg|RF2Green_Reg[7]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux2~0\ = ((\u_Cal_seq|SW6~regout\ & ((D1_RF2Green_Reg[7]))) # (!\u_Cal_seq|SW6~regout\ & (\u_BPMReg|RF2Red_Reg\(7))))
-- \u_BPMReg|RF2Green_Reg\(7) = DFFEAS(\u_Cal_seq|Mux2~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, \u_QSPI|DataOut\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF2Red_Reg\(7),
	datac => \u_QSPI|DataOut\(7),
	datad => \u_Cal_seq|SW6~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux2~0\,
	regout => \u_BPMReg|RF2Green_Reg\(7));

-- Location: LC_X6_Y4_N1
\u_QSPI|Address[4]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|iDout~0\ = (H1_Address[4] & ((\u_QSPI|Address\(2) & ((\u_BPMReg|Mux83~1\))) # (!\u_QSPI|Address\(2) & (\u_BPMReg|Mux83~3\))))
-- \u_QSPI|Address\(4) = DFFEAS(\u_QSPI|iDout~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Address[0]~0\, \u_QSPI|DInSr\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|Mux83~3\,
	datab => \u_BPMReg|Mux83~1\,
	datac => \u_QSPI|DInSr\(3),
	datad => \u_QSPI|Address\(2),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_QSPI|Address[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|iDout~0\,
	regout => \u_QSPI|Address\(4));

-- Location: LC_X5_Y6_N9
\u_BPMReg|Trig2Beam_Reg[7]~2\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2Beam_Reg[7]~2_combout\ = (\u_QSPI|Write_Strb~regout\ & (!\u_QSPI|Address\(3) & (!\u_QSPI|Address\(5) & \u_QSPI|Address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Write_Strb~regout\,
	datab => \u_QSPI|Address\(3),
	datac => \u_QSPI|Address\(5),
	datad => \u_QSPI|Address\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\);

-- Location: LC_X6_Y5_N6
\u_BPMReg|Trig2Beam_Reg[7]~3\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2Beam_Reg[7]~3_combout\ = (\u_BPMReg|Trig2Beam_Reg[7]~2_combout\ & (\u_QSPI|Address\(2) & (!\u_QSPI|Address\(1) & \u_QSPI|Address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Trig2Beam_Reg[7]~2_combout\,
	datab => \u_QSPI|Address\(2),
	datac => \u_QSPI|Address\(1),
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\);

-- Location: LC_X8_Y6_N3
\u_BPMReg|Trig2Beam_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2Beam_Reg\(0) = DFFEAS((((!\u_QSPI|DataOut\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(0),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|Trig2Beam_Reg\(0));

-- Location: LC_X12_Y2_N4
\u_Cal_seq|Selector28~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector28~0_combout\ = (\u_Cal_seq|Advance~regout\ & ((\Cal_Mode1~combout\ & (\Cal_Mode0~combout\)) # (!\Cal_Mode1~combout\ & ((!\u_Cal_seq|SW2~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "880c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Cal_Mode0~combout\,
	datab => \u_Cal_seq|Advance~regout\,
	datac => \u_Cal_seq|SW2~regout\,
	datad => \Cal_Mode1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector28~0_combout\);

-- Location: LC_X12_Y2_N5
\u_Cal_seq|Selector28~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector28~1_combout\ = (\u_Cal_seq|NextState.Idle~regout\ & (((!\u_Cal_seq|Selector28~0_combout\) # (!\u_Cal_seq|NextState.Wait_Off1~regout\)))) # (!\u_Cal_seq|NextState.Idle~regout\ & ((\u_CalTrigCon|Sys_Trigger~regout\) # 
-- ((\u_Cal_seq|NextState.Wait_Off1~regout\ & !\u_Cal_seq|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4efe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|NextState.Idle~regout\,
	datab => \u_CalTrigCon|Sys_Trigger~regout\,
	datac => \u_Cal_seq|NextState.Wait_Off1~regout\,
	datad => \u_Cal_seq|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector28~1_combout\);

-- Location: LC_X12_Y4_N6
\u_Cal_seq|SW2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|SW2~regout\ = DFFEAS((\u_Cal_seq|NextState.Wait_AMP~regout\ & ((\u_Cal_seq|Selector28~0_combout\) # ((\u_Cal_seq|SW2~regout\)))) # (!\u_Cal_seq|NextState.Wait_AMP~regout\ & (((\u_Cal_seq|SW2~regout\ & \u_Cal_seq|Selector28~1_combout\)))), 
-- GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8c8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Selector28~0_combout\,
	datab => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datac => \u_Cal_seq|SW2~regout\,
	datad => \u_Cal_seq|Selector28~1_combout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|SW2~regout\);

-- Location: LC_X11_Y4_N3
\u_Cal_seq|SW5\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|SW5~regout\ = DFFEAS((\u_Cal_seq|SW2~regout\ & (\u_Cal_seq|SW1~regout\ & ((\u_Cal_seq|NextState.Idle~regout\) # (\u_CalTrigCon|Sys_Trigger~regout\)))), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|SW2~regout\,
	datab => \u_Cal_seq|NextState.Idle~regout\,
	datac => \u_CalTrigCon|Sys_Trigger~regout\,
	datad => \u_Cal_seq|SW1~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|SW5~regout\);

-- Location: LC_X7_Y4_N9
\u_BPMReg|RF2Green_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Green_Reg\(0) = DFFEAS((((!\u_QSPI|DataOut\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(0),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF2Green_Reg\(0));

-- Location: LC_X7_Y4_N1
\u_BPMReg|RF2Red_Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Red_Reg\(0) = DFFEAS((((!\u_QSPI|DataOut\(0)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(0),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF2Red_Reg\(0));

-- Location: LC_X8_Y4_N1
\u_Cal_seq|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux9~0_combout\ = ((\u_Cal_seq|SW6~regout\ & (!\u_BPMReg|RF2Green_Reg\(0))) # (!\u_Cal_seq|SW6~regout\ & ((!\u_BPMReg|RF2Red_Reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "550f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|RF2Green_Reg\(0),
	datac => \u_BPMReg|RF2Red_Reg\(0),
	datad => \u_Cal_seq|SW6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux9~0_combout\);

-- Location: LC_X8_Y4_N2
\u_Cal_seq|Mux9~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux9~1_combout\ = (\u_BPMReg|Trig2Beam_Reg\(0) & (\u_Cal_seq|Mux9~0_combout\ & (\u_Cal_seq|SW6~regout\ $ (\u_Cal_seq|SW5~regout\)))) # (!\u_BPMReg|Trig2Beam_Reg\(0) & ((\u_Cal_seq|Mux9~0_combout\) # (\u_Cal_seq|SW6~regout\ $ 
-- (!\u_Cal_seq|SW5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d41",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Trig2Beam_Reg\(0),
	datab => \u_Cal_seq|SW6~regout\,
	datac => \u_Cal_seq|SW5~regout\,
	datad => \u_Cal_seq|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux9~1_combout\);

-- Location: LC_X3_Y4_N7
\u_Cal_seq|u_Pulse|Cntr[0]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(0) = DFFEAS((\u_Cal_seq|u_Pulse|Equal2~2_combout\ & (((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & \u_Cal_seq|Mux9~1_combout\)))) # (!\u_Cal_seq|u_Pulse|Equal2~2_combout\ & ((\u_Cal_seq|u_Pulse|Add0~0_combout\) # 
-- ((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & \u_Cal_seq|Mux9~1_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	datab => \u_Cal_seq|u_Pulse|Add0~0_combout\,
	datac => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	datad => \u_Cal_seq|Mux9~1_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(0));

-- Location: LC_X11_Y2_N4
\u_Cal_seq|u_Pulse|TrigSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|TrigSr\(0) = DFFEAS((\Cal_Mode0~combout\ & (((\u_Cal_seq|SW5~regout\)))) # (!\Cal_Mode0~combout\ & (\Cal_Mode1~combout\ & (\u_Cal_seq|SW6~regout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \Cal_Mode1~combout\,
	datab => \u_Cal_seq|SW6~regout\,
	datac => \Cal_Mode0~combout\,
	datad => \u_Cal_seq|SW5~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|TrigSr\(0));

-- Location: LC_X10_Y2_N8
\u_Cal_seq|u_Pulse|TrigSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Pulse~0\ = (((!J1_TrigSr[1] & \u_Cal_seq|u_Pulse|TrigSr\(0))))

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
	clk => \ClkDivIn~combout\,
	datac => \u_Cal_seq|u_Pulse|TrigSr\(0),
	datad => \u_Cal_seq|u_Pulse|TrigSr\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Pulse~0\,
	regout => \u_Cal_seq|u_Pulse|TrigSr\(1));

-- Location: LC_X4_Y4_N2
\u_BPMReg|RF2Green_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux4~0\ = ((\u_Cal_seq|SW6~regout\ & ((D1_RF2Green_Reg[5]))) # (!\u_Cal_seq|SW6~regout\ & (\u_BPMReg|RF2Red_Reg\(5))))
-- \u_BPMReg|RF2Green_Reg\(5) = DFFEAS(\u_Cal_seq|Mux4~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, \u_QSPI|DataOut\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF2Red_Reg\(5),
	datac => \u_QSPI|DataOut\(5),
	datad => \u_Cal_seq|SW6~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux4~0\,
	regout => \u_BPMReg|RF2Green_Reg\(5));

-- Location: LC_X4_Y4_N5
\u_BPMReg|RF2Red_Reg[5]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector19~3\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Selector19~2\ & (\u_BPMReg|RF2Green_Reg\(5))) # (!\u_QSPI|Selector19~2\ & ((D1_RF2Red_Reg[5]))))) # (!\u_QSPI|Address\(1) & (((\u_QSPI|Selector19~2\))))
-- \u_BPMReg|RF2Red_Reg\(5) = DFFEAS(\u_QSPI|Selector19~3\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, \u_QSPI|DataOut\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|RF2Green_Reg\(5),
	datac => \u_QSPI|DataOut\(5),
	datad => \u_QSPI|Selector19~2\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector19~3\,
	regout => \u_BPMReg|RF2Red_Reg\(5));

-- Location: LC_X4_Y4_N3
\u_Cal_seq|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux4~1_combout\ = (\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(5))) # (!\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|Mux4~0\))))) # (!\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|Mux4~0\))) # 
-- (!\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|SW6~regout\,
	datab => \u_BPMReg|Trig2Beam_Reg\(5),
	datac => \u_Cal_seq|SW5~regout\,
	datad => \u_Cal_seq|Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux4~1_combout\);

-- Location: LC_X6_Y5_N5
\u_BPMReg|Trig2Beam_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~0\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))))) # (!\u_QSPI|Address\(1) & ((\u_QSPI|Address\(0) & ((D1_Trig2Beam_Reg[4]))) # (!\u_QSPI|Address\(0) & (!\u_BPMReg|OffTime_Reg\(4)))))
-- \u_BPMReg|Trig2Beam_Reg\(4) = DFFEAS(\u_QSPI|Selector20~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, \u_QSPI|DataOut\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa11",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|OffTime_Reg\(4),
	datac => \u_QSPI|DataOut\(4),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~0\,
	regout => \u_BPMReg|Trig2Beam_Reg\(4));

-- Location: LC_X8_Y4_N5
\u_BPMReg|RF2Green_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux5~0\ = ((\u_Cal_seq|SW6~regout\ & ((D1_RF2Green_Reg[4]))) # (!\u_Cal_seq|SW6~regout\ & (\u_BPMReg|RF2Red_Reg\(4))))
-- \u_BPMReg|RF2Green_Reg\(4) = DFFEAS(\u_Cal_seq|Mux5~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, \u_QSPI|DataOut\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datab => \u_BPMReg|RF2Red_Reg\(4),
	datac => \u_QSPI|DataOut\(4),
	datad => \u_Cal_seq|SW6~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux5~0\,
	regout => \u_BPMReg|RF2Green_Reg\(4));

-- Location: LC_X8_Y4_N0
\u_BPMReg|RF2Red_Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~1\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Selector20~0\ & (\u_BPMReg|RF2Green_Reg\(4))) # (!\u_QSPI|Selector20~0\ & ((D1_RF2Red_Reg[4]))))) # (!\u_QSPI|Address\(1) & (((\u_QSPI|Selector20~0\))))
-- \u_BPMReg|RF2Red_Reg\(4) = DFFEAS(\u_QSPI|Selector20~1\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, \u_QSPI|DataOut\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF2Green_Reg\(4),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(4),
	datad => \u_QSPI|Selector20~0\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~1\,
	regout => \u_BPMReg|RF2Red_Reg\(4));

-- Location: LC_X8_Y4_N6
\u_Cal_seq|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux5~1_combout\ = (\u_BPMReg|Trig2Beam_Reg\(4) & ((\u_Cal_seq|Mux5~0\) # (\u_Cal_seq|SW6~regout\ $ (!\u_Cal_seq|SW5~regout\)))) # (!\u_BPMReg|Trig2Beam_Reg\(4) & (\u_Cal_seq|Mux5~0\ & (\u_Cal_seq|SW6~regout\ $ (\u_Cal_seq|SW5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Trig2Beam_Reg\(4),
	datab => \u_Cal_seq|SW6~regout\,
	datac => \u_Cal_seq|SW5~regout\,
	datad => \u_Cal_seq|Mux5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux5~1_combout\);

-- Location: LC_X6_Y5_N7
\u_BPMReg|Trig2Beam_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~7\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))))) # (!\u_QSPI|Address\(1) & ((\u_QSPI|Address\(0) & ((D1_Trig2Beam_Reg[2]))) # (!\u_QSPI|Address\(0) & (\u_BPMReg|OffTime_Reg\(2)))))
-- \u_BPMReg|Trig2Beam_Reg\(2) = DFFEAS(\u_QSPI|Selector22~7\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, \u_QSPI|DataOut\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|OffTime_Reg\(2),
	datac => \u_QSPI|DataOut\(2),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~7\,
	regout => \u_BPMReg|Trig2Beam_Reg\(2));

-- Location: LC_X7_Y4_N6
\u_BPMReg|RF2Red_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Red_Reg\(2) = DFFEAS((((!\u_QSPI|DataOut\(2)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_QSPI|DataOut\(2),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF2Red_Reg\(2));

-- Location: LC_X6_Y5_N9
\u_BPMReg|RF2Green_Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Green_Reg\(2) = DFFEAS((((!\u_QSPI|DataOut\(2)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(2),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF2Green_Reg\(2));

-- Location: LC_X4_Y4_N8
\u_Cal_seq|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux7~0_combout\ = ((\u_Cal_seq|SW6~regout\ & ((!\u_BPMReg|RF2Green_Reg\(2)))) # (!\u_Cal_seq|SW6~regout\ & (!\u_BPMReg|RF2Red_Reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_BPMReg|RF2Red_Reg\(2),
	datac => \u_Cal_seq|SW6~regout\,
	datad => \u_BPMReg|RF2Green_Reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux7~0_combout\);

-- Location: LC_X4_Y4_N0
\u_Cal_seq|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux7~1_combout\ = (\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(2))) # (!\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|Mux7~0_combout\))))) # (!\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & 
-- ((\u_Cal_seq|Mux7~0_combout\))) # (!\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|SW6~regout\,
	datab => \u_BPMReg|Trig2Beam_Reg\(2),
	datac => \u_Cal_seq|SW5~regout\,
	datad => \u_Cal_seq|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux7~1_combout\);

-- Location: LC_X6_Y5_N3
\u_BPMReg|Trig2Beam_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~0\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))))) # (!\u_QSPI|Address\(1) & ((\u_QSPI|Address\(0) & ((D1_Trig2Beam_Reg[1]))) # (!\u_QSPI|Address\(0) & (\u_BPMReg|OffTime_Reg\(1)))))
-- \u_BPMReg|Trig2Beam_Reg\(1) = DFFEAS(\u_QSPI|Selector23~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, \u_QSPI|DataOut\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|OffTime_Reg\(1),
	datac => \u_QSPI|DataOut\(1),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~0\,
	regout => \u_BPMReg|Trig2Beam_Reg\(1));

-- Location: LC_X7_Y4_N3
\u_BPMReg|RF2Red_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Red_Reg\(1) = DFFEAS((((!\u_QSPI|DataOut\(1)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(1),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF2Red_Reg\(1));

-- Location: LC_X7_Y4_N2
\u_BPMReg|RF2Green_Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|RF2Green_Reg\(1) = DFFEAS((((!\u_QSPI|DataOut\(1)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(1),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|RF2Green_Reg\(1));

-- Location: LC_X4_Y4_N9
\u_Cal_seq|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux8~0_combout\ = (\u_Cal_seq|SW6~regout\ & (((!\u_BPMReg|RF2Green_Reg\(1))))) # (!\u_Cal_seq|SW6~regout\ & (!\u_BPMReg|RF2Red_Reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3535",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|RF2Red_Reg\(1),
	datab => \u_BPMReg|RF2Green_Reg\(1),
	datac => \u_Cal_seq|SW6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux8~0_combout\);

-- Location: LC_X4_Y4_N6
\u_Cal_seq|Mux8~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux8~1_combout\ = (\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(1))) # (!\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|Mux8~0_combout\))))) # (!\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & 
-- ((\u_Cal_seq|Mux8~0_combout\))) # (!\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|SW6~regout\,
	datab => \u_BPMReg|Trig2Beam_Reg\(1),
	datac => \u_Cal_seq|SW5~regout\,
	datad => \u_Cal_seq|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux8~1_combout\);

-- Location: LC_X8_Y4_N4
\u_BPMReg|RF2Red_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~6\ = (\u_QSPI|Address\(0) & (((\u_QSPI|Address\(1))))) # (!\u_QSPI|Address\(0) & ((\u_QSPI|Address\(1) & ((D1_RF2Red_Reg[3]))) # (!\u_QSPI|Address\(1) & (!\u_BPMReg|OffTime_Reg\(3)))))
-- \u_BPMReg|RF2Red_Reg\(3) = DFFEAS(\u_QSPI|Selector21~6\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, \u_QSPI|DataOut\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc11",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|OffTime_Reg\(3),
	datab => \u_QSPI|Address\(0),
	datac => \u_QSPI|DataOut\(3),
	datad => \u_QSPI|Address\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~6\,
	regout => \u_BPMReg|RF2Red_Reg\(3));

-- Location: LC_X12_Y4_N3
\u_BPMReg|RF2Green_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux6~0\ = ((\u_Cal_seq|SW6~regout\ & ((D1_RF2Green_Reg[3]))) # (!\u_Cal_seq|SW6~regout\ & (\u_BPMReg|RF2Red_Reg\(3))))
-- \u_BPMReg|RF2Green_Reg\(3) = DFFEAS(\u_Cal_seq|Mux6~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, \u_QSPI|DataOut\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datab => \u_BPMReg|RF2Red_Reg\(3),
	datac => \u_QSPI|DataOut\(3),
	datad => \u_Cal_seq|SW6~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux6~0\,
	regout => \u_BPMReg|RF2Green_Reg\(3));

-- Location: LC_X6_Y5_N1
\u_BPMReg|Trig2Beam_Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~7\ = (\u_QSPI|Selector21~6\ & ((\u_BPMReg|RF2Green_Reg\(3)) # ((!\u_QSPI|Address\(0))))) # (!\u_QSPI|Selector21~6\ & (((D1_Trig2Beam_Reg[3] & \u_QSPI|Address\(0)))))
-- \u_BPMReg|Trig2Beam_Reg\(3) = DFFEAS(\u_QSPI|Selector21~7\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|Trig2Beam_Reg[7]~3_combout\, \u_QSPI|DataOut\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF2Green_Reg\(3),
	datab => \u_QSPI|Selector21~6\,
	datac => \u_QSPI|DataOut\(3),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|Trig2Beam_Reg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~7\,
	regout => \u_BPMReg|Trig2Beam_Reg\(3));

-- Location: LC_X4_Y4_N1
\u_Cal_seq|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux6~1_combout\ = (\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(3))) # (!\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|Mux6~0\))))) # (!\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|Mux6~0\))) # 
-- (!\u_Cal_seq|SW5~regout\ & (\u_BPMReg|Trig2Beam_Reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|SW6~regout\,
	datab => \u_BPMReg|Trig2Beam_Reg\(3),
	datac => \u_Cal_seq|SW5~regout\,
	datad => \u_Cal_seq|Mux6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux6~1_combout\);

-- Location: LC_X3_Y4_N0
\u_Cal_seq|u_Pulse|Equal1~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Equal1~1_combout\ = (!\u_Cal_seq|Mux7~1_combout\ & (!\u_Cal_seq|Mux9~1_combout\ & (!\u_Cal_seq|Mux8~1_combout\ & !\u_Cal_seq|Mux6~1_combout\)))

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
	dataa => \u_Cal_seq|Mux7~1_combout\,
	datab => \u_Cal_seq|Mux9~1_combout\,
	datac => \u_Cal_seq|Mux8~1_combout\,
	datad => \u_Cal_seq|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Equal1~1_combout\);

-- Location: LC_X7_Y4_N8
\u_Cal_seq|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux2~1_combout\ = (\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|SW6~regout\ & (\u_BPMReg|Trig2Beam_Reg\(7))) # (!\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|Mux2~0\))))) # (!\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|Mux2~0\))) # 
-- (!\u_Cal_seq|SW6~regout\ & (\u_BPMReg|Trig2Beam_Reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|SW5~regout\,
	datab => \u_BPMReg|Trig2Beam_Reg\(7),
	datac => \u_Cal_seq|Mux2~0\,
	datad => \u_Cal_seq|SW6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux2~1_combout\);

-- Location: LC_X8_Y4_N8
\u_BPMReg|RF2Green_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux3~0\ = ((\u_Cal_seq|SW6~regout\ & ((D1_RF2Green_Reg[6]))) # (!\u_Cal_seq|SW6~regout\ & (\u_BPMReg|RF2Red_Reg\(6))))
-- \u_BPMReg|RF2Green_Reg\(6) = DFFEAS(\u_Cal_seq|Mux3~0\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Green_Reg[7]~0_combout\, \u_QSPI|DataOut\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datab => \u_BPMReg|RF2Red_Reg\(6),
	datac => \u_QSPI|DataOut\(6),
	datad => \u_Cal_seq|SW6~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Green_Reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux3~0\,
	regout => \u_BPMReg|RF2Green_Reg\(6));

-- Location: LC_X8_Y4_N7
\u_BPMReg|RF2Red_Reg[6]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector18~3\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Selector18~2\ & (\u_BPMReg|RF2Green_Reg\(6))) # (!\u_QSPI|Selector18~2\ & ((D1_RF2Red_Reg[6]))))) # (!\u_QSPI|Address\(1) & (((\u_QSPI|Selector18~2\))))
-- \u_BPMReg|RF2Red_Reg\(6) = DFFEAS(\u_QSPI|Selector18~3\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|RF2Red_Reg[7]~2_combout\, \u_QSPI|DataOut\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|RF2Green_Reg\(6),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(6),
	datad => \u_QSPI|Selector18~2\,
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|RF2Red_Reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector18~3\,
	regout => \u_BPMReg|RF2Red_Reg\(6));

-- Location: LC_X8_Y4_N9
\u_Cal_seq|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux3~1_combout\ = (\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|SW6~regout\ & (\u_BPMReg|Trig2Beam_Reg\(6))) # (!\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|Mux3~0\))))) # (!\u_Cal_seq|SW5~regout\ & ((\u_Cal_seq|SW6~regout\ & ((\u_Cal_seq|Mux3~0\))) # 
-- (!\u_Cal_seq|SW6~regout\ & (\u_BPMReg|Trig2Beam_Reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|SW5~regout\,
	datab => \u_Cal_seq|SW6~regout\,
	datac => \u_BPMReg|Trig2Beam_Reg\(6),
	datad => \u_Cal_seq|Mux3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux3~1_combout\);

-- Location: LC_X3_Y4_N8
\u_Cal_seq|u_Pulse|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Equal1~0_combout\ = ((!\u_Cal_seq|Mux2~1_combout\ & ((!\u_Cal_seq|Mux3~1_combout\))))

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
	datab => \u_Cal_seq|Mux2~1_combout\,
	datad => \u_Cal_seq|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Equal1~0_combout\);

-- Location: LC_X3_Y4_N9
\u_Cal_seq|u_Pulse|Equal1~2\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Equal1~2_combout\ = (!\u_Cal_seq|Mux4~1_combout\ & (!\u_Cal_seq|Mux5~1_combout\ & (\u_Cal_seq|u_Pulse|Equal1~1_combout\ & \u_Cal_seq|u_Pulse|Equal1~0_combout\)))

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
	dataa => \u_Cal_seq|Mux4~1_combout\,
	datab => \u_Cal_seq|Mux5~1_combout\,
	datac => \u_Cal_seq|u_Pulse|Equal1~1_combout\,
	datad => \u_Cal_seq|u_Pulse|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Equal1~2_combout\);

-- Location: LC_X3_Y4_N5
\u_Cal_seq|u_Pulse|Cntr[7]~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ = (\u_Cal_seq|u_Pulse|Equal2~1_combout\ & (!\u_Cal_seq|u_Pulse|Cntr\(0) & (\u_Cal_seq|u_Pulse|Pulse~0\ & !\u_Cal_seq|u_Pulse|Equal1~2_combout\)))

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
	dataa => \u_Cal_seq|u_Pulse|Equal2~1_combout\,
	datab => \u_Cal_seq|u_Pulse|Cntr\(0),
	datac => \u_Cal_seq|u_Pulse|Pulse~0\,
	datad => \u_Cal_seq|u_Pulse|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\);

-- Location: LC_X2_Y5_N1
\u_Cal_seq|u_Pulse|Add0~35\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~35_combout\ = (\u_Cal_seq|u_Pulse|Cntr\(1) $ ((!\u_Cal_seq|u_Pulse|Add0~2\)))
-- \u_Cal_seq|u_Pulse|Add0~37\ = CARRY(((!\u_Cal_seq|u_Pulse|Cntr\(1) & !\u_Cal_seq|u_Pulse|Add0~2\)))
-- \u_Cal_seq|u_Pulse|Add0~37COUT1_50\ = CARRY(((!\u_Cal_seq|u_Pulse|Cntr\(1) & !\u_Cal_seq|u_Pulse|Add0~2COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Cal_seq|u_Pulse|Cntr\(1),
	cin0 => \u_Cal_seq|u_Pulse|Add0~2\,
	cin1 => \u_Cal_seq|u_Pulse|Add0~2COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~35_combout\,
	cout0 => \u_Cal_seq|u_Pulse|Add0~37\,
	cout1 => \u_Cal_seq|u_Pulse|Add0~37COUT1_50\);

-- Location: LC_X3_Y4_N6
\u_Cal_seq|u_Pulse|Cntr[1]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(1) = DFFEAS((\u_Cal_seq|u_Pulse|Equal2~2_combout\ & (((\u_Cal_seq|Mux8~1_combout\ & \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\)))) # (!\u_Cal_seq|u_Pulse|Equal2~2_combout\ & ((\u_Cal_seq|u_Pulse|Add0~35_combout\) # 
-- ((\u_Cal_seq|Mux8~1_combout\ & \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	datab => \u_Cal_seq|u_Pulse|Add0~35_combout\,
	datac => \u_Cal_seq|Mux8~1_combout\,
	datad => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(1));

-- Location: LC_X2_Y5_N2
\u_Cal_seq|u_Pulse|Add0~30\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~30_combout\ = \u_Cal_seq|u_Pulse|Cntr\(2) $ ((((\u_Cal_seq|u_Pulse|Add0~37\))))
-- \u_Cal_seq|u_Pulse|Add0~32\ = CARRY((\u_Cal_seq|u_Pulse|Cntr\(2)) # ((!\u_Cal_seq|u_Pulse|Add0~37\)))
-- \u_Cal_seq|u_Pulse|Add0~32COUT1_52\ = CARRY((\u_Cal_seq|u_Pulse|Cntr\(2)) # ((!\u_Cal_seq|u_Pulse|Add0~37COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|u_Pulse|Cntr\(2),
	cin0 => \u_Cal_seq|u_Pulse|Add0~37\,
	cin1 => \u_Cal_seq|u_Pulse|Add0~37COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~30_combout\,
	cout0 => \u_Cal_seq|u_Pulse|Add0~32\,
	cout1 => \u_Cal_seq|u_Pulse|Add0~32COUT1_52\);

-- Location: LC_X3_Y4_N1
\u_Cal_seq|u_Pulse|Cntr[2]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(2) = DFFEAS((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & ((\u_Cal_seq|Mux7~1_combout\) # ((\u_Cal_seq|u_Pulse|Add0~30_combout\ & !\u_Cal_seq|u_Pulse|Equal2~2_combout\)))) # (!\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & 
-- (\u_Cal_seq|u_Pulse|Add0~30_combout\ & ((!\u_Cal_seq|u_Pulse|Equal2~2_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	datab => \u_Cal_seq|u_Pulse|Add0~30_combout\,
	datac => \u_Cal_seq|Mux7~1_combout\,
	datad => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(2));

-- Location: LC_X2_Y5_N3
\u_Cal_seq|u_Pulse|Add0~25\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~25_combout\ = (\u_Cal_seq|u_Pulse|Cntr\(3) $ ((!\u_Cal_seq|u_Pulse|Add0~32\)))
-- \u_Cal_seq|u_Pulse|Add0~27\ = CARRY(((!\u_Cal_seq|u_Pulse|Cntr\(3) & !\u_Cal_seq|u_Pulse|Add0~32\)))
-- \u_Cal_seq|u_Pulse|Add0~27COUT1_54\ = CARRY(((!\u_Cal_seq|u_Pulse|Cntr\(3) & !\u_Cal_seq|u_Pulse|Add0~32COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Cal_seq|u_Pulse|Cntr\(3),
	cin0 => \u_Cal_seq|u_Pulse|Add0~32\,
	cin1 => \u_Cal_seq|u_Pulse|Add0~32COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~25_combout\,
	cout0 => \u_Cal_seq|u_Pulse|Add0~27\,
	cout1 => \u_Cal_seq|u_Pulse|Add0~27COUT1_54\);

-- Location: LC_X3_Y4_N4
\u_Cal_seq|u_Pulse|Cntr[3]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(3) = DFFEAS((\u_Cal_seq|u_Pulse|Equal2~2_combout\ & (((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & \u_Cal_seq|Mux6~1_combout\)))) # (!\u_Cal_seq|u_Pulse|Equal2~2_combout\ & ((\u_Cal_seq|u_Pulse|Add0~25_combout\) # 
-- ((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & \u_Cal_seq|Mux6~1_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	datab => \u_Cal_seq|u_Pulse|Add0~25_combout\,
	datac => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	datad => \u_Cal_seq|Mux6~1_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(3));

-- Location: LC_X2_Y5_N4
\u_Cal_seq|u_Pulse|Add0~20\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~20_combout\ = (\u_Cal_seq|u_Pulse|Cntr\(4) $ ((\u_Cal_seq|u_Pulse|Add0~27\)))
-- \u_Cal_seq|u_Pulse|Add0~22\ = CARRY(((\u_Cal_seq|u_Pulse|Cntr\(4)) # (!\u_Cal_seq|u_Pulse|Add0~27COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Cal_seq|u_Pulse|Cntr\(4),
	cin0 => \u_Cal_seq|u_Pulse|Add0~27\,
	cin1 => \u_Cal_seq|u_Pulse|Add0~27COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~20_combout\,
	cout => \u_Cal_seq|u_Pulse|Add0~22\);

-- Location: LC_X2_Y4_N7
\u_Cal_seq|u_Pulse|Cntr[4]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(4) = DFFEAS((\u_Cal_seq|Mux5~1_combout\ & ((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\) # ((!\u_Cal_seq|u_Pulse|Equal2~2_combout\ & \u_Cal_seq|u_Pulse|Add0~20_combout\)))) # (!\u_Cal_seq|Mux5~1_combout\ & 
-- (!\u_Cal_seq|u_Pulse|Equal2~2_combout\ & (\u_Cal_seq|u_Pulse|Add0~20_combout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Mux5~1_combout\,
	datab => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	datac => \u_Cal_seq|u_Pulse|Add0~20_combout\,
	datad => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(4));

-- Location: LC_X2_Y5_N5
\u_Cal_seq|u_Pulse|Add0~15\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~15_combout\ = \u_Cal_seq|u_Pulse|Cntr\(5) $ ((((!\u_Cal_seq|u_Pulse|Add0~22\))))
-- \u_Cal_seq|u_Pulse|Add0~17\ = CARRY((!\u_Cal_seq|u_Pulse|Cntr\(5) & ((!\u_Cal_seq|u_Pulse|Add0~22\))))
-- \u_Cal_seq|u_Pulse|Add0~17COUT1_56\ = CARRY((!\u_Cal_seq|u_Pulse|Cntr\(5) & ((!\u_Cal_seq|u_Pulse|Add0~22\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Cal_seq|u_Pulse|Cntr\(5),
	cin => \u_Cal_seq|u_Pulse|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~15_combout\,
	cout0 => \u_Cal_seq|u_Pulse|Add0~17\,
	cout1 => \u_Cal_seq|u_Pulse|Add0~17COUT1_56\);

-- Location: LC_X2_Y4_N6
\u_Cal_seq|u_Pulse|Cntr[5]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(5) = DFFEAS((\u_Cal_seq|u_Pulse|Add0~15_combout\ & (((\u_Cal_seq|Mux4~1_combout\ & \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\)) # (!\u_Cal_seq|u_Pulse|Equal2~2_combout\))) # (!\u_Cal_seq|u_Pulse|Add0~15_combout\ & 
-- (\u_Cal_seq|Mux4~1_combout\ & ((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|u_Pulse|Add0~15_combout\,
	datab => \u_Cal_seq|Mux4~1_combout\,
	datac => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	datad => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(5));

-- Location: LC_X2_Y5_N6
\u_Cal_seq|u_Pulse|Add0~10\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~10_combout\ = (\u_Cal_seq|u_Pulse|Cntr\(6) $ (((!\u_Cal_seq|u_Pulse|Add0~22\ & \u_Cal_seq|u_Pulse|Add0~17\) # (\u_Cal_seq|u_Pulse|Add0~22\ & \u_Cal_seq|u_Pulse|Add0~17COUT1_56\))))
-- \u_Cal_seq|u_Pulse|Add0~12\ = CARRY(((\u_Cal_seq|u_Pulse|Cntr\(6)) # (!\u_Cal_seq|u_Pulse|Add0~17\)))
-- \u_Cal_seq|u_Pulse|Add0~12COUT1_58\ = CARRY(((\u_Cal_seq|u_Pulse|Cntr\(6)) # (!\u_Cal_seq|u_Pulse|Add0~17COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Cal_seq|u_Pulse|Cntr\(6),
	cin => \u_Cal_seq|u_Pulse|Add0~22\,
	cin0 => \u_Cal_seq|u_Pulse|Add0~17\,
	cin1 => \u_Cal_seq|u_Pulse|Add0~17COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~10_combout\,
	cout0 => \u_Cal_seq|u_Pulse|Add0~12\,
	cout1 => \u_Cal_seq|u_Pulse|Add0~12COUT1_58\);

-- Location: LC_X2_Y4_N2
\u_Cal_seq|u_Pulse|Cntr[6]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(6) = DFFEAS((\u_Cal_seq|Mux3~1_combout\ & ((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\) # ((\u_Cal_seq|u_Pulse|Add0~10_combout\ & !\u_Cal_seq|u_Pulse|Equal2~2_combout\)))) # (!\u_Cal_seq|Mux3~1_combout\ & 
-- (\u_Cal_seq|u_Pulse|Add0~10_combout\ & (!\u_Cal_seq|u_Pulse|Equal2~2_combout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|Mux3~1_combout\,
	datab => \u_Cal_seq|u_Pulse|Add0~10_combout\,
	datac => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	datad => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(6));

-- Location: LC_X2_Y5_N7
\u_Cal_seq|u_Pulse|Add0~5\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Add0~5_combout\ = (\u_Cal_seq|u_Pulse|Cntr\(7) $ ((!(!\u_Cal_seq|u_Pulse|Add0~22\ & \u_Cal_seq|u_Pulse|Add0~12\) # (\u_Cal_seq|u_Pulse|Add0~22\ & \u_Cal_seq|u_Pulse|Add0~12COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Cal_seq|u_Pulse|Cntr\(7),
	cin => \u_Cal_seq|u_Pulse|Add0~22\,
	cin0 => \u_Cal_seq|u_Pulse|Add0~12\,
	cin1 => \u_Cal_seq|u_Pulse|Add0~12COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Add0~5_combout\);

-- Location: LC_X3_Y4_N3
\u_Cal_seq|u_Pulse|Cntr[7]\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Cntr\(7) = DFFEAS((\u_Cal_seq|u_Pulse|Equal2~2_combout\ & (((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & \u_Cal_seq|Mux2~1_combout\)))) # (!\u_Cal_seq|u_Pulse|Equal2~2_combout\ & ((\u_Cal_seq|u_Pulse|Add0~5_combout\) # 
-- ((\u_Cal_seq|u_Pulse|Cntr[7]~0_combout\ & \u_Cal_seq|Mux2~1_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|u_Pulse|Equal2~2_combout\,
	datab => \u_Cal_seq|u_Pulse|Add0~5_combout\,
	datac => \u_Cal_seq|u_Pulse|Cntr[7]~0_combout\,
	datad => \u_Cal_seq|Mux2~1_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Cntr\(7));

-- Location: LC_X2_Y4_N8
\u_Cal_seq|u_Pulse|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Equal2~0_combout\ = (!\u_Cal_seq|u_Pulse|Cntr\(7) & (!\u_Cal_seq|u_Pulse|Cntr\(4) & (!\u_Cal_seq|u_Pulse|Cntr\(5) & !\u_Cal_seq|u_Pulse|Cntr\(6))))

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
	dataa => \u_Cal_seq|u_Pulse|Cntr\(7),
	datab => \u_Cal_seq|u_Pulse|Cntr\(4),
	datac => \u_Cal_seq|u_Pulse|Cntr\(5),
	datad => \u_Cal_seq|u_Pulse|Cntr\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Equal2~0_combout\);

-- Location: LC_X2_Y4_N9
\u_Cal_seq|u_Pulse|Equal2~1\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Equal2~1_combout\ = (!\u_Cal_seq|u_Pulse|Cntr\(2) & (!\u_Cal_seq|u_Pulse|Cntr\(3) & (!\u_Cal_seq|u_Pulse|Cntr\(1) & \u_Cal_seq|u_Pulse|Equal2~0_combout\)))

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
	dataa => \u_Cal_seq|u_Pulse|Cntr\(2),
	datab => \u_Cal_seq|u_Pulse|Cntr\(3),
	datac => \u_Cal_seq|u_Pulse|Cntr\(1),
	datad => \u_Cal_seq|u_Pulse|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|u_Pulse|Equal2~1_combout\);

-- Location: LC_X3_Y4_N2
\u_Cal_seq|u_Pulse|Pulse\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|u_Pulse|Pulse~regout\ = DFFEAS((\u_Cal_seq|u_Pulse|Equal2~1_combout\ & ((\u_Cal_seq|u_Pulse|Cntr\(0)) # ((\u_Cal_seq|u_Pulse|Pulse~0\ & \u_Cal_seq|u_Pulse|Equal1~2_combout\)))) # (!\u_Cal_seq|u_Pulse|Equal2~1_combout\ & 
-- (\u_Cal_seq|u_Pulse|Pulse~0\ & ((\u_Cal_seq|u_Pulse|Equal1~2_combout\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|u_Pulse|Equal2~1_combout\,
	datab => \u_Cal_seq|u_Pulse|Pulse~0\,
	datac => \u_Cal_seq|u_Pulse|Cntr\(0),
	datad => \u_Cal_seq|u_Pulse|Equal1~2_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|u_Pulse|Pulse~regout\);

-- Location: LC_X8_Y5_N8
\u_BPMReg|Trig2Beam_Reg[0]~_wirecell\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Trig2Beam_Reg[0]~_wirecell_combout\ = (((!\u_BPMReg|Trig2Beam_Reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_BPMReg|Trig2Beam_Reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Trig2Beam_Reg[0]~_wirecell_combout\);

-- Location: LC_X3_Y5_N0
\u_Beam_Seq|Cntr[0]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(0) = DFFEAS(((!\u_Beam_Seq|Cntr\(0))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg[0]~_wirecell_combout\, , , \u_BeamTrigCon|Sys_Trigger~regout\)
-- \u_Beam_Seq|Cntr[0]~1\ = CARRY(((\u_Beam_Seq|Cntr\(0))))
-- \u_Beam_Seq|Cntr[0]~1COUT1_27\ = CARRY(((\u_Beam_Seq|Cntr\(0))))

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
	clk => \ClkDivIn~combout\,
	datab => \u_Beam_Seq|Cntr\(0),
	datac => \u_BPMReg|Trig2Beam_Reg[0]~_wirecell_combout\,
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(0),
	cout0 => \u_Beam_Seq|Cntr[0]~1\,
	cout1 => \u_Beam_Seq|Cntr[0]~1COUT1_27\);

-- Location: LC_X3_Y5_N1
\u_Beam_Seq|Cntr[1]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(1) = DFFEAS((\u_Beam_Seq|Cntr\(1) $ ((!\u_Beam_Seq|Cntr[0]~1\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg\(1), , , \u_BeamTrigCon|Sys_Trigger~regout\)
-- \u_Beam_Seq|Cntr[1]~3\ = CARRY(((!\u_Beam_Seq|Cntr\(1) & !\u_Beam_Seq|Cntr[0]~1\)))
-- \u_Beam_Seq|Cntr[1]~3COUT1_29\ = CARRY(((!\u_Beam_Seq|Cntr\(1) & !\u_Beam_Seq|Cntr[0]~1COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Beam_Seq|Cntr\(1),
	datac => \u_BPMReg|Trig2Beam_Reg\(1),
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	cin0 => \u_Beam_Seq|Cntr[0]~1\,
	cin1 => \u_Beam_Seq|Cntr[0]~1COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(1),
	cout0 => \u_Beam_Seq|Cntr[1]~3\,
	cout1 => \u_Beam_Seq|Cntr[1]~3COUT1_29\);

-- Location: LC_X3_Y5_N2
\u_Beam_Seq|Cntr[2]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(2) = DFFEAS((\u_Beam_Seq|Cntr\(2) $ ((\u_Beam_Seq|Cntr[1]~3\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg\(2), , , \u_BeamTrigCon|Sys_Trigger~regout\)
-- \u_Beam_Seq|Cntr[2]~5\ = CARRY(((\u_Beam_Seq|Cntr\(2)) # (!\u_Beam_Seq|Cntr[1]~3\)))
-- \u_Beam_Seq|Cntr[2]~5COUT1_31\ = CARRY(((\u_Beam_Seq|Cntr\(2)) # (!\u_Beam_Seq|Cntr[1]~3COUT1_29\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Beam_Seq|Cntr\(2),
	datac => \u_BPMReg|Trig2Beam_Reg\(2),
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	cin0 => \u_Beam_Seq|Cntr[1]~3\,
	cin1 => \u_Beam_Seq|Cntr[1]~3COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(2),
	cout0 => \u_Beam_Seq|Cntr[2]~5\,
	cout1 => \u_Beam_Seq|Cntr[2]~5COUT1_31\);

-- Location: LC_X3_Y5_N3
\u_Beam_Seq|Cntr[3]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(3) = DFFEAS(\u_Beam_Seq|Cntr\(3) $ ((((!\u_Beam_Seq|Cntr[2]~5\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg\(3), , , \u_BeamTrigCon|Sys_Trigger~regout\)
-- \u_Beam_Seq|Cntr[3]~7\ = CARRY((!\u_Beam_Seq|Cntr\(3) & ((!\u_Beam_Seq|Cntr[2]~5\))))
-- \u_Beam_Seq|Cntr[3]~7COUT1_33\ = CARRY((!\u_Beam_Seq|Cntr\(3) & ((!\u_Beam_Seq|Cntr[2]~5COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Beam_Seq|Cntr\(3),
	datac => \u_BPMReg|Trig2Beam_Reg\(3),
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	cin0 => \u_Beam_Seq|Cntr[2]~5\,
	cin1 => \u_Beam_Seq|Cntr[2]~5COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(3),
	cout0 => \u_Beam_Seq|Cntr[3]~7\,
	cout1 => \u_Beam_Seq|Cntr[3]~7COUT1_33\);

-- Location: LC_X3_Y5_N8
\u_Beam_Seq|Cntr[7]~8\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr[7]~8_combout\ = (!\u_BeamTrigCon|Sys_Trigger~regout\ & (!\u_Beam_Seq|Cntr\(2) & (!\u_Beam_Seq|Cntr\(1) & !\u_Beam_Seq|Cntr\(3))))

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
	dataa => \u_BeamTrigCon|Sys_Trigger~regout\,
	datab => \u_Beam_Seq|Cntr\(2),
	datac => \u_Beam_Seq|Cntr\(1),
	datad => \u_Beam_Seq|Cntr\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Beam_Seq|Cntr[7]~8_combout\);

-- Location: LC_X3_Y5_N4
\u_Beam_Seq|Cntr[4]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(4) = DFFEAS(\u_Beam_Seq|Cntr\(4) $ ((((\u_Beam_Seq|Cntr[3]~7\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg\(4), , , \u_BeamTrigCon|Sys_Trigger~regout\)
-- \u_Beam_Seq|Cntr[4]~10\ = CARRY((\u_Beam_Seq|Cntr\(4)) # ((!\u_Beam_Seq|Cntr[3]~7COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Beam_Seq|Cntr\(4),
	datac => \u_BPMReg|Trig2Beam_Reg\(4),
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	cin0 => \u_Beam_Seq|Cntr[3]~7\,
	cin1 => \u_Beam_Seq|Cntr[3]~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(4),
	cout => \u_Beam_Seq|Cntr[4]~10\);

-- Location: LC_X3_Y5_N5
\u_Beam_Seq|Cntr[5]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(5) = DFFEAS(\u_Beam_Seq|Cntr\(5) $ ((((!\u_Beam_Seq|Cntr[4]~10\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg\(5), , , \u_BeamTrigCon|Sys_Trigger~regout\)
-- \u_Beam_Seq|Cntr[5]~12\ = CARRY((!\u_Beam_Seq|Cntr\(5) & ((!\u_Beam_Seq|Cntr[4]~10\))))
-- \u_Beam_Seq|Cntr[5]~12COUT1_35\ = CARRY((!\u_Beam_Seq|Cntr\(5) & ((!\u_Beam_Seq|Cntr[4]~10\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Beam_Seq|Cntr\(5),
	datac => \u_BPMReg|Trig2Beam_Reg\(5),
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	cin => \u_Beam_Seq|Cntr[4]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(5),
	cout0 => \u_Beam_Seq|Cntr[5]~12\,
	cout1 => \u_Beam_Seq|Cntr[5]~12COUT1_35\);

-- Location: LC_X3_Y5_N6
\u_Beam_Seq|Cntr[6]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(6) = DFFEAS(\u_Beam_Seq|Cntr\(6) $ (((((!\u_Beam_Seq|Cntr[4]~10\ & \u_Beam_Seq|Cntr[5]~12\) # (\u_Beam_Seq|Cntr[4]~10\ & \u_Beam_Seq|Cntr[5]~12COUT1_35\))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg\(6), , , \u_BeamTrigCon|Sys_Trigger~regout\)
-- \u_Beam_Seq|Cntr[6]~14\ = CARRY((\u_Beam_Seq|Cntr\(6)) # ((!\u_Beam_Seq|Cntr[5]~12\)))
-- \u_Beam_Seq|Cntr[6]~14COUT1_37\ = CARRY((\u_Beam_Seq|Cntr\(6)) # ((!\u_Beam_Seq|Cntr[5]~12COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Beam_Seq|Cntr\(6),
	datac => \u_BPMReg|Trig2Beam_Reg\(6),
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	cin => \u_Beam_Seq|Cntr[4]~10\,
	cin0 => \u_Beam_Seq|Cntr[5]~12\,
	cin1 => \u_Beam_Seq|Cntr[5]~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(6),
	cout0 => \u_Beam_Seq|Cntr[6]~14\,
	cout1 => \u_Beam_Seq|Cntr[6]~14COUT1_37\);

-- Location: LC_X3_Y5_N7
\u_Beam_Seq|Cntr[7]\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr\(7) = DFFEAS((\u_Beam_Seq|Cntr\(7) $ ((!(!\u_Beam_Seq|Cntr[4]~10\ & \u_Beam_Seq|Cntr[6]~14\) # (\u_Beam_Seq|Cntr[4]~10\ & \u_Beam_Seq|Cntr[6]~14COUT1_37\)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , 
-- \u_Beam_Seq|Cntr[7]~18_combout\, \u_BPMReg|Trig2Beam_Reg\(7), , , \u_BeamTrigCon|Sys_Trigger~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	datab => \u_Beam_Seq|Cntr\(7),
	datac => \u_BPMReg|Trig2Beam_Reg\(7),
	aclr => \Reset~regout\,
	sload => \u_BeamTrigCon|Sys_Trigger~regout\,
	ena => \u_Beam_Seq|Cntr[7]~18_combout\,
	cin => \u_Beam_Seq|Cntr[4]~10\,
	cin0 => \u_Beam_Seq|Cntr[6]~14\,
	cin1 => \u_Beam_Seq|Cntr[6]~14COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|Cntr\(7));

-- Location: LC_X3_Y5_N9
\u_Beam_Seq|Cntr[7]~17\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr[7]~17_combout\ = (!\u_Beam_Seq|Cntr\(6) & (!\u_Beam_Seq|Cntr\(7) & (!\u_Beam_Seq|Cntr\(5) & !\u_Beam_Seq|Cntr\(4))))

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
	dataa => \u_Beam_Seq|Cntr\(6),
	datab => \u_Beam_Seq|Cntr\(7),
	datac => \u_Beam_Seq|Cntr\(5),
	datad => \u_Beam_Seq|Cntr\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Beam_Seq|Cntr[7]~17_combout\);

-- Location: LC_X6_Y5_N4
\u_Beam_Seq|BeamTrigger~1\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|BeamTrigger~1_combout\ = (!\u_BPMReg|Trig2Beam_Reg\(1) & (!\u_BPMReg|Trig2Beam_Reg\(3) & (!\u_BPMReg|Trig2Beam_Reg\(2) & !\u_BPMReg|Trig2Beam_Reg\(4))))

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
	dataa => \u_BPMReg|Trig2Beam_Reg\(1),
	datab => \u_BPMReg|Trig2Beam_Reg\(3),
	datac => \u_BPMReg|Trig2Beam_Reg\(2),
	datad => \u_BPMReg|Trig2Beam_Reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Beam_Seq|BeamTrigger~1_combout\);

-- Location: LC_X8_Y6_N8
\u_Beam_Seq|BeamTrigger~2\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|BeamTrigger~2_combout\ = (\u_Beam_Seq|BeamTrigger~1_combout\ & (((\u_BPMReg|Trig2Beam_Reg\(0) & \u_Beam_Seq|BeamTrigger~0\))))

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
	dataa => \u_Beam_Seq|BeamTrigger~1_combout\,
	datac => \u_BPMReg|Trig2Beam_Reg\(0),
	datad => \u_Beam_Seq|BeamTrigger~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Beam_Seq|BeamTrigger~2_combout\);

-- Location: LC_X2_Y5_N9
\u_Beam_Seq|Cntr[7]~18\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|Cntr[7]~18_combout\ = (!\u_Beam_Seq|BeamTrigger~2_combout\ & ((\u_Beam_Seq|Cntr\(0)) # ((!\u_Beam_Seq|Cntr[7]~17_combout\) # (!\u_Beam_Seq|Cntr[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_Beam_Seq|Cntr\(0),
	datab => \u_Beam_Seq|Cntr[7]~8_combout\,
	datac => \u_Beam_Seq|Cntr[7]~17_combout\,
	datad => \u_Beam_Seq|BeamTrigger~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Beam_Seq|Cntr[7]~18_combout\);

-- Location: LC_X2_Y5_N8
\u_Beam_Seq|BeamTrigger\ : maxv_lcell
-- Equation(s):
-- \u_Beam_Seq|BeamTrigger~regout\ = DFFEAS((\u_Beam_Seq|BeamTrigger~2_combout\) # ((\u_Beam_Seq|Cntr\(0) & (\u_Beam_Seq|Cntr[7]~8_combout\ & \u_Beam_Seq|Cntr[7]~17_combout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Beam_Seq|Cntr\(0),
	datab => \u_Beam_Seq|Cntr[7]~8_combout\,
	datac => \u_Beam_Seq|Cntr[7]~17_combout\,
	datad => \u_Beam_Seq|BeamTrigger~2_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Beam_Seq|BeamTrigger~regout\);

-- Location: LC_X2_Y4_N1
\Trig_Out~0\ : maxv_lcell
-- Equation(s):
-- \Trig_Out~0_combout\ = ((\u_Cal_seq|u_Pulse|Pulse~regout\) # ((\u_Beam_Seq|BeamTrigger~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_Cal_seq|u_Pulse|Pulse~regout\,
	datac => \u_Beam_Seq|BeamTrigger~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Trig_Out~0_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ClkDivIn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ClkDivIn,
	combout => \ClkDivIn~combout\);

-- Location: LC_X6_Y4_N5
\u_BPMReg|OffTime_Reg[7]~2\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|OffTime_Reg[7]~2_combout\ = ((!\u_QSPI|Address\(1) & ((!\u_QSPI|Address\(0)))))

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
	datab => \u_QSPI|Address\(1),
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|OffTime_Reg[7]~2_combout\);

-- Location: LC_X6_Y4_N4
\u_BPMReg|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux0~1_combout\ = (\u_BPMReg|Mux0~0\ & (!\u_QSPI|Address\(4) & (\u_BPMReg|OffTime_Reg[7]~2_combout\ & !\u_QSPI|Address\(2))))

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
	dataa => \u_BPMReg|Mux0~0\,
	datab => \u_QSPI|Address\(4),
	datac => \u_BPMReg|OffTime_Reg[7]~2_combout\,
	datad => \u_QSPI|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux0~1_combout\);

-- Location: LC_X5_Y4_N7
\u_BPMReg|CALAck\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALAck~regout\ = DFFEAS((((\u_QSPI|DataOut\(6) & \u_BPMReg|Mux0~1_combout\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , !\u_QSPI|Write_Strb~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datac => \u_QSPI|DataOut\(6),
	datad => \u_BPMReg|Mux0~1_combout\,
	aclr => \Reset~regout\,
	sclr => \u_QSPI|ALT_INV_Write_Strb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|CALAck~regout\);

-- Location: LC_X11_Y7_N4
\u_handshake|CalRegAckSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CalRegAckSr\(0) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_BPMReg|CALAck~regout\, , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_BPMReg|CALAck~regout\,
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CalRegAckSr\(0));

-- Location: LC_X11_Y7_N6
\u_handshake|CalRegAckSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CalRegAckSr\(1) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_handshake|CalRegAckSr\(0), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_handshake|CalRegAckSr\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CalRegAckSr\(1));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cal_ACK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cal_ACK,
	combout => \Cal_ACK~combout\);

-- Location: LC_X12_Y7_N7
\CALAckInSr[0]\ : maxv_lcell
-- Equation(s):
-- CALAckInSr(0) = DFFEAS((((\Cal_ACK~combout\))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \CLK119Mhz~combout\,
	datad => \Cal_ACK~combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CALAckInSr(0));

-- Location: LC_X12_Y7_N4
\CALAckInSr[1]\ : maxv_lcell
-- Equation(s):
-- CALAckInSr(1) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , CALAckInSr(0), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => CALAckInSr(0),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CALAckInSr(1));

-- Location: LC_X12_Y7_N6
\CALAckInSr[2]\ : maxv_lcell
-- Equation(s):
-- CALAckInSr(2) = DFFEAS(GND, GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , CALAckInSr(1), , , VCC)

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
	clk => \CLK119Mhz~combout\,
	datac => CALAckInSr(1),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CALAckInSr(2));

-- Location: LC_X12_Y7_N2
CalAckInLatch : maxv_lcell
-- Equation(s):
-- \CalAckInLatch~regout\ = DFFEAS((!\u_CalAck|Sys_Trigger~regout\ & ((\CalAckInLatch~regout\) # ((!CALAckInSr(2) & CALAckInSr(1))))), GLOBAL(\CLK119Mhz~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00dc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK119Mhz~combout\,
	dataa => CALAckInSr(2),
	datab => \CalAckInLatch~regout\,
	datac => CALAckInSr(1),
	datad => \u_CalAck|Sys_Trigger~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CalAckInLatch~regout\);

-- Location: LC_X12_Y7_N8
\u_CalAck|Cal_TrigSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_CalAck|Cal_TrigSr\(0) = DFFEAS((((\CalAckInLatch~regout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \CalAckInLatch~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalAck|Cal_TrigSr\(0));

-- Location: LC_X12_Y7_N1
\u_CalAck|Cal_TrigSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_CalAck|Cal_TrigSr\(1) = DFFEAS((((\u_CalAck|Cal_TrigSr\(0)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \u_CalAck|Cal_TrigSr\(0),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalAck|Cal_TrigSr\(1));

-- Location: LC_X12_Y7_N9
\u_CalAck|Cal_TrigSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_CalAck|Cal_TrigSr\(2) = DFFEAS((((\u_CalAck|Cal_TrigSr\(1)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \u_CalAck|Cal_TrigSr\(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalAck|Cal_TrigSr\(2));

-- Location: LC_X12_Y7_N3
\u_CalAck|Sys_Trigger\ : maxv_lcell
-- Equation(s):
-- \u_CalAck|Sys_Trigger~regout\ = DFFEAS(((!\u_CalAck|Cal_TrigSr\(2) & ((\u_CalAck|Cal_TrigSr\(1))))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datab => \u_CalAck|Cal_TrigSr\(2),
	datad => \u_CalAck|Cal_TrigSr\(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_CalAck|Sys_Trigger~regout\);

-- Location: LC_X12_Y7_N5
\u_handshake|CalAckSr[0]\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CalAckSr\(0) = DFFEAS((((\u_CalAck|Sys_Trigger~regout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \u_CalAck|Sys_Trigger~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CalAckSr\(0));

-- Location: LC_X11_Y7_N2
\u_handshake|CalAckSr[1]\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CalAckSr\(1) = DFFEAS((((\u_handshake|CalAckSr\(0)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \u_handshake|CalAckSr\(0),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CalAckSr\(1));

-- Location: LC_X11_Y7_N9
\u_handshake|CalAckSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CalAckSr\(2) = DFFEAS((((\u_handshake|CalAckSr\(1)))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	datad => \u_handshake|CalAckSr\(1),
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CalAckSr\(2));

-- Location: LC_X11_Y7_N5
\u_handshake|CalRegAckSr[2]\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CalRegAckSr\(2) = DFFEAS(GND, GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , \u_handshake|CalRegAckSr\(1), , , VCC)

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
	clk => \ClkDivIn~combout\,
	datac => \u_handshake|CalRegAckSr\(1),
	aclr => \Reset~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CalRegAckSr\(2));

-- Location: LC_X11_Y7_N7
\u_handshake|CALDoneRst\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CALDoneRst~regout\ = DFFEAS((\u_handshake|CalRegAckSr\(1) & (((!\u_handshake|CalAckSr\(2) & \u_handshake|CalAckSr\(1))) # (!\u_handshake|CalRegAckSr\(2)))) # (!\u_handshake|CalRegAckSr\(1) & (!\u_handshake|CalAckSr\(2) & 
-- ((\u_handshake|CalAckSr\(1))))), GLOBAL(\ClkDivIn~combout\), VCC, , !\Reset~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_handshake|CalRegAckSr\(1),
	datab => \u_handshake|CalAckSr\(2),
	datac => \u_handshake|CalRegAckSr\(2),
	datad => \u_handshake|CalAckSr\(1),
	aclr => GND,
	ena => \ALT_INV_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CALDoneRst~regout\);

-- Location: LC_X11_Y4_N9
\u_Cal_seq|iCalDone\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|iCalDone~regout\ = DFFEAS(((\u_CalTrigCon|Sys_Trigger~regout\ & (\u_Cal_seq|Equal3~1_combout\ & !\u_Cal_seq|NextState.Idle~regout\))) # (!\u_Cal_seq|Selector0~4_combout\), GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33b3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_CalTrigCon|Sys_Trigger~regout\,
	datab => \u_Cal_seq|Selector0~4_combout\,
	datac => \u_Cal_seq|Equal3~1_combout\,
	datad => \u_Cal_seq|NextState.Idle~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|iCalDone~regout\);

-- Location: LC_X12_Y5_N8
\u_handshake|CALDone_out\ : maxv_lcell
-- Equation(s):
-- \u_handshake|CALDone_out~regout\ = DFFEAS(((\u_Cal_seq|iCalDone~regout\) # ((\u_handshake|CALDone_out~regout\ & !\u_handshake|CALDoneRst~regout\))), GLOBAL(\ClkDivIn~combout\), !GLOBAL(\Reset~regout\), , , , , , )

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
	clk => \ClkDivIn~combout\,
	dataa => \u_handshake|CALDone_out~regout\,
	datac => \u_handshake|CALDoneRst~regout\,
	datad => \u_Cal_seq|iCalDone~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_handshake|CALDone_out~regout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Qspi_CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Qspi_CLK,
	combout => \Qspi_CLK~combout\);

-- Location: LC_X5_Y4_N6
\u_QSPI|DoutEn\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DoutEn~regout\ = DFFEAS((\u_QSPI|DoutEn~regout\ & (((\u_QSPI|QSPI_State.CMDIn~regout\) # (!\u_QSPI|Selector16~0_combout\)))) # (!\u_QSPI|DoutEn~regout\ & (\u_QSPI|Equal0~0_combout\ & ((\u_QSPI|QSPI_State.CMDIn~regout\)))), 
-- GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DoutEn~regout\,
	datab => \u_QSPI|Equal0~0_combout\,
	datac => \u_QSPI|Selector16~0_combout\,
	datad => \u_QSPI|QSPI_State.CMDIn~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DoutEn~regout\);

-- Location: LC_X5_Y6_N5
\u_QSPI|DataOutSR[6]~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR[6]~0_combout\ = (!\u_QSPI|QSPI_State.Readt~regout\ & (!\u_QSPI|Address\(3) & (!\u_QSPI|Address\(5) & \u_QSPI|Address\(4))))

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
	dataa => \u_QSPI|QSPI_State.Readt~regout\,
	datab => \u_QSPI|Address\(3),
	datac => \u_QSPI|Address\(5),
	datad => \u_QSPI|Address\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOutSR[6]~0_combout\);

-- Location: LC_X5_Y5_N5
\u_BPMReg|PowerOn\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|PowerOn~regout\ = DFFEAS((\u_BPMReg|PowerOn~regout\) # ((\u_QSPI|Write_Strb~regout\ & (\u_QSPI|DataOut\(5) & \u_BPMReg|Mux0~1_combout\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|PowerOn~regout\,
	datab => \u_QSPI|Write_Strb~regout\,
	datac => \u_QSPI|DataOut\(5),
	datad => \u_BPMReg|Mux0~1_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|PowerOn~regout\);

-- Location: LC_X5_Y5_N1
\u_QSPI|DataOutSR[6]~1\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR[6]~1_combout\ = ((\u_BPMReg|Mux0~1_combout\) # ((\u_QSPI|QSPI_State.Readt~regout\)))

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
	datab => \u_BPMReg|Mux0~1_combout\,
	datad => \u_QSPI|QSPI_State.Readt~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOutSR[6]~1_combout\);

-- Location: LC_X5_Y6_N0
\u_QSPI|DataOutSR[6]~2\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR[6]~2_combout\ = (\u_QSPI|QSPI_State.Readt~regout\) # ((\u_QSPI|Address\(2) & (\u_BPMReg|Mux0~0\ & \u_QSPI|Address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datab => \u_BPMReg|Mux0~0\,
	datac => \u_QSPI|QSPI_State.Readt~regout\,
	datad => \u_QSPI|Address\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOutSR[6]~2_combout\);

-- Location: LC_X4_Y5_N9
\u_QSPI|DataOutSR[2]~6\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR[2]~6_combout\ = ((\u_QSPI|Address\(4) & (\u_QSPI|Address\(2))))

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
	datab => \u_QSPI|Address\(4),
	datac => \u_QSPI|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOutSR[2]~6_combout\);

-- Location: LC_X4_Y6_N8
\u_BPMReg|CALReg[4]~5\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg[4]~5_combout\ = (!\u_QSPI|Address\(2) & (\u_QSPI|Address\(0) & (!\u_QSPI|Address\(1) & \u_BPMReg|CALReg[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(0),
	datac => \u_QSPI|Address\(1),
	datad => \u_BPMReg|CALReg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|CALReg[4]~5_combout\);

-- Location: LC_X6_Y6_N7
\u_BPMReg|CALReg[4]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg\(4) = DFFEAS((((!\u_BPMReg|ATT1Reg~0\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|CALReg[4]~5_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~0\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|CALReg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|CALReg\(4));

-- Location: LC_X4_Y5_N3
\u_QSPI|Selector20~4\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~4_combout\ = (!\u_QSPI|Address\(2) & (((!\u_BPMReg|CALReg\(4)) # (!\u_QSPI|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datac => \u_QSPI|Address\(0),
	datad => \u_BPMReg|CALReg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~4_combout\);

-- Location: LC_X4_Y6_N2
\u_BPMReg|ATT1Reg[4]~5\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg[4]~5_combout\ = (!\u_QSPI|Address\(2) & (!\u_QSPI|Address\(0) & (\u_QSPI|Address\(1) & \u_BPMReg|CALReg[4]~2_combout\)))

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
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(0),
	datac => \u_QSPI|Address\(1),
	datad => \u_BPMReg|CALReg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|ATT1Reg[4]~5_combout\);

-- Location: LC_X4_Y7_N6
\u_BPMReg|ATT1Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg\(4) = DFFEAS((((!\u_BPMReg|ATT1Reg~0\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT1Reg[4]~5_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~0\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT1Reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT1Reg\(4));

-- Location: LC_X4_Y5_N2
\u_QSPI|DataOutSR[2]~5\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR[2]~5_combout\ = ((!\u_QSPI|Address\(4) & (!\u_QSPI|Address\(2) & \u_QSPI|Address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_QSPI|Address\(4),
	datac => \u_QSPI|Address\(2),
	datad => \u_QSPI|Address\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|DataOutSR[2]~5_combout\);

-- Location: LC_X4_Y5_N7
\u_QSPI|Selector20~5\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~5_combout\ = (\u_QSPI|DataOutSR[2]~4\ & (((\u_QSPI|DataOutSR[2]~5_combout\)))) # (!\u_QSPI|DataOutSR[2]~4\ & ((\u_QSPI|DataOutSR[2]~5_combout\ & ((!\u_BPMReg|ATT1Reg\(4)))) # (!\u_QSPI|DataOutSR[2]~5_combout\ & 
-- (\u_QSPI|Selector20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Selector20~4_combout\,
	datab => \u_BPMReg|ATT1Reg\(4),
	datac => \u_QSPI|DataOutSR[2]~4\,
	datad => \u_QSPI|DataOutSR[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~5_combout\);

-- Location: LC_X4_Y6_N3
\u_BPMReg|ATT2Reg[4]~0\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT2Reg[4]~0_combout\ = (!\u_QSPI|Address\(2) & (\u_QSPI|Address\(0) & (\u_QSPI|Address\(1) & \u_BPMReg|CALReg[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(0),
	datac => \u_QSPI|Address\(1),
	datad => \u_BPMReg|CALReg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|ATT2Reg[4]~0_combout\);

-- Location: LC_X4_Y7_N7
\u_BPMReg|ATT2Reg[4]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT2Reg\(4) = DFFEAS((((!\u_BPMReg|ATT1Reg~0\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT2Reg[4]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~0\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT2Reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT2Reg\(4));

-- Location: LC_X4_Y5_N4
\u_QSPI|Selector20~6\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~6_combout\ = (\u_QSPI|Selector20~5_combout\ & (((!\u_BPMReg|ATT2Reg\(4)) # (!\u_QSPI|DataOutSR[2]~4\)))) # (!\u_QSPI|Selector20~5_combout\ & (\u_QSPI|Selector20~3\ & (\u_QSPI|DataOutSR[2]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2cec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Selector20~3\,
	datab => \u_QSPI|Selector20~5_combout\,
	datac => \u_QSPI|DataOutSR[2]~4\,
	datad => \u_BPMReg|ATT2Reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~6_combout\);

-- Location: LC_X4_Y5_N5
\u_QSPI|Selector20~7\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector20~7_combout\ = (\u_QSPI|DataOutSR[6]~3\ & ((\u_QSPI|DataOutSR[2]~6_combout\ & ((\u_QSPI|Selector20~1\))) # (!\u_QSPI|DataOutSR[2]~6_combout\ & (\u_QSPI|Selector20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|DataOutSR[6]~3\,
	datab => \u_QSPI|DataOutSR[2]~6_combout\,
	datac => \u_QSPI|Selector20~6_combout\,
	datad => \u_QSPI|Selector20~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector20~7_combout\);

-- Location: LC_X6_Y5_N2
\u_QSPI|Selector22~8\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~8_combout\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Selector22~7\ & ((!\u_BPMReg|RF2Green_Reg\(2)))) # (!\u_QSPI|Selector22~7\ & (!\u_BPMReg|RF2Red_Reg\(2))))) # (!\u_QSPI|Address\(1) & (((\u_QSPI|Selector22~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|RF2Red_Reg\(2),
	datac => \u_QSPI|Selector22~7\,
	datad => \u_BPMReg|RF2Green_Reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~8_combout\);

-- Location: LC_X8_Y6_N9
\u_QSPI|Selector22~3\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~3_combout\ = (\u_QSPI|Address\(0) & ((\u_QSPI|Selector22~2\ & ((!\u_BPMReg|RFWidth_Reg\(2)))) # (!\u_QSPI|Selector22~2\ & (!\u_BPMReg|AMP2RF1_Reg\(2))))) # (!\u_QSPI|Address\(0) & (((\u_QSPI|Selector22~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(0),
	datab => \u_BPMReg|AMP2RF1_Reg\(2),
	datac => \u_QSPI|Selector22~2\,
	datad => \u_BPMReg|RFWidth_Reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~3_combout\);

-- Location: LC_X4_Y4_N7
\u_QSPI|Selector23~1\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~1_combout\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Selector23~0\ & (!\u_BPMReg|RF2Green_Reg\(1))) # (!\u_QSPI|Selector23~0\ & ((!\u_BPMReg|RF2Red_Reg\(1)))))) # (!\u_QSPI|Address\(1) & (((\u_QSPI|Selector23~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "707a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|RF2Green_Reg\(1),
	datac => \u_QSPI|Selector23~0\,
	datad => \u_BPMReg|RF2Red_Reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~1_combout\);

-- Location: LC_X6_Y6_N2
\u_BPMReg|CALReg[2]~3\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg[2]~3_combout\ = ((!\u_QSPI|DataOut\(6) & (!\u_QSPI|DataOut\(7) & !\u_QSPI|DataOut\(5))))

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
	datab => \u_QSPI|DataOut\(6),
	datac => \u_QSPI|DataOut\(7),
	datad => \u_QSPI|DataOut\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|CALReg[2]~3_combout\);

-- Location: LC_X6_Y6_N4
\u_BPMReg|CALReg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg\(1) = DFFEAS((\u_BPMReg|CALReg[2]~4\ & (\u_BPMReg|CALReg[2]~3_combout\ & ((!\u_QSPI|DataOut\(1))))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|CALReg[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|CALReg[2]~4\,
	datab => \u_BPMReg|CALReg[2]~3_combout\,
	datad => \u_QSPI|DataOut\(1),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|CALReg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|CALReg\(1));

-- Location: LC_X4_Y5_N1
\u_QSPI|Selector23~4\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~4_combout\ = (\u_QSPI|Address\(0) & ((\u_QSPI|Address\(2) & ((!\u_QSPI|Address\(1)))) # (!\u_QSPI|Address\(2) & (!\u_BPMReg|CALReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(2),
	datab => \u_BPMReg|CALReg\(1),
	datac => \u_QSPI|Address\(0),
	datad => \u_QSPI|Address\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~4_combout\);

-- Location: LC_X7_Y6_N6
\u_QSPI|Selector23~3\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~3_combout\ = (\u_QSPI|Selector23~2\ & (((!\u_QSPI|Address\(0))) # (!\u_BPMReg|RFWidth_Reg\(1)))) # (!\u_QSPI|Selector23~2\ & (((\u_QSPI|Address\(0) & !\u_BPMReg|AMP2RF1_Reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|RFWidth_Reg\(1),
	datab => \u_QSPI|Selector23~2\,
	datac => \u_QSPI|Address\(0),
	datad => \u_BPMReg|AMP2RF1_Reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~3_combout\);

-- Location: LC_X4_Y5_N6
\u_QSPI|Selector23~5\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~5_combout\ = (\u_QSPI|DataOutSR[2]~4\ & (((\u_QSPI|Selector23~3_combout\) # (\u_QSPI|DataOutSR[2]~5_combout\)))) # (!\u_QSPI|DataOutSR[2]~4\ & (\u_QSPI|Selector23~4_combout\ & ((!\u_QSPI|DataOutSR[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|DataOutSR[2]~4\,
	datab => \u_QSPI|Selector23~4_combout\,
	datac => \u_QSPI|Selector23~3_combout\,
	datad => \u_QSPI|DataOutSR[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~5_combout\);

-- Location: LC_X4_Y7_N3
\u_BPMReg|ATT2Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT2Reg\(1) = DFFEAS((((!\u_BPMReg|ATT1Reg~3\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT2Reg[4]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~3\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT2Reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT2Reg\(1));

-- Location: LC_X4_Y7_N2
\u_BPMReg|ATT1Reg[1]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg\(1) = DFFEAS((((!\u_BPMReg|ATT1Reg~3\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT1Reg[4]~5_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~3\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT1Reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT1Reg\(1));

-- Location: LC_X4_Y5_N8
\u_QSPI|Selector23~6\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~6_combout\ = (\u_QSPI|Selector23~5_combout\ & (((!\u_QSPI|DataOutSR[2]~5_combout\)) # (!\u_BPMReg|ATT2Reg\(1)))) # (!\u_QSPI|Selector23~5_combout\ & (((!\u_BPMReg|ATT1Reg\(1) & \u_QSPI|DataOutSR[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Selector23~5_combout\,
	datab => \u_BPMReg|ATT2Reg\(1),
	datac => \u_BPMReg|ATT1Reg\(1),
	datad => \u_QSPI|DataOutSR[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~6_combout\);

-- Location: LC_X4_Y5_N0
\u_QSPI|Selector23~7\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector23~7_combout\ = (\u_QSPI|DataOutSR[6]~3\ & ((\u_QSPI|DataOutSR[2]~6_combout\ & (\u_QSPI|Selector23~1_combout\)) # (!\u_QSPI|DataOutSR[2]~6_combout\ & ((\u_QSPI|Selector23~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|DataOutSR[6]~3\,
	datab => \u_QSPI|DataOutSR[2]~6_combout\,
	datac => \u_QSPI|Selector23~1_combout\,
	datad => \u_QSPI|Selector23~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector23~7_combout\);

-- Location: LC_X7_Y6_N1
\u_BPMReg|Mux90~3\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~3_combout\ = (\u_QSPI|Address\(0) & ((\u_BPMReg|Mux90~2\ & (!\u_BPMReg|RFWidth_Reg\(0))) # (!\u_BPMReg|Mux90~2\ & ((!\u_BPMReg|AMP2RF1_Reg\(0)))))) # (!\u_QSPI|Address\(0) & (((\u_BPMReg|Mux90~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(0),
	datab => \u_BPMReg|RFWidth_Reg\(0),
	datac => \u_BPMReg|AMP2RF1_Reg\(0),
	datad => \u_BPMReg|Mux90~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~3_combout\);

-- Location: LC_X4_Y6_N6
\u_BPMReg|Mux90~0\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~0_combout\ = (!\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(1),
	datac => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~0_combout\);

-- Location: LC_X4_Y6_N9
\u_BPMReg|ATT1Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg\(0) = DFFEAS((((!\u_BPMReg|ATT1Reg~4\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT1Reg[4]~5_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datac => \u_BPMReg|ATT1Reg~4\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT1Reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT1Reg\(0));

-- Location: LC_X6_Y6_N0
\u_BPMReg|CALReg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg\(0) = DFFEAS(((\u_BPMReg|CALReg[2]~3_combout\ & ((!\u_BPMReg|CALReg[2]~4\) # (!\u_QSPI|DataOut\(0))))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|CALReg[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datab => \u_BPMReg|CALReg[2]~3_combout\,
	datac => \u_QSPI|DataOut\(0),
	datad => \u_BPMReg|CALReg[2]~4\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|CALReg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|CALReg\(0));

-- Location: LC_X4_Y7_N5
\u_BPMReg|ATT2Reg[0]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT2Reg\(0) = DFFEAS((((!\u_BPMReg|ATT1Reg~4\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT2Reg[4]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~4\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT2Reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT2Reg\(0));

-- Location: LC_X4_Y6_N4
\u_BPMReg|Mux90~4\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~4_combout\ = ((\u_QSPI|Address\(1) & ((!\u_BPMReg|ATT2Reg\(0)))) # (!\u_QSPI|Address\(1) & (!\u_BPMReg|CALReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_BPMReg|CALReg\(0),
	datac => \u_QSPI|Address\(1),
	datad => \u_BPMReg|ATT2Reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~4_combout\);

-- Location: LC_X4_Y6_N5
\u_BPMReg|Mux90~5\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~5_combout\ = (\u_QSPI|Address\(0) & (((\u_BPMReg|Mux90~4_combout\)))) # (!\u_QSPI|Address\(0) & (\u_QSPI|Address\(1) & (!\u_BPMReg|ATT1Reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Address\(1),
	datab => \u_BPMReg|ATT1Reg\(0),
	datac => \u_QSPI|Address\(0),
	datad => \u_BPMReg|Mux90~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~5_combout\);

-- Location: LC_X4_Y6_N7
\u_BPMReg|Mux90~6\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~6_combout\ = (\u_QSPI|Address\(4) & (((\u_QSPI|Address\(2))))) # (!\u_QSPI|Address\(4) & ((\u_QSPI|Address\(2) & (\u_BPMReg|Mux90~0_combout\)) # (!\u_QSPI|Address\(2) & ((\u_BPMReg|Mux90~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Mux90~0_combout\,
	datab => \u_QSPI|Address\(4),
	datac => \u_BPMReg|Mux90~5_combout\,
	datad => \u_QSPI|Address\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~6_combout\);

-- Location: LC_X8_Y4_N3
\u_BPMReg|Mux90~7\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~7_combout\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))))) # (!\u_QSPI|Address\(1) & ((\u_QSPI|Address\(0) & (!\u_BPMReg|Trig2Beam_Reg\(0))) # (!\u_QSPI|Address\(0) & ((!\u_BPMReg|OffTime_Reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0d3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Trig2Beam_Reg\(0),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|Address\(0),
	datad => \u_BPMReg|OffTime_Reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~7_combout\);

-- Location: LC_X7_Y4_N7
\u_BPMReg|Mux90~8\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~8_combout\ = (\u_BPMReg|Mux90~7_combout\ & (((!\u_QSPI|Address\(1))) # (!\u_BPMReg|RF2Green_Reg\(0)))) # (!\u_BPMReg|Mux90~7_combout\ & (((!\u_BPMReg|RF2Red_Reg\(0) & \u_QSPI|Address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Mux90~7_combout\,
	datab => \u_BPMReg|RF2Green_Reg\(0),
	datac => \u_BPMReg|RF2Red_Reg\(0),
	datad => \u_QSPI|Address\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~8_combout\);

-- Location: LC_X6_Y4_N0
\u_BPMReg|Mux90~9\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|Mux90~9_combout\ = (\u_BPMReg|Mux90~6_combout\ & (((\u_BPMReg|Mux90~8_combout\) # (!\u_QSPI|Address\(4))))) # (!\u_BPMReg|Mux90~6_combout\ & (\u_BPMReg|Mux90~3_combout\ & (\u_QSPI|Address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|Mux90~3_combout\,
	datab => \u_BPMReg|Mux90~6_combout\,
	datac => \u_QSPI|Address\(4),
	datad => \u_BPMReg|Mux90~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|Mux90~9_combout\);

-- Location: LC_X5_Y4_N2
\u_QSPI|Selector24~1\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector24~1_combout\ = (!\u_QSPI|QSPI_State.Readt~regout\ & (!\u_QSPI|QSPI_State.Read1~regout\ & ((\u_QSPI|DataOutSR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|QSPI_State.Readt~regout\,
	datab => \u_QSPI|QSPI_State.Read1~regout\,
	datad => \u_QSPI|DataOutSR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector24~1_combout\);

-- Location: LC_X5_Y4_N3
\u_QSPI|DataOutSR[1]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR\(1) = DFFEAS((\u_QSPI|Selector24~1_combout\) # ((\u_BPMReg|Mux0~0\ & (\u_QSPI|QSPI_State.Read1~regout\ & \u_BPMReg|Mux90~9_combout\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|Mux0~0\,
	datab => \u_QSPI|QSPI_State.Read1~regout\,
	datac => \u_BPMReg|Mux90~9_combout\,
	datad => \u_QSPI|Selector24~1_combout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOutSR\(1));

-- Location: LC_X5_Y4_N8
\u_QSPI|Selector24~0\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector24~0_combout\ = (\u_QSPI|QSPI_State.Readt~regout\) # (((\u_QSPI|QSPI_State.Read1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|QSPI_State.Readt~regout\,
	datad => \u_QSPI|QSPI_State.Read1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector24~0_combout\);

-- Location: LC_X5_Y4_N1
\u_QSPI|DataOutSR[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR\(2) = DFFEAS((\u_QSPI|Selector23~7_combout\) # ((\u_QSPI|QSPI_State.Readt~regout\ & ((\u_QSPI|DataOutSR\(1))))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Selector24~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|QSPI_State.Readt~regout\,
	datab => \u_QSPI|Selector23~7_combout\,
	datad => \u_QSPI|DataOutSR\(1),
	aclr => \Reset~regout\,
	ena => \u_QSPI|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOutSR\(2));

-- Location: LC_X4_Y7_N8
\u_BPMReg|ATT2Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT2Reg\(2) = DFFEAS((((!\u_BPMReg|ATT1Reg~2\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT2Reg[4]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~2\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT2Reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT2Reg\(2));

-- Location: LC_X4_Y7_N0
\u_BPMReg|ATT1Reg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg\(2) = DFFEAS((((!\u_BPMReg|ATT1Reg~2\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT1Reg[4]~5_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~2\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT1Reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT1Reg\(2));

-- Location: LC_X6_Y6_N5
\u_BPMReg|CALReg[2]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg\(2) = DFFEAS((\u_BPMReg|CALReg[2]~4\ & (\u_BPMReg|CALReg[2]~3_combout\ & ((!\u_QSPI|DataOut\(2))))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|CALReg[4]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|CALReg[2]~4\,
	datab => \u_BPMReg|CALReg[2]~3_combout\,
	datad => \u_QSPI|DataOut\(2),
	aclr => \Reset~regout\,
	ena => \u_BPMReg|CALReg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|CALReg\(2));

-- Location: LC_X5_Y4_N4
\u_BPMReg|CSRReg[3]~0\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CSRReg[3]~0_combout\ = (((\u_QSPI|Write_Strb~regout\ & \u_BPMReg|Mux0~1_combout\)))

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
	datac => \u_QSPI|Write_Strb~regout\,
	datad => \u_BPMReg|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_BPMReg|CSRReg[3]~0_combout\);

-- Location: LC_X7_Y5_N1
\u_BPMReg|CSRReg[2]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~4\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))))) # (!\u_QSPI|Address\(1) & ((\u_QSPI|Address\(0) & (!\u_BPMReg|CALReg\(2))) # (!\u_QSPI|Address\(0) & ((D1_CSRReg[2])))))
-- \u_BPMReg|CSRReg\(2) = DFFEAS(\u_QSPI|Selector22~4\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|CSRReg[3]~0_combout\, \u_QSPI|DataOut\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|CALReg\(2),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(2),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|CSRReg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~4\,
	regout => \u_BPMReg|CSRReg\(2));

-- Location: LC_X7_Y5_N2
\u_QSPI|Selector22~5\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~5_combout\ = (\u_QSPI|Address\(1) & ((\u_QSPI|Selector22~4\ & (!\u_BPMReg|ATT2Reg\(2))) # (!\u_QSPI|Selector22~4\ & ((!\u_BPMReg|ATT1Reg\(2)))))) # (!\u_QSPI|Address\(1) & (((\u_QSPI|Selector22~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|ATT2Reg\(2),
	datab => \u_QSPI|Address\(1),
	datac => \u_BPMReg|ATT1Reg\(2),
	datad => \u_QSPI|Selector22~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~5_combout\);

-- Location: LC_X5_Y6_N6
\u_QSPI|Selector22~10\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~10_combout\ = (!\u_QSPI|Address\(2) & (!\u_QSPI|Address\(5) & (\u_QSPI|Selector22~5_combout\ & !\u_QSPI|Address\(3))))

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
	dataa => \u_QSPI|Address\(2),
	datab => \u_QSPI|Address\(5),
	datac => \u_QSPI|Selector22~5_combout\,
	datad => \u_QSPI|Address\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~10_combout\);

-- Location: LC_X5_Y5_N2
\u_QSPI|Selector22~6\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector22~6_combout\ = (\u_QSPI|DataOutSR[6]~0_combout\ & (((\u_QSPI|DataOutSR[6]~2_combout\)))) # (!\u_QSPI|DataOutSR[6]~0_combout\ & ((\u_QSPI|DataOutSR[6]~2_combout\ & (\u_QSPI|DataOutSR\(2))) # (!\u_QSPI|DataOutSR[6]~2_combout\ & 
-- ((\u_QSPI|Selector22~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|DataOutSR[6]~0_combout\,
	datab => \u_QSPI|DataOutSR\(2),
	datac => \u_QSPI|DataOutSR[6]~2_combout\,
	datad => \u_QSPI|Selector22~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector22~6_combout\);

-- Location: LC_X5_Y5_N0
\u_QSPI|DataOutSR[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR\(3) = DFFEAS((\u_QSPI|DataOutSR[6]~0_combout\ & ((\u_QSPI|Selector22~6_combout\ & (\u_QSPI|Selector22~8_combout\)) # (!\u_QSPI|Selector22~6_combout\ & ((\u_QSPI|Selector22~3_combout\))))) # (!\u_QSPI|DataOutSR[6]~0_combout\ & 
-- (((\u_QSPI|Selector22~6_combout\)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Selector24~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOutSR[6]~0_combout\,
	datab => \u_QSPI|Selector22~8_combout\,
	datac => \u_QSPI|Selector22~3_combout\,
	datad => \u_QSPI|Selector22~6_combout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOutSR\(3));

-- Location: LC_X4_Y7_N1
\u_BPMReg|ATT2Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT2Reg\(3) = DFFEAS((((!\u_BPMReg|ATT1Reg~1\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT2Reg[4]~0_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~1\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT2Reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT2Reg\(3));

-- Location: LC_X6_Y6_N1
\u_BPMReg|CALReg[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|CALReg\(3) = DFFEAS((((!\u_BPMReg|ATT1Reg~1\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|CALReg[4]~5_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~1\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|CALReg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|CALReg\(3));

-- Location: LC_X4_Y7_N4
\u_BPMReg|ATT1Reg[3]\ : maxv_lcell
-- Equation(s):
-- \u_BPMReg|ATT1Reg\(3) = DFFEAS((((!\u_BPMReg|ATT1Reg~1\))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|ATT1Reg[4]~5_combout\, , , , )

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
	clk => \Qspi_CLK~combout\,
	datad => \u_BPMReg|ATT1Reg~1\,
	aclr => \Reset~regout\,
	ena => \u_BPMReg|ATT1Reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_BPMReg|ATT1Reg\(3));

-- Location: LC_X7_Y5_N6
\u_BPMReg|CSRReg[3]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~2\ = (\u_QSPI|Address\(1) & (((\u_QSPI|Address\(0))) # (!\u_BPMReg|ATT1Reg\(3)))) # (!\u_QSPI|Address\(1) & (((D1_CSRReg[3] & !\u_QSPI|Address\(0)))))
-- \u_BPMReg|CSRReg\(3) = DFFEAS(\u_QSPI|Selector21~2\, GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_BPMReg|CSRReg[3]~0_combout\, \u_QSPI|DataOut\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_BPMReg|ATT1Reg\(3),
	datab => \u_QSPI|Address\(1),
	datac => \u_QSPI|DataOut\(3),
	datad => \u_QSPI|Address\(0),
	aclr => \Reset~regout\,
	sload => VCC,
	ena => \u_BPMReg|CSRReg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~2\,
	regout => \u_BPMReg|CSRReg\(3));

-- Location: LC_X7_Y5_N9
\u_QSPI|Selector21~3\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~3_combout\ = (\u_QSPI|Selector21~2\ & (((!\u_QSPI|Address\(0))) # (!\u_BPMReg|ATT2Reg\(3)))) # (!\u_QSPI|Selector21~2\ & (((!\u_BPMReg|CALReg\(3) & \u_QSPI|Address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|ATT2Reg\(3),
	datab => \u_BPMReg|CALReg\(3),
	datac => \u_QSPI|Selector21~2\,
	datad => \u_QSPI|Address\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~3_combout\);

-- Location: LC_X5_Y6_N8
\u_QSPI|Selector21~4\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~4_combout\ = (\u_BPMReg|Mux0~0\ & ((\u_QSPI|Address\(2) & ((\u_BPMReg|Mux90~0_combout\))) # (!\u_QSPI|Address\(2) & (\u_QSPI|Selector21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|Selector21~3_combout\,
	datab => \u_BPMReg|Mux90~0_combout\,
	datac => \u_QSPI|Address\(2),
	datad => \u_BPMReg|Mux0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~4_combout\);

-- Location: LC_X5_Y5_N9
\u_QSPI|Selector21~5\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector21~5_combout\ = (\u_QSPI|DataOutSR[6]~0_combout\ & (((\u_QSPI|DataOutSR[6]~2_combout\) # (\u_QSPI|Selector21~1\)))) # (!\u_QSPI|DataOutSR[6]~0_combout\ & (\u_QSPI|Selector21~4_combout\ & (!\u_QSPI|DataOutSR[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|DataOutSR[6]~0_combout\,
	datab => \u_QSPI|Selector21~4_combout\,
	datac => \u_QSPI|DataOutSR[6]~2_combout\,
	datad => \u_QSPI|Selector21~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector21~5_combout\);

-- Location: LC_X5_Y5_N7
\u_QSPI|DataOutSR[4]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR\(4) = DFFEAS((\u_QSPI|DataOutSR[6]~2_combout\ & ((\u_QSPI|Selector21~5_combout\ & (\u_QSPI|Selector21~7\)) # (!\u_QSPI|Selector21~5_combout\ & ((\u_QSPI|DataOutSR\(3)))))) # (!\u_QSPI|DataOutSR[6]~2_combout\ & 
-- (((\u_QSPI|Selector21~5_combout\)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Selector24~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Selector21~7\,
	datab => \u_QSPI|DataOutSR\(3),
	datac => \u_QSPI|DataOutSR[6]~2_combout\,
	datad => \u_QSPI|Selector21~5_combout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOutSR\(4));

-- Location: LC_X5_Y5_N3
\u_QSPI|DataOutSR[5]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR\(5) = DFFEAS((\u_QSPI|Selector20~7_combout\) # ((\u_QSPI|DataOutSR\(4) & ((\u_QSPI|QSPI_State.Readt~regout\)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Selector24~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Selector20~7_combout\,
	datab => \u_QSPI|DataOutSR\(4),
	datad => \u_QSPI|QSPI_State.Readt~regout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOutSR\(5));

-- Location: LC_X5_Y5_N6
\u_QSPI|Selector19~4\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector19~4_combout\ = (\u_QSPI|DataOutSR[6]~1_combout\ & ((\u_QSPI|DataOutSR[6]~2_combout\ & ((\u_QSPI|DataOutSR\(5)))) # (!\u_QSPI|DataOutSR[6]~2_combout\ & (!\u_BPMReg|PowerOn~regout\)))) # (!\u_QSPI|DataOutSR[6]~1_combout\ & 
-- (((\u_QSPI|DataOutSR[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f434",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_BPMReg|PowerOn~regout\,
	datab => \u_QSPI|DataOutSR[6]~1_combout\,
	datac => \u_QSPI|DataOutSR[6]~2_combout\,
	datad => \u_QSPI|DataOutSR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector19~4_combout\);

-- Location: LC_X5_Y5_N4
\u_QSPI|DataOutSR[6]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR\(6) = DFFEAS((\u_QSPI|Selector19~4_combout\ & (((\u_QSPI|Selector19~3\) # (!\u_QSPI|DataOutSR[6]~0_combout\)))) # (!\u_QSPI|Selector19~4_combout\ & (\u_QSPI|Selector19~1\ & ((\u_QSPI|DataOutSR[6]~0_combout\)))), 
-- GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Selector24~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|Selector19~1\,
	datab => \u_QSPI|Selector19~3\,
	datac => \u_QSPI|Selector19~4_combout\,
	datad => \u_QSPI|DataOutSR[6]~0_combout\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOutSR\(6));

-- Location: LC_X5_Y5_N8
\u_QSPI|Selector18~4\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Selector18~4_combout\ = (\u_QSPI|DataOutSR[6]~2_combout\ & ((\u_QSPI|DataOutSR\(6)) # ((!\u_QSPI|DataOutSR[6]~1_combout\)))) # (!\u_QSPI|DataOutSR[6]~2_combout\ & (((\u_handshake|CALDone_out~regout\ & \u_QSPI|DataOutSR[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_QSPI|DataOutSR\(6),
	datab => \u_handshake|CALDone_out~regout\,
	datac => \u_QSPI|DataOutSR[6]~2_combout\,
	datad => \u_QSPI|DataOutSR[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Selector18~4_combout\);

-- Location: LC_X5_Y4_N0
\u_QSPI|DataOutSR[7]\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|DataOutSR\(7) = DFFEAS((\u_QSPI|DataOutSR[6]~0_combout\ & ((\u_QSPI|Selector18~4_combout\ & (\u_QSPI|Selector18~3\)) # (!\u_QSPI|Selector18~4_combout\ & ((\u_QSPI|Selector18~1\))))) # (!\u_QSPI|DataOutSR[6]~0_combout\ & 
-- (\u_QSPI|Selector18~4_combout\)), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , \u_QSPI|Selector24~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOutSR[6]~0_combout\,
	datab => \u_QSPI|Selector18~4_combout\,
	datac => \u_QSPI|Selector18~3\,
	datad => \u_QSPI|Selector18~1\,
	aclr => \Reset~regout\,
	ena => \u_QSPI|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|DataOutSR\(7));

-- Location: LC_X5_Y4_N9
\u_QSPI|Load\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Load~regout\ = DFFEAS(((\u_QSPI|QSPI_State.CMDIn~regout\ & ((\u_QSPI|Equal0~0_combout\) # (\u_QSPI|Load~regout\)))), GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Qspi_CLK~combout\,
	datab => \u_QSPI|Equal0~0_combout\,
	datac => \u_QSPI|Load~regout\,
	datad => \u_QSPI|QSPI_State.CMDIn~regout\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|Load~regout\);

-- Location: LC_X6_Y4_N2
\u_QSPI|iDout\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|iDout~regout\ = DFFEAS((\u_QSPI|Load~regout\ & (((\u_BPMReg|Mux0~0\ & \u_QSPI|iDout~0\)))) # (!\u_QSPI|Load~regout\ & (\u_QSPI|DataOutSR\(7))), !GLOBAL(\Qspi_CLK~combout\), !GLOBAL(\Reset~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Qspi_CLK~combout\,
	dataa => \u_QSPI|DataOutSR\(7),
	datab => \u_BPMReg|Mux0~0\,
	datac => \u_QSPI|Load~regout\,
	datad => \u_QSPI|iDout~0\,
	aclr => \Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_QSPI|iDout~regout\);

-- Location: LC_X6_Y4_N6
\u_QSPI|iDoutEn\ : maxv_lcell
-- Equation(s):
-- \u_QSPI|Dout~0\ = ((H1_iDoutEn & ((\u_QSPI|iDout~regout\))) # (!H1_iDoutEn & (\Qspi_DIn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Qspi_CLK~combout\,
	dataa => \Qspi_DIn~combout\,
	datac => \u_QSPI|DoutEn~regout\,
	datad => \u_QSPI|iDout~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_QSPI|Dout~0\,
	regout => \u_QSPI|iDoutEn~regout\);

-- Location: LC_X12_Y4_N7
\CL_SW~0\ : maxv_lcell
-- Equation(s):
-- \CL_SW~0_combout\ = (((\u_Cal_seq|SW1~regout\ & \u_clkDet|ClkOk~regout\)))

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
	datac => \u_Cal_seq|SW1~regout\,
	datad => \u_clkDet|ClkOk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL_SW~0_combout\);

-- Location: LC_X10_Y3_N1
\CL_SW~1\ : maxv_lcell
-- Equation(s):
-- \CL_SW~1_combout\ = (((\u_Cal_seq|SW2~regout\ & \u_clkDet|ClkOk~regout\)))

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
	datac => \u_Cal_seq|SW2~regout\,
	datad => \u_clkDet|ClkOk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL_SW~1_combout\);

-- Location: LC_X12_Y4_N1
\CL_SW~2\ : maxv_lcell
-- Equation(s):
-- \CL_SW~2_combout\ = (((\u_Cal_seq|SW4~regout\ & \u_clkDet|ClkOk~regout\)))

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
	datac => \u_Cal_seq|SW4~regout\,
	datad => \u_clkDet|ClkOk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL_SW~2_combout\);

-- Location: LC_X10_Y3_N3
\CL_SW~3\ : maxv_lcell
-- Equation(s):
-- \CL_SW~3_combout\ = (((\u_Cal_seq|SW5~regout\ & \u_clkDet|ClkOk~regout\)))

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
	datac => \u_Cal_seq|SW5~regout\,
	datad => \u_clkDet|ClkOk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL_SW~3_combout\);

-- Location: LC_X12_Y4_N8
\CL_SW~4\ : maxv_lcell
-- Equation(s):
-- \CL_SW~4_combout\ = ((\u_clkDet|ClkOk~regout\ & ((\u_Cal_seq|SW6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_clkDet|ClkOk~regout\,
	datad => \u_Cal_seq|SW6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL_SW~4_combout\);

-- Location: LC_X12_Y5_N5
\u_Cal_seq|AutoOscOn\ : maxv_lcell
-- Equation(s):
-- \OSC_En~0\ = (\u_clkDet|ClkOk~regout\ & (!\u_BPMReg|CSRReg\(3) & ((\u_BPMReg|CSRReg\(2)) # (E1_AutoOscOn))))
-- \u_Cal_seq|AutoOscOn~regout\ = DFFEAS(\OSC_En~0\, GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , !\u_Cal_seq|NextState.Idle~regout\, \u_CalTrigCon|Sys_Trigger~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_BPMReg|CSRReg\(2),
	datab => \u_clkDet|ClkOk~regout\,
	datac => \u_CalTrigCon|Sys_Trigger~regout\,
	datad => \u_BPMReg|CSRReg\(3),
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	sload => VCC,
	ena => \u_Cal_seq|ALT_INV_NextState.Idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OSC_En~0\,
	regout => \u_Cal_seq|AutoOscOn~regout\);

-- Location: LC_X12_Y4_N0
\u_Cal_seq|Selector26~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Selector26~0_combout\ = ((\u_Cal_seq|NextState.Wait_AMP~regout\ & (\u_Cal_seq|Advance~regout\)))

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
	datab => \u_Cal_seq|NextState.Wait_AMP~regout\,
	datac => \u_Cal_seq|Advance~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Selector26~0_combout\);

-- Location: LC_X12_Y4_N5
\u_Cal_seq|iAMP_On\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|iAMP_On~regout\ = DFFEAS((\u_Cal_seq|iAMP_On~regout\ & (((\u_Cal_seq|NextState.Idle~regout\) # (\u_CalTrigCon|Sys_Trigger~regout\)))) # (!\u_Cal_seq|iAMP_On~regout\ & (\u_Cal_seq|Selector26~0_combout\ & (\u_Cal_seq|NextState.Idle~regout\))), 
-- GLOBAL(\ClkDivIn~combout\), !\u_Cal_seq|CalSeq_p~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eae0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ClkDivIn~combout\,
	dataa => \u_Cal_seq|iAMP_On~regout\,
	datab => \u_Cal_seq|Selector26~0_combout\,
	datac => \u_Cal_seq|NextState.Idle~regout\,
	datad => \u_CalTrigCon|Sys_Trigger~regout\,
	aclr => \u_Cal_seq|CalSeq_p~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_Cal_seq|iAMP_On~regout\);

-- Location: LC_X12_Y4_N2
\ivpc~0\ : maxv_lcell
-- Equation(s):
-- \ivpc~0_combout\ = ((\u_BPMReg|PowerOn~regout\ & (\u_Cal_seq|iAMP_On~regout\ & \u_clkDet|ClkOk~regout\)))

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
	datab => \u_BPMReg|PowerOn~regout\,
	datac => \u_Cal_seq|iAMP_On~regout\,
	datad => \u_clkDet|ClkOk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ivpc~0_combout\);

-- Location: LC_X12_Y5_N2
\u_Cal_seq|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \u_Cal_seq|Mux1~0_combout\ = ((!\u_BPMReg|CSRReg\(3) & ((\u_BPMReg|CSRReg\(2)) # (\u_Cal_seq|AutoOscOn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_BPMReg|CSRReg\(2),
	datac => \u_Cal_seq|AutoOscOn~regout\,
	datad => \u_BPMReg|CSRReg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u_Cal_seq|Mux1~0_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ClkDivOut~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ClkDiv(1),
	oe => VCC,
	padio => ww_ClkDivOut);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Trig_Out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Trig_Out~0_combout\,
	oe => VCC,
	padio => ww_Trig_Out);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Clk_Sel_Out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Clk_Sel_Out);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cal_Done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_handshake|CALDone_out~regout\,
	oe => VCC,
	padio => ww_Cal_Done);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Qspi_DOut~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_QSPI|Dout~0\,
	oe => VCC,
	padio => ww_Qspi_DOut);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_ATV[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|CALReg\(4),
	oe => VCC,
	padio => ww_CL_ATV(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_ATV[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|CALReg\(3),
	oe => VCC,
	padio => ww_CL_ATV(2));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_ATV[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|CALReg\(2),
	oe => VCC,
	padio => ww_CL_ATV(3));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_ATV[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|CALReg\(1),
	oe => VCC,
	padio => ww_CL_ATV(4));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_ATV[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|CALReg\(0),
	oe => VCC,
	padio => ww_CL_ATV(5));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_SW[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CL_SW~0_combout\,
	oe => VCC,
	padio => ww_CL_SW(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_SW[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CL_SW~1_combout\,
	oe => VCC,
	padio => ww_CL_SW(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_SW[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CL_SW~1_combout\,
	oe => VCC,
	padio => ww_CL_SW(3));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_SW[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CL_SW~2_combout\,
	oe => VCC,
	padio => ww_CL_SW(4));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_SW[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CL_SW~3_combout\,
	oe => VCC,
	padio => ww_CL_SW(5));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CL_SW[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CL_SW~4_combout\,
	oe => VCC,
	padio => ww_CL_SW(6));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OSC_En~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OSC_En~0\,
	oe => VCC,
	padio => ww_OSC_En);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\VPC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ivpc~0_combout\,
	oe => VCC,
	padio => ww_VPC);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT2_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(4),
	oe => VCC,
	padio => ww_C4_AT2_V(1));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT2_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(3),
	oe => VCC,
	padio => ww_C4_AT2_V(2));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT2_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(2),
	oe => VCC,
	padio => ww_C4_AT2_V(3));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT2_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(1),
	oe => VCC,
	padio => ww_C4_AT2_V(4));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT2_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(0),
	oe => VCC,
	padio => ww_C4_AT2_V(5));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT1_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(4),
	oe => VCC,
	padio => ww_C4_AT1_V(1));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT1_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(3),
	oe => VCC,
	padio => ww_C4_AT1_V(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT1_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(2),
	oe => VCC,
	padio => ww_C4_AT1_V(3));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT1_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(1),
	oe => VCC,
	padio => ww_C4_AT1_V(4));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C4_AT1_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(0),
	oe => VCC,
	padio => ww_C4_AT1_V(5));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT2_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(4),
	oe => VCC,
	padio => ww_C3_AT2_V(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT2_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(3),
	oe => VCC,
	padio => ww_C3_AT2_V(2));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT2_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(2),
	oe => VCC,
	padio => ww_C3_AT2_V(3));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT2_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(1),
	oe => VCC,
	padio => ww_C3_AT2_V(4));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT2_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(0),
	oe => VCC,
	padio => ww_C3_AT2_V(5));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT1_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(4),
	oe => VCC,
	padio => ww_C3_AT1_V(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT1_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(3),
	oe => VCC,
	padio => ww_C3_AT1_V(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT1_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(2),
	oe => VCC,
	padio => ww_C3_AT1_V(3));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT1_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(1),
	oe => VCC,
	padio => ww_C3_AT1_V(4));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C3_AT1_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(0),
	oe => VCC,
	padio => ww_C3_AT1_V(5));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT2_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(4),
	oe => VCC,
	padio => ww_C2_AT2_V(1));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT2_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(3),
	oe => VCC,
	padio => ww_C2_AT2_V(2));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT2_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(2),
	oe => VCC,
	padio => ww_C2_AT2_V(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT2_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(1),
	oe => VCC,
	padio => ww_C2_AT2_V(4));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT2_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(0),
	oe => VCC,
	padio => ww_C2_AT2_V(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT1_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(4),
	oe => VCC,
	padio => ww_C2_AT1_V(1));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT1_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(3),
	oe => VCC,
	padio => ww_C2_AT1_V(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT1_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(2),
	oe => VCC,
	padio => ww_C2_AT1_V(3));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT1_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(1),
	oe => VCC,
	padio => ww_C2_AT1_V(4));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C2_AT1_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(0),
	oe => VCC,
	padio => ww_C2_AT1_V(5));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT2_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(4),
	oe => VCC,
	padio => ww_C1_AT2_V(1));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT2_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(3),
	oe => VCC,
	padio => ww_C1_AT2_V(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT2_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(2),
	oe => VCC,
	padio => ww_C1_AT2_V(3));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT2_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(1),
	oe => VCC,
	padio => ww_C1_AT2_V(4));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT2_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT2Reg\(0),
	oe => VCC,
	padio => ww_C1_AT2_V(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT1_V[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(4),
	oe => VCC,
	padio => ww_C1_AT1_V(1));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT1_V[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(3),
	oe => VCC,
	padio => ww_C1_AT1_V(2));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT1_V[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(2),
	oe => VCC,
	padio => ww_C1_AT1_V(3));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT1_V[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(1),
	oe => VCC,
	padio => ww_C1_AT1_V(4));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C1_AT1_V[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_BPMReg|ATT1Reg\(0),
	oe => VCC,
	padio => ww_C1_AT1_V(5));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Spare_Out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Spare_Out);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TP[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_Cal_seq|SW1~regout\,
	oe => VCC,
	padio => ww_TP(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TP[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u_Cal_seq|Mux1~0_combout\,
	oe => VCC,
	padio => ww_TP(2));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TP[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Reset~regout\,
	oe => VCC,
	padio => ww_TP(3));
END structure;


