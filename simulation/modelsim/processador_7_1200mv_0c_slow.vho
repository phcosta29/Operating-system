-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Standard Edition"

-- DATE "06/30/2017 17:32:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processamento IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	entrada : IN std_logic_vector(15 DOWNTO 0);
	button_in : IN std_logic;
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display2 : BUFFER std_logic_vector(6 DOWNTO 0);
	display3 : BUFFER std_logic_vector(6 DOWNTO 0);
	display4 : BUFFER std_logic_vector(6 DOWNTO 0);
	display5 : BUFFER std_logic_vector(6 DOWNTO 0);
	codigo : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END processamento;

-- Design Ports Information
-- display1[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[0]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[1]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[2]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display4[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display4[1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display4[2]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display4[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display4[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display4[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display4[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display5[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_in	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processamento IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entrada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_button_in : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_codigo : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_96|DB_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_89|WideOr5~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_92|Mux16~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_92|WideOr0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display1[0]~output_o\ : std_logic;
SIGNAL \display1[1]~output_o\ : std_logic;
SIGNAL \display1[2]~output_o\ : std_logic;
SIGNAL \display1[3]~output_o\ : std_logic;
SIGNAL \display1[4]~output_o\ : std_logic;
SIGNAL \display1[5]~output_o\ : std_logic;
SIGNAL \display1[6]~output_o\ : std_logic;
SIGNAL \display2[0]~output_o\ : std_logic;
SIGNAL \display2[1]~output_o\ : std_logic;
SIGNAL \display2[2]~output_o\ : std_logic;
SIGNAL \display2[3]~output_o\ : std_logic;
SIGNAL \display2[4]~output_o\ : std_logic;
SIGNAL \display2[5]~output_o\ : std_logic;
SIGNAL \display2[6]~output_o\ : std_logic;
SIGNAL \display3[0]~output_o\ : std_logic;
SIGNAL \display3[1]~output_o\ : std_logic;
SIGNAL \display3[2]~output_o\ : std_logic;
SIGNAL \display3[3]~output_o\ : std_logic;
SIGNAL \display3[4]~output_o\ : std_logic;
SIGNAL \display3[5]~output_o\ : std_logic;
SIGNAL \display3[6]~output_o\ : std_logic;
SIGNAL \display4[0]~output_o\ : std_logic;
SIGNAL \display4[1]~output_o\ : std_logic;
SIGNAL \display4[2]~output_o\ : std_logic;
SIGNAL \display4[3]~output_o\ : std_logic;
SIGNAL \display4[4]~output_o\ : std_logic;
SIGNAL \display4[5]~output_o\ : std_logic;
SIGNAL \display4[6]~output_o\ : std_logic;
SIGNAL \display5[0]~output_o\ : std_logic;
SIGNAL \display5[1]~output_o\ : std_logic;
SIGNAL \display5[2]~output_o\ : std_logic;
SIGNAL \display5[3]~output_o\ : std_logic;
SIGNAL \display5[4]~output_o\ : std_logic;
SIGNAL \display5[5]~output_o\ : std_logic;
SIGNAL \display5[6]~output_o\ : std_logic;
SIGNAL \codigo[0]~output_o\ : std_logic;
SIGNAL \codigo[1]~output_o\ : std_logic;
SIGNAL \codigo[2]~output_o\ : std_logic;
SIGNAL \codigo[3]~output_o\ : std_logic;
SIGNAL \codigo[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button_in~input_o\ : std_logic;
SIGNAL \comb_96|DFF1~q\ : std_logic;
SIGNAL \comb_96|DFF2~q\ : std_logic;
SIGNAL \comb_96|q_reset~combout\ : std_logic;
SIGNAL \comb_96|Add0~0_combout\ : std_logic;
SIGNAL \comb_96|Selector10~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~1\ : std_logic;
SIGNAL \comb_96|Add0~2_combout\ : std_logic;
SIGNAL \comb_96|Selector9~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~3\ : std_logic;
SIGNAL \comb_96|Add0~4_combout\ : std_logic;
SIGNAL \comb_96|Selector8~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~5\ : std_logic;
SIGNAL \comb_96|Add0~6_combout\ : std_logic;
SIGNAL \comb_96|Selector7~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~7\ : std_logic;
SIGNAL \comb_96|Add0~8_combout\ : std_logic;
SIGNAL \comb_96|Selector6~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~9\ : std_logic;
SIGNAL \comb_96|Add0~10_combout\ : std_logic;
SIGNAL \comb_96|Selector5~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~11\ : std_logic;
SIGNAL \comb_96|Add0~12_combout\ : std_logic;
SIGNAL \comb_96|Selector4~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~13\ : std_logic;
SIGNAL \comb_96|Add0~14_combout\ : std_logic;
SIGNAL \comb_96|Selector3~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~15\ : std_logic;
SIGNAL \comb_96|Add0~16_combout\ : std_logic;
SIGNAL \comb_96|Selector2~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~17\ : std_logic;
SIGNAL \comb_96|Add0~18_combout\ : std_logic;
SIGNAL \comb_96|Selector1~0_combout\ : std_logic;
SIGNAL \comb_96|Add0~19\ : std_logic;
SIGNAL \comb_96|Add0~20_combout\ : std_logic;
SIGNAL \comb_96|Selector0~0_combout\ : std_logic;
SIGNAL \comb_96|DB_out~0_combout\ : std_logic;
SIGNAL \comb_96|DB_out~feeder_combout\ : std_logic;
SIGNAL \comb_96|DB_out~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \comb_93|Add0~9\ : std_logic;
SIGNAL \comb_93|Add0~10_combout\ : std_logic;
SIGNAL \comb_96|DB_out~clkctrl_outclk\ : std_logic;
SIGNAL \comb_88|Mux0~0_combout\ : std_logic;
SIGNAL \comb_88|Mux0~1_combout\ : std_logic;
SIGNAL \comb_88|Mux1~0_combout\ : std_logic;
SIGNAL \comb_88|Mux1~1_combout\ : std_logic;
SIGNAL \comb_88|Mux2~0_combout\ : std_logic;
SIGNAL \comb_88|Mux2~1_combout\ : std_logic;
SIGNAL \comb_88|Mux4~0_combout\ : std_logic;
SIGNAL \comb_88|Mux4~1_combout\ : std_logic;
SIGNAL \comb_89|WideOr2~2_combout\ : std_logic;
SIGNAL \comb_89|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_88|Mux3~0_combout\ : std_logic;
SIGNAL \comb_89|WideOr2~1_combout\ : std_logic;
SIGNAL \comb_89|WideOr2~3_combout\ : std_logic;
SIGNAL \comb_88|Mux31~0_combout\ : std_logic;
SIGNAL \comb_88|Mux31~1_combout\ : std_logic;
SIGNAL \comb_93|Add0~0_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~0_combout\ : std_logic;
SIGNAL \comb_89|Mux3~0_combout\ : std_logic;
SIGNAL \comb_89|Mux3~1_combout\ : std_logic;
SIGNAL \comb_89|Mux6~0_combout\ : std_logic;
SIGNAL \comb_89|Mux6~1_combout\ : std_logic;
SIGNAL \comb_89|Mux4~0_combout\ : std_logic;
SIGNAL \comb_89|Mux4~1_combout\ : std_logic;
SIGNAL \comb_89|Mux5~0_combout\ : std_logic;
SIGNAL \comb_89|Mux5~1_combout\ : std_logic;
SIGNAL \comb_92|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_92|WideOr0~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_92|Decoder0~0_combout\ : std_logic;
SIGNAL \comb_89|Mux2~0_combout\ : std_logic;
SIGNAL \comb_89|Mux2~1_combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \comb_89|Mux1~0_combout\ : std_logic;
SIGNAL \comb_89|Mux1~1_combout\ : std_logic;
SIGNAL \comb_89|Mux0~1_combout\ : std_logic;
SIGNAL \comb_89|Mux0~0_combout\ : std_logic;
SIGNAL \comb_89|Mux0~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][6]~7_combout\ : std_logic;
SIGNAL \comb_88|Mux8~0_combout\ : std_logic;
SIGNAL \comb_88|Mux8~1_combout\ : std_logic;
SIGNAL \comb_88|Mux5~0_combout\ : std_logic;
SIGNAL \comb_88|Mux5~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][2]~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][1]~6_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][6]~q\ : std_logic;
SIGNAL \comb_90|registradores[2][13]~4_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][6]~q\ : std_logic;
SIGNAL \comb_88|Mux10~0_combout\ : std_logic;
SIGNAL \comb_88|Mux10~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][2]~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][6]~q\ : std_logic;
SIGNAL \comb_90|Mux521~0_combout\ : std_logic;
SIGNAL \comb_90|Mux521~1_combout\ : std_logic;
SIGNAL \comb_92|Mux2~0_combout\ : std_logic;
SIGNAL \comb_88|Mux15~0_combout\ : std_logic;
SIGNAL \comb_88|Mux15~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][0]~8_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][6]~q\ : std_logic;
SIGNAL \comb_90|Mux569~0_combout\ : std_logic;
SIGNAL \comb_92|ula~22_combout\ : std_logic;
SIGNAL \comb_92|Mux5~0_combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \comb_89|controle_memoria~0_combout\ : std_logic;
SIGNAL \comb_89|controle_memoria~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][15]~5_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][5]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][14]~10_combout\ : std_logic;
SIGNAL \comb_90|registradores[1][5]~q\ : std_logic;
SIGNAL \comb_90|Mux538~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][3]~11_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][5]~q\ : std_logic;
SIGNAL \comb_90|registradores[2][5]~q\ : std_logic;
SIGNAL \comb_90|Mux538~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][14]~9_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][5]~q\ : std_logic;
SIGNAL \comb_90|registradores[30][5]~q\ : std_logic;
SIGNAL \comb_90|Mux538~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][5]~q\ : std_logic;
SIGNAL \comb_90|Mux538~1_combout\ : std_logic;
SIGNAL \comb_90|Mux538~4_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][15]~1_combout\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \comb_90|registradores[31][0]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][0]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][0]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][0]~q\ : std_logic;
SIGNAL \comb_90|Mux527~0_combout\ : std_logic;
SIGNAL \comb_90|Mux527~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][15]~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][1]~q\ : std_logic;
SIGNAL \comb_90|registradores[3][1]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][1]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][1]~q\ : std_logic;
SIGNAL \comb_90|Mux542~2_combout\ : std_logic;
SIGNAL \comb_90|Mux542~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][1]~q\ : std_logic;
SIGNAL \comb_90|registradores[28][1]~q\ : std_logic;
SIGNAL \comb_90|registradores[30][1]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][1]~q\ : std_logic;
SIGNAL \comb_90|Mux542~0_combout\ : std_logic;
SIGNAL \comb_90|Mux542~1_combout\ : std_logic;
SIGNAL \comb_90|Mux542~4_combout\ : std_logic;
SIGNAL \comb_90|Mux525~1_wirecell_combout\ : std_logic;
SIGNAL \comb_88|Mux28~0_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \comb_90|registradores[31][4]~q\ : std_logic;
SIGNAL \comb_90|registradores[28][4]~q\ : std_logic;
SIGNAL \comb_90|registradores[30][4]~q\ : std_logic;
SIGNAL \comb_90|Mux539~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][4]~q\ : std_logic;
SIGNAL \comb_90|Mux539~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][4]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][4]~q\ : std_logic;
SIGNAL \comb_90|Mux539~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][4]~q\ : std_logic;
SIGNAL \comb_90|Mux539~3_combout\ : std_logic;
SIGNAL \comb_90|Mux539~4_combout\ : std_logic;
SIGNAL \comb_90|Mux522~1_wirecell_combout\ : std_logic;
SIGNAL \comb_90|Mux521~1_wirecell_combout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \comb_90|registradores[28][7]~q\ : std_logic;
SIGNAL \comb_90|registradores[30][7]~q\ : std_logic;
SIGNAL \comb_90|Mux536~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][7]~q\ : std_logic;
SIGNAL \comb_90|Mux536~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][7]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][7]~q\ : std_logic;
SIGNAL \comb_90|Mux536~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][7]~q\ : std_logic;
SIGNAL \comb_90|registradores[2][7]~q\ : std_logic;
SIGNAL \comb_90|Mux536~3_combout\ : std_logic;
SIGNAL \comb_90|Mux536~4_combout\ : std_logic;
SIGNAL \entrada[8]~input_o\ : std_logic;
SIGNAL \entrada[9]~input_o\ : std_logic;
SIGNAL \comb_90|registradores[31][9]~q\ : std_logic;
SIGNAL \comb_90|registradores[28][9]~q\ : std_logic;
SIGNAL \comb_90|registradores[30][9]~q\ : std_logic;
SIGNAL \comb_90|Mux534~0_combout\ : std_logic;
SIGNAL \comb_90|Mux534~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][9]~q\ : std_logic;
SIGNAL \comb_90|registradores[2][9]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][9]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][9]~q\ : std_logic;
SIGNAL \comb_90|Mux534~2_combout\ : std_logic;
SIGNAL \comb_90|Mux534~3_combout\ : std_logic;
SIGNAL \comb_90|Mux534~4_combout\ : std_logic;
SIGNAL \entrada[10]~input_o\ : std_logic;
SIGNAL \entrada[11]~input_o\ : std_logic;
SIGNAL \entrada[12]~input_o\ : std_logic;
SIGNAL \entrada[14]~input_o\ : std_logic;
SIGNAL \entrada[15]~input_o\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \comb_91|memoria~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][15]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][15]~q\ : std_logic;
SIGNAL \comb_90|registradores[30][15]~q\ : std_logic;
SIGNAL \comb_90|Mux560~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][15]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][15]~q\ : std_logic;
SIGNAL \comb_90|Mux512~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][15]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][15]~q\ : std_logic;
SIGNAL \comb_90|Mux512~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][14]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][14]~q\ : std_logic;
SIGNAL \comb_90|Mux561~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][14]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][14]~q\ : std_logic;
SIGNAL \comb_90|registradores[2][14]~q\ : std_logic;
SIGNAL \comb_90|Mux513~0_combout\ : std_logic;
SIGNAL \comb_90|Mux513~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][13]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][13]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][13]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][13]~q\ : std_logic;
SIGNAL \comb_90|Mux514~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][13]~q\ : std_logic;
SIGNAL \comb_90|Mux514~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][13]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][13]~q\ : std_logic;
SIGNAL \comb_90|Mux562~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][12]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][12]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][12]~q\ : std_logic;
SIGNAL \comb_90|Mux515~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][12]~q\ : std_logic;
SIGNAL \comb_90|Mux515~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][12]~q\ : std_logic;
SIGNAL \comb_90|Mux563~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][11]~q\ : std_logic;
SIGNAL \comb_90|Mux564~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][11]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][11]~q\ : std_logic;
SIGNAL \comb_90|registradores[2][11]~q\ : std_logic;
SIGNAL \comb_90|Mux516~0_combout\ : std_logic;
SIGNAL \comb_90|Mux516~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][10]~q\ : std_logic;
SIGNAL \comb_90|registradores[30][10]~q\ : std_logic;
SIGNAL \comb_90|Mux565~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][10]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][10]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][10]~q\ : std_logic;
SIGNAL \comb_90|Mux517~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][10]~q\ : std_logic;
SIGNAL \comb_90|Mux517~1_combout\ : std_logic;
SIGNAL \comb_90|Mux566~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][8]~q\ : std_logic;
SIGNAL \comb_90|Mux567~0_combout\ : std_logic;
SIGNAL \comb_90|Mux568~0_combout\ : std_logic;
SIGNAL \comb_90|Mux570~0_combout\ : std_logic;
SIGNAL \comb_90|Mux571~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][3]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][3]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][3]~q\ : std_logic;
SIGNAL \comb_90|Mux572~0_combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \comb_90|registradores[29][2]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][2]~q\ : std_logic;
SIGNAL \comb_90|registradores[31][2]~q\ : std_logic;
SIGNAL \comb_90|registradores[28][2]~q\ : std_logic;
SIGNAL \comb_90|Mux541~0_combout\ : std_logic;
SIGNAL \comb_90|Mux541~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][2]~q\ : std_logic;
SIGNAL \comb_90|registradores[3][2]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][2]~q\ : std_logic;
SIGNAL \comb_90|registradores[0][2]~q\ : std_logic;
SIGNAL \comb_90|Mux541~2_combout\ : std_logic;
SIGNAL \comb_90|Mux541~3_combout\ : std_logic;
SIGNAL \comb_90|Mux541~4_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][3]~q\ : std_logic;
SIGNAL \comb_90|registradores[28][3]~q\ : std_logic;
SIGNAL \comb_90|Mux540~0_combout\ : std_logic;
SIGNAL \comb_90|Mux540~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][3]~q\ : std_logic;
SIGNAL \comb_90|registradores[3][3]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][3]~q\ : std_logic;
SIGNAL \comb_90|Mux540~2_combout\ : std_logic;
SIGNAL \comb_90|Mux540~3_combout\ : std_logic;
SIGNAL \comb_90|Mux540~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \comb_91|memoria~5_combout\ : std_logic;
SIGNAL \comb_92|ula~30_combout\ : std_logic;
SIGNAL \comb_92|ula~31_combout\ : std_logic;
SIGNAL \comb_92|Mux2~1_combout\ : std_logic;
SIGNAL \comb_92|ula~29_combout\ : std_logic;
SIGNAL \comb_92|ula~32_combout\ : std_logic;
SIGNAL \comb_92|Mux2~2_combout\ : std_logic;
SIGNAL \comb_92|Add3~1\ : std_logic;
SIGNAL \comb_92|Add3~3\ : std_logic;
SIGNAL \comb_92|Add3~4_combout\ : std_logic;
SIGNAL \comb_90|Mux574~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][0]~q\ : std_logic;
SIGNAL \comb_90|Mux575~0_combout\ : std_logic;
SIGNAL \comb_92|Add0~1\ : std_logic;
SIGNAL \comb_92|Add0~3\ : std_logic;
SIGNAL \comb_92|Add0~4_combout\ : std_logic;
SIGNAL \comb_92|Add2~1\ : std_logic;
SIGNAL \comb_92|Add2~3\ : std_logic;
SIGNAL \comb_92|Add2~4_combout\ : std_logic;
SIGNAL \comb_92|Mux2~3_combout\ : std_logic;
SIGNAL \comb_92|Add1~1\ : std_logic;
SIGNAL \comb_92|Add1~3\ : std_logic;
SIGNAL \comb_92|Add1~4_combout\ : std_logic;
SIGNAL \comb_92|Mux2~4_combout\ : std_logic;
SIGNAL \comb_92|Mux2~5_combout\ : std_logic;
SIGNAL \comb_92|Mux2~6_combout\ : std_logic;
SIGNAL \comb_92|Mux16~0_combout\ : std_logic;
SIGNAL \comb_92|Mux16~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_90|Mux509~0_combout\ : std_logic;
SIGNAL \comb_90|Mux509~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][2]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[30][2]~q\ : std_logic;
SIGNAL \comb_90|Mux573~0_combout\ : std_logic;
SIGNAL \comb_92|Add0~5\ : std_logic;
SIGNAL \comb_92|Add0~7\ : std_logic;
SIGNAL \comb_92|Add0~9\ : std_logic;
SIGNAL \comb_92|Add0~11\ : std_logic;
SIGNAL \comb_92|Add0~13\ : std_logic;
SIGNAL \comb_92|Add0~15\ : std_logic;
SIGNAL \comb_92|Add0~17\ : std_logic;
SIGNAL \comb_92|Add0~19\ : std_logic;
SIGNAL \comb_92|Add0~21\ : std_logic;
SIGNAL \comb_92|Add0~23\ : std_logic;
SIGNAL \comb_92|Add0~25\ : std_logic;
SIGNAL \comb_92|Add0~27\ : std_logic;
SIGNAL \comb_92|Add0~29\ : std_logic;
SIGNAL \comb_92|Add0~30_combout\ : std_logic;
SIGNAL \comb_92|Add2~5\ : std_logic;
SIGNAL \comb_92|Add2~7\ : std_logic;
SIGNAL \comb_92|Add2~9\ : std_logic;
SIGNAL \comb_92|Add2~11\ : std_logic;
SIGNAL \comb_92|Add2~13\ : std_logic;
SIGNAL \comb_92|Add2~15\ : std_logic;
SIGNAL \comb_92|Add2~17\ : std_logic;
SIGNAL \comb_92|Add2~19\ : std_logic;
SIGNAL \comb_92|Add2~21\ : std_logic;
SIGNAL \comb_92|Add2~23\ : std_logic;
SIGNAL \comb_92|Add2~25\ : std_logic;
SIGNAL \comb_92|Add2~27\ : std_logic;
SIGNAL \comb_92|Add2~29\ : std_logic;
SIGNAL \comb_92|Add2~30_combout\ : std_logic;
SIGNAL \comb_92|Mux15~2_combout\ : std_logic;
SIGNAL \comb_92|Add1~5\ : std_logic;
SIGNAL \comb_92|Add1~7\ : std_logic;
SIGNAL \comb_92|Add1~9\ : std_logic;
SIGNAL \comb_92|Add1~11\ : std_logic;
SIGNAL \comb_92|Add1~13\ : std_logic;
SIGNAL \comb_92|Add1~15\ : std_logic;
SIGNAL \comb_92|Add1~17\ : std_logic;
SIGNAL \comb_92|Add1~19\ : std_logic;
SIGNAL \comb_92|Add1~21\ : std_logic;
SIGNAL \comb_92|Add1~23\ : std_logic;
SIGNAL \comb_92|Add1~25\ : std_logic;
SIGNAL \comb_92|Add1~27\ : std_logic;
SIGNAL \comb_92|Add1~29\ : std_logic;
SIGNAL \comb_92|Add1~30_combout\ : std_logic;
SIGNAL \comb_92|Add3~13\ : std_logic;
SIGNAL \comb_92|Add3~15\ : std_logic;
SIGNAL \comb_92|Add3~17\ : std_logic;
SIGNAL \comb_92|Add3~19\ : std_logic;
SIGNAL \comb_92|Add3~21\ : std_logic;
SIGNAL \comb_92|Add3~23\ : std_logic;
SIGNAL \comb_92|Add3~25\ : std_logic;
SIGNAL \comb_92|Add3~27\ : std_logic;
SIGNAL \comb_92|Add3~29\ : std_logic;
SIGNAL \comb_92|Add3~30_combout\ : std_logic;
SIGNAL \comb_92|Mux15~3_combout\ : std_logic;
SIGNAL \comb_92|ula~17_combout\ : std_logic;
SIGNAL \comb_92|ula~16_combout\ : std_logic;
SIGNAL \comb_92|ula~15_combout\ : std_logic;
SIGNAL \comb_92|Mux15~0_combout\ : std_logic;
SIGNAL \comb_92|ula~14_combout\ : std_logic;
SIGNAL \comb_92|Mux15~1_combout\ : std_logic;
SIGNAL \comb_92|Mux15~4_combout\ : std_logic;
SIGNAL \comb_92|Mux15~5_combout\ : std_logic;
SIGNAL \comb_90|Mux496~0_combout\ : std_logic;
SIGNAL \comb_90|Mux496~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][15]~q\ : std_logic;
SIGNAL \comb_90|Mux528~0_combout\ : std_logic;
SIGNAL \comb_90|Mux528~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[1][15]~q\ : std_logic;
SIGNAL \comb_90|Mux528~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][15]~q\ : std_logic;
SIGNAL \comb_90|Mux528~3_combout\ : std_logic;
SIGNAL \comb_90|Mux528~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \comb_91|memoria~1_combout\ : std_logic;
SIGNAL \comb_92|ula~7_combout\ : std_logic;
SIGNAL \comb_92|ula~6_combout\ : std_logic;
SIGNAL \comb_92|Mux14~0_combout\ : std_logic;
SIGNAL \comb_92|ula~8_combout\ : std_logic;
SIGNAL \comb_92|ula~5_combout\ : std_logic;
SIGNAL \comb_92|Mux14~1_combout\ : std_logic;
SIGNAL \comb_92|Add1~28_combout\ : std_logic;
SIGNAL \comb_92|Add0~28_combout\ : std_logic;
SIGNAL \comb_92|Add2~28_combout\ : std_logic;
SIGNAL \comb_92|Mux14~2_combout\ : std_logic;
SIGNAL \comb_92|Add3~28_combout\ : std_logic;
SIGNAL \comb_92|Mux14~3_combout\ : std_logic;
SIGNAL \comb_92|Mux14~4_combout\ : std_logic;
SIGNAL \comb_92|Mux14~5_combout\ : std_logic;
SIGNAL \comb_90|Mux497~0_combout\ : std_logic;
SIGNAL \comb_90|Mux497~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][14]~q\ : std_logic;
SIGNAL \comb_90|Mux529~0_combout\ : std_logic;
SIGNAL \comb_90|Mux529~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][14]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][14]~q\ : std_logic;
SIGNAL \comb_90|Mux529~2_combout\ : std_logic;
SIGNAL \comb_90|Mux529~3_combout\ : std_logic;
SIGNAL \comb_90|Mux529~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \comb_91|memoria~2_combout\ : std_logic;
SIGNAL \entrada[13]~input_o\ : std_logic;
SIGNAL \comb_92|ula~11_combout\ : std_logic;
SIGNAL \comb_92|ula~12_combout\ : std_logic;
SIGNAL \comb_92|Mux13~0_combout\ : std_logic;
SIGNAL \comb_92|ula~10_combout\ : std_logic;
SIGNAL \comb_92|ula~13_combout\ : std_logic;
SIGNAL \comb_92|Mux13~1_combout\ : std_logic;
SIGNAL \comb_92|Add3~26_combout\ : std_logic;
SIGNAL \comb_92|Add0~26_combout\ : std_logic;
SIGNAL \comb_92|Add2~26_combout\ : std_logic;
SIGNAL \comb_92|Mux13~2_combout\ : std_logic;
SIGNAL \comb_92|Add1~26_combout\ : std_logic;
SIGNAL \comb_92|Mux13~3_combout\ : std_logic;
SIGNAL \comb_92|Mux13~4_combout\ : std_logic;
SIGNAL \comb_92|Mux13~5_combout\ : std_logic;
SIGNAL \comb_90|Mux498~0_combout\ : std_logic;
SIGNAL \comb_90|Mux498~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[1][13]~q\ : std_logic;
SIGNAL \comb_90|Mux530~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][13]~q\ : std_logic;
SIGNAL \comb_90|Mux530~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][13]~q\ : std_logic;
SIGNAL \comb_90|Mux530~0_combout\ : std_logic;
SIGNAL \comb_90|Mux530~1_combout\ : std_logic;
SIGNAL \comb_90|Mux530~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \comb_90|Mux499~0_combout\ : std_logic;
SIGNAL \comb_92|ula~9_combout\ : std_logic;
SIGNAL \comb_92|Mux5~1_combout\ : std_logic;
SIGNAL \comb_92|Add1~24_combout\ : std_logic;
SIGNAL \comb_92|Add0~24_combout\ : std_logic;
SIGNAL \comb_92|Mux12~0_combout\ : std_logic;
SIGNAL \comb_92|Add2~24_combout\ : std_logic;
SIGNAL \comb_92|Add3~24_combout\ : std_logic;
SIGNAL \comb_92|Mux12~1_combout\ : std_logic;
SIGNAL \comb_92|Mux12~2_combout\ : std_logic;
SIGNAL \comb_92|Mux12~3_combout\ : std_logic;
SIGNAL \comb_92|Mux12~4_combout\ : std_logic;
SIGNAL \comb_90|Mux499~1_combout\ : std_logic;
SIGNAL \comb_90|Mux499~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][12]~q\ : std_logic;
SIGNAL \comb_90|Mux531~0_combout\ : std_logic;
SIGNAL \comb_90|Mux531~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][12]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][12]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][12]~q\ : std_logic;
SIGNAL \comb_90|Mux531~2_combout\ : std_logic;
SIGNAL \comb_90|Mux531~3_combout\ : std_logic;
SIGNAL \comb_90|Mux531~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \comb_90|Mux500~0_combout\ : std_logic;
SIGNAL \comb_92|ula~4_combout\ : std_logic;
SIGNAL \comb_92|Add0~22_combout\ : std_logic;
SIGNAL \comb_92|Add2~22_combout\ : std_logic;
SIGNAL \comb_92|Mux11~0_combout\ : std_logic;
SIGNAL \comb_92|Add1~22_combout\ : std_logic;
SIGNAL \comb_92|Add3~22_combout\ : std_logic;
SIGNAL \comb_92|Mux11~1_combout\ : std_logic;
SIGNAL \comb_92|Mux11~2_combout\ : std_logic;
SIGNAL \comb_92|Mux11~3_combout\ : std_logic;
SIGNAL \comb_92|Mux11~4_combout\ : std_logic;
SIGNAL \comb_90|Mux500~1_combout\ : std_logic;
SIGNAL \comb_90|Mux500~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][11]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][11]~q\ : std_logic;
SIGNAL \comb_90|Mux532~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][11]~q\ : std_logic;
SIGNAL \comb_90|Mux532~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][11]~q\ : std_logic;
SIGNAL \comb_90|Mux532~0_combout\ : std_logic;
SIGNAL \comb_90|Mux532~1_combout\ : std_logic;
SIGNAL \comb_90|Mux532~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \comb_90|Mux501~0_combout\ : std_logic;
SIGNAL \comb_92|Add0~20_combout\ : std_logic;
SIGNAL \comb_92|Add1~20_combout\ : std_logic;
SIGNAL \comb_92|Mux10~0_combout\ : std_logic;
SIGNAL \comb_92|Add2~20_combout\ : std_logic;
SIGNAL \comb_92|Add3~20_combout\ : std_logic;
SIGNAL \comb_92|Mux10~1_combout\ : std_logic;
SIGNAL \comb_92|ula~18_combout\ : std_logic;
SIGNAL \comb_92|Mux10~2_combout\ : std_logic;
SIGNAL \comb_92|Mux10~3_combout\ : std_logic;
SIGNAL \comb_92|Mux10~4_combout\ : std_logic;
SIGNAL \comb_90|Mux501~1_combout\ : std_logic;
SIGNAL \comb_90|Mux501~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][10]~q\ : std_logic;
SIGNAL \comb_90|Mux533~0_combout\ : std_logic;
SIGNAL \comb_90|Mux533~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][10]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][10]~q\ : std_logic;
SIGNAL \comb_90|Mux533~2_combout\ : std_logic;
SIGNAL \comb_90|Mux533~3_combout\ : std_logic;
SIGNAL \comb_90|Mux533~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \comb_90|Mux502~0_combout\ : std_logic;
SIGNAL \comb_92|Add3~18_combout\ : std_logic;
SIGNAL \comb_92|Add2~18_combout\ : std_logic;
SIGNAL \comb_92|Add0~18_combout\ : std_logic;
SIGNAL \comb_92|Mux9~0_combout\ : std_logic;
SIGNAL \comb_92|Add1~18_combout\ : std_logic;
SIGNAL \comb_92|Mux9~1_combout\ : std_logic;
SIGNAL \comb_92|ula~19_combout\ : std_logic;
SIGNAL \comb_92|Mux9~2_combout\ : std_logic;
SIGNAL \comb_92|Mux9~3_combout\ : std_logic;
SIGNAL \comb_92|Mux9~4_combout\ : std_logic;
SIGNAL \comb_90|Mux502~1_combout\ : std_logic;
SIGNAL \comb_90|Mux502~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][9]~q\ : std_logic;
SIGNAL \comb_90|Mux518~0_combout\ : std_logic;
SIGNAL \comb_90|Mux518~1_combout\ : std_logic;
SIGNAL \comb_90|Mux518~1_wirecell_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \comb_90|Mux503~0_combout\ : std_logic;
SIGNAL \comb_92|ula~20_combout\ : std_logic;
SIGNAL \comb_92|Add0~16_combout\ : std_logic;
SIGNAL \comb_92|Add1~16_combout\ : std_logic;
SIGNAL \comb_92|Mux8~0_combout\ : std_logic;
SIGNAL \comb_92|Add3~16_combout\ : std_logic;
SIGNAL \comb_92|Add2~16_combout\ : std_logic;
SIGNAL \comb_92|Mux8~1_combout\ : std_logic;
SIGNAL \comb_92|Mux8~2_combout\ : std_logic;
SIGNAL \comb_92|Mux8~3_combout\ : std_logic;
SIGNAL \comb_92|Mux8~4_combout\ : std_logic;
SIGNAL \comb_90|Mux503~1_combout\ : std_logic;
SIGNAL \comb_90|Mux503~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][8]~q\ : std_logic;
SIGNAL \comb_90|registradores[29][8]~q\ : std_logic;
SIGNAL \comb_90|Mux519~0_combout\ : std_logic;
SIGNAL \comb_90|registradores[31][8]~q\ : std_logic;
SIGNAL \comb_90|registradores[2][8]~q\ : std_logic;
SIGNAL \comb_90|Mux519~1_combout\ : std_logic;
SIGNAL \comb_90|Mux519~1_wirecell_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \comb_90|Mux504~0_combout\ : std_logic;
SIGNAL \comb_92|Add2~14_combout\ : std_logic;
SIGNAL \comb_92|Add0~14_combout\ : std_logic;
SIGNAL \comb_92|Mux7~0_combout\ : std_logic;
SIGNAL \comb_92|Add1~14_combout\ : std_logic;
SIGNAL \comb_92|Add3~14_combout\ : std_logic;
SIGNAL \comb_92|Mux7~1_combout\ : std_logic;
SIGNAL \comb_92|ula~21_combout\ : std_logic;
SIGNAL \comb_92|Mux7~2_combout\ : std_logic;
SIGNAL \comb_92|Mux7~3_combout\ : std_logic;
SIGNAL \comb_92|Mux7~4_combout\ : std_logic;
SIGNAL \comb_90|Mux504~1_combout\ : std_logic;
SIGNAL \comb_90|Mux504~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][7]~q\ : std_logic;
SIGNAL \comb_90|Mux520~0_combout\ : std_logic;
SIGNAL \comb_90|Mux520~1_combout\ : std_logic;
SIGNAL \comb_90|Mux520~1_wirecell_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \comb_90|Mux507~0_combout\ : std_logic;
SIGNAL \comb_92|Add0~8_combout\ : std_logic;
SIGNAL \comb_92|Add1~8_combout\ : std_logic;
SIGNAL \comb_92|Mux4~0_combout\ : std_logic;
SIGNAL \comb_92|Add3~5\ : std_logic;
SIGNAL \comb_92|Add3~7\ : std_logic;
SIGNAL \comb_92|Add3~8_combout\ : std_logic;
SIGNAL \comb_92|Add2~8_combout\ : std_logic;
SIGNAL \comb_92|Mux4~1_combout\ : std_logic;
SIGNAL \comb_92|ula~24_combout\ : std_logic;
SIGNAL \comb_92|Mux4~2_combout\ : std_logic;
SIGNAL \comb_92|Mux4~3_combout\ : std_logic;
SIGNAL \comb_92|Mux4~4_combout\ : std_logic;
SIGNAL \comb_90|Mux507~1_combout\ : std_logic;
SIGNAL \comb_90|Mux507~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][4]~q\ : std_logic;
SIGNAL \comb_90|Mux523~0_combout\ : std_logic;
SIGNAL \comb_90|Mux523~1_combout\ : std_logic;
SIGNAL \comb_90|Mux523~1_wirecell_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \comb_91|memoria~4_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \comb_92|Add2~6_combout\ : std_logic;
SIGNAL \comb_92|Add0~6_combout\ : std_logic;
SIGNAL \comb_92|Mux3~2_combout\ : std_logic;
SIGNAL \comb_92|Add3~6_combout\ : std_logic;
SIGNAL \comb_92|Add1~6_combout\ : std_logic;
SIGNAL \comb_92|Mux3~3_combout\ : std_logic;
SIGNAL \comb_92|ula~26_combout\ : std_logic;
SIGNAL \comb_92|ula~27_combout\ : std_logic;
SIGNAL \comb_92|Mux3~0_combout\ : std_logic;
SIGNAL \comb_92|ula~28_combout\ : std_logic;
SIGNAL \comb_92|ula~25_combout\ : std_logic;
SIGNAL \comb_92|Mux3~1_combout\ : std_logic;
SIGNAL \comb_92|Mux3~4_combout\ : std_logic;
SIGNAL \comb_92|Mux3~5_combout\ : std_logic;
SIGNAL \comb_90|Mux508~0_combout\ : std_logic;
SIGNAL \comb_90|Mux508~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][3]~q\ : std_logic;
SIGNAL \comb_90|Mux524~0_combout\ : std_logic;
SIGNAL \comb_90|Mux524~1_combout\ : std_logic;
SIGNAL \comb_90|Mux524~1_wirecell_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \comb_91|memoria~0_combout\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \comb_92|ula~2_combout\ : std_logic;
SIGNAL \comb_92|ula~1_combout\ : std_logic;
SIGNAL \comb_92|Mux1~0_combout\ : std_logic;
SIGNAL \comb_92|ula~0_combout\ : std_logic;
SIGNAL \comb_92|ula~3_combout\ : std_logic;
SIGNAL \comb_92|Mux1~1_combout\ : std_logic;
SIGNAL \comb_92|Add0~2_combout\ : std_logic;
SIGNAL \comb_92|Add2~2_combout\ : std_logic;
SIGNAL \comb_92|Mux1~2_combout\ : std_logic;
SIGNAL \comb_92|Add1~2_combout\ : std_logic;
SIGNAL \comb_92|Add3~2_combout\ : std_logic;
SIGNAL \comb_92|Mux1~3_combout\ : std_logic;
SIGNAL \comb_92|Mux1~4_combout\ : std_logic;
SIGNAL \comb_92|Mux1~5_combout\ : std_logic;
SIGNAL \comb_90|Mux510~0_combout\ : std_logic;
SIGNAL \comb_90|Mux510~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][1]~q\ : std_logic;
SIGNAL \comb_90|Mux526~0_combout\ : std_logic;
SIGNAL \comb_90|Mux526~1_combout\ : std_logic;
SIGNAL \comb_90|Mux526~1_wirecell_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \comb_91|memoria~6_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~1_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~2_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~3_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~0_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~4_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~7_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~5_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~6_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~8_combout\ : std_logic;
SIGNAL \comb_92|LessThan3~9_combout\ : std_logic;
SIGNAL \comb_92|Mux0~6_combout\ : std_logic;
SIGNAL \comb_92|LessThan2~1_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~3_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~5_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~7_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~9_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~11_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~13_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~15_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~17_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~19_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~21_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~23_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~25_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~27_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~29_cout\ : std_logic;
SIGNAL \comb_92|LessThan2~30_combout\ : std_logic;
SIGNAL \comb_92|Mux0~2_combout\ : std_logic;
SIGNAL \comb_92|Add1~0_combout\ : std_logic;
SIGNAL \comb_92|Add3~0_combout\ : std_logic;
SIGNAL \comb_92|Add2~0_combout\ : std_logic;
SIGNAL \comb_92|Add0~0_combout\ : std_logic;
SIGNAL \comb_92|Mux0~3_combout\ : std_logic;
SIGNAL \comb_92|Mux0~4_combout\ : std_logic;
SIGNAL \comb_92|Mux0~5_combout\ : std_logic;
SIGNAL \comb_92|ula~33_combout\ : std_logic;
SIGNAL \comb_92|ula~36_combout\ : std_logic;
SIGNAL \comb_92|ula~35_combout\ : std_logic;
SIGNAL \comb_92|ula~34_combout\ : std_logic;
SIGNAL \comb_92|Mux0~0_combout\ : std_logic;
SIGNAL \comb_92|Mux0~1_combout\ : std_logic;
SIGNAL \comb_92|Mux0~7_combout\ : std_logic;
SIGNAL \comb_90|Mux511~0_combout\ : std_logic;
SIGNAL \comb_90|Mux511~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][0]~feeder_combout\ : std_logic;
SIGNAL \comb_90|registradores[2][0]~q\ : std_logic;
SIGNAL \comb_90|registradores[3][0]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][0]~q\ : std_logic;
SIGNAL \comb_90|Mux543~2_combout\ : std_logic;
SIGNAL \comb_90|Mux543~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][0]~q\ : std_logic;
SIGNAL \comb_90|Mux543~0_combout\ : std_logic;
SIGNAL \comb_90|Mux543~1_combout\ : std_logic;
SIGNAL \comb_90|Mux543~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \comb_90|Mux506~0_combout\ : std_logic;
SIGNAL \comb_92|Add1~10_combout\ : std_logic;
SIGNAL \comb_92|Add2~10_combout\ : std_logic;
SIGNAL \comb_92|Add0~10_combout\ : std_logic;
SIGNAL \comb_92|Mux5~2_combout\ : std_logic;
SIGNAL \comb_92|Add3~9\ : std_logic;
SIGNAL \comb_92|Add3~10_combout\ : std_logic;
SIGNAL \comb_92|Mux5~3_combout\ : std_logic;
SIGNAL \comb_92|ula~23_combout\ : std_logic;
SIGNAL \comb_92|Mux5~4_combout\ : std_logic;
SIGNAL \comb_92|Mux5~5_combout\ : std_logic;
SIGNAL \comb_92|Mux5~6_combout\ : std_logic;
SIGNAL \comb_90|Mux506~1_combout\ : std_logic;
SIGNAL \comb_90|Mux506~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[29][5]~q\ : std_logic;
SIGNAL \comb_90|Mux522~0_combout\ : std_logic;
SIGNAL \comb_90|Mux522~1_combout\ : std_logic;
SIGNAL \comb_92|Add3~11\ : std_logic;
SIGNAL \comb_92|Add3~12_combout\ : std_logic;
SIGNAL \comb_92|Add1~12_combout\ : std_logic;
SIGNAL \comb_92|Add0~12_combout\ : std_logic;
SIGNAL \comb_92|Mux6~0_combout\ : std_logic;
SIGNAL \comb_92|Add2~12_combout\ : std_logic;
SIGNAL \comb_92|Mux6~1_combout\ : std_logic;
SIGNAL \comb_92|Mux6~2_combout\ : std_logic;
SIGNAL \comb_92|Mux6~3_combout\ : std_logic;
SIGNAL \comb_92|Mux6~4_combout\ : std_logic;
SIGNAL \comb_91|memoria_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \comb_90|Mux505~0_combout\ : std_logic;
SIGNAL \comb_90|Mux505~1_combout\ : std_logic;
SIGNAL \comb_90|Mux505~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[0][6]~q\ : std_logic;
SIGNAL \comb_90|registradores[1][6]~q\ : std_logic;
SIGNAL \comb_90|Mux537~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][6]~q\ : std_logic;
SIGNAL \comb_90|Mux537~3_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][6]~q\ : std_logic;
SIGNAL \comb_90|Mux537~0_combout\ : std_logic;
SIGNAL \comb_90|Mux537~1_combout\ : std_logic;
SIGNAL \comb_90|Mux537~4_combout\ : std_logic;
SIGNAL \comb_92|Equal0~3_combout\ : std_logic;
SIGNAL \comb_92|Equal0~2_combout\ : std_logic;
SIGNAL \comb_92|Equal0~0_combout\ : std_logic;
SIGNAL \comb_92|Equal0~1_combout\ : std_logic;
SIGNAL \comb_92|Equal0~4_combout\ : std_logic;
SIGNAL \comb_92|Selector12~0_combout\ : std_logic;
SIGNAL \comb_92|Selector5~0_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~1_combout\ : std_logic;
SIGNAL \comb_92|Add0~31\ : std_logic;
SIGNAL \comb_92|Add0~32_combout\ : std_logic;
SIGNAL \comb_92|Selector6~0_combout\ : std_logic;
SIGNAL \comb_92|Add1~31\ : std_logic;
SIGNAL \comb_92|Add1~32_combout\ : std_logic;
SIGNAL \comb_92|Selector6~1_combout\ : std_logic;
SIGNAL \comb_92|Selector6~2_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual[4]~2_combout\ : std_logic;
SIGNAL \comb_88|Mux30~0_combout\ : std_logic;
SIGNAL \comb_88|Mux30~1_combout\ : std_logic;
SIGNAL \comb_93|Add0~1\ : std_logic;
SIGNAL \comb_93|Add0~2_combout\ : std_logic;
SIGNAL \comb_92|Selector4~0_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~3_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~4_combout\ : std_logic;
SIGNAL \comb_88|Mux29~0_combout\ : std_logic;
SIGNAL \comb_88|Mux29~1_combout\ : std_logic;
SIGNAL \comb_93|Add0~3\ : std_logic;
SIGNAL \comb_93|Add0~4_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~5_combout\ : std_logic;
SIGNAL \comb_92|Selector3~0_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~6_combout\ : std_logic;
SIGNAL \comb_88|Mux9~0_combout\ : std_logic;
SIGNAL \comb_88|Mux9~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[28][8]~q\ : std_logic;
SIGNAL \comb_90|Mux535~0_combout\ : std_logic;
SIGNAL \comb_90|Mux535~1_combout\ : std_logic;
SIGNAL \comb_90|registradores[1][8]~q\ : std_logic;
SIGNAL \comb_90|Mux535~2_combout\ : std_logic;
SIGNAL \comb_90|registradores[3][8]~q\ : std_logic;
SIGNAL \comb_90|Mux535~3_combout\ : std_logic;
SIGNAL \comb_90|Mux535~4_combout\ : std_logic;
SIGNAL \comb_92|Equal0~5_combout\ : std_logic;
SIGNAL \comb_92|Equal0~8_combout\ : std_logic;
SIGNAL \comb_92|Equal0~7_combout\ : std_logic;
SIGNAL \comb_92|Equal0~6_combout\ : std_logic;
SIGNAL \comb_92|Equal0~9_combout\ : std_logic;
SIGNAL \comb_92|Selector0~0_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~11_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual[4]~10_combout\ : std_logic;
SIGNAL \comb_88|Mux3~1_combout\ : std_logic;
SIGNAL \comb_89|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_89|WideOr5~1_combout\ : std_logic;
SIGNAL \comb_89|WideOr5~1clkctrl_outclk\ : std_logic;
SIGNAL \comb_89|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_89|WideOr1~1_combout\ : std_logic;
SIGNAL \comb_93|Add0~5\ : std_logic;
SIGNAL \comb_93|Add0~6_combout\ : std_logic;
SIGNAL \comb_92|Selector2~0_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~7_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~8_combout\ : std_logic;
SIGNAL \comb_93|Add0~7\ : std_logic;
SIGNAL \comb_93|Add0~8_combout\ : std_logic;
SIGNAL \comb_92|Selector1~0_combout\ : std_logic;
SIGNAL \comb_93|endereco_atual~9_combout\ : std_logic;
SIGNAL \comb_88|Mux13~0_combout\ : std_logic;
SIGNAL \comb_88|Mux13~1_combout\ : std_logic;
SIGNAL \comb_90|Mux525~0_combout\ : std_logic;
SIGNAL \comb_90|Mux525~1_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~1_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~2_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~5_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~4_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~3_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~7_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~8_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~6_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~9_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~11_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~10_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~14_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~13_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~12_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~16_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~17_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~15_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~20_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~18_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~19_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~21_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~23_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~22_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~24_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~25_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~26_combout\ : std_logic;
SIGNAL \comb_94|comb_19|LessThan25~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|LessThan29~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~28_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~27_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~30_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~29_combout\ : std_logic;
SIGNAL \comb_94|comb_19|LessThan29~1_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~31_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade[1]~32_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade[3]~34_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade[2]~33_combout\ : std_logic;
SIGNAL \comb_95|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_89|Decoder0~0_combout\ : std_logic;
SIGNAL \comb_89|Decoder0~1_combout\ : std_logic;
SIGNAL \comb_95|Equal0~0_combout\ : std_logic;
SIGNAL \comb_95|display1[0]~0_combout\ : std_logic;
SIGNAL \comb_95|display1[0]~1_combout\ : std_logic;
SIGNAL \comb_95|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_95|display1[1]~2_combout\ : std_logic;
SIGNAL \comb_95|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_95|display1[2]~3_combout\ : std_logic;
SIGNAL \comb_95|display1[0]~4_combout\ : std_logic;
SIGNAL \comb_95|display1[0]~5_combout\ : std_logic;
SIGNAL \comb_95|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_95|display1[3]~6_combout\ : std_logic;
SIGNAL \comb_95|display1[4]~8_combout\ : std_logic;
SIGNAL \comb_95|display1[4]~7_combout\ : std_logic;
SIGNAL \comb_95|display1[4]~9_combout\ : std_logic;
SIGNAL \comb_95|display1~10_combout\ : std_logic;
SIGNAL \comb_95|display1[5]~11_combout\ : std_logic;
SIGNAL \comb_95|display1~12_combout\ : std_logic;
SIGNAL \comb_95|display1[6]~13_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~42_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~39_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~36_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~37_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~38_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~2_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~1_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~40_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~4_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~3_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~41_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~5_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~8_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~7_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~6_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~9_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~43_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~10_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~11_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~13_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~44_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~14_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~12_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~17_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~15_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~45_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~16_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~18_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~19_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~46_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~20_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~22_combout\ : std_logic;
SIGNAL \comb_94|comb_19|unidade~35_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~23_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~21_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena[1]~24_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena[3]~26_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena[2]~25_combout\ : std_logic;
SIGNAL \comb_95|display2[0]~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena[0]~27_combout\ : std_logic;
SIGNAL \comb_95|WideOr8~0_combout\ : std_logic;
SIGNAL \comb_95|display2[0]~1_combout\ : std_logic;
SIGNAL \comb_95|WideOr7~0_combout\ : std_logic;
SIGNAL \comb_95|display2[1]~2_combout\ : std_logic;
SIGNAL \comb_95|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_95|display2[2]~3_combout\ : std_logic;
SIGNAL \comb_95|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_95|display2[3]~4_combout\ : std_logic;
SIGNAL \comb_95|display2[4]~5_combout\ : std_logic;
SIGNAL \comb_95|display2[0]~6_combout\ : std_logic;
SIGNAL \comb_95|display2[4]~7_combout\ : std_logic;
SIGNAL \comb_95|display2~8_combout\ : std_logic;
SIGNAL \comb_95|display2[5]~9_combout\ : std_logic;
SIGNAL \comb_95|display2~10_combout\ : std_logic;
SIGNAL \comb_95|display2[6]~11_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~36_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~35_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~31_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~32_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~30_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~29_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~1_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~33_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~2_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~4_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~5_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~34_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~3_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~6_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~7_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~8_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~11_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezena~28_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~9_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~10_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~12_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~13_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~14_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena[3]~15_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena[0]~16_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena[2]~18_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena[1]~17_combout\ : std_logic;
SIGNAL \comb_95|WideOr13~0_combout\ : std_logic;
SIGNAL \comb_95|display3[1]~0_combout\ : std_logic;
SIGNAL \comb_95|display3[0]~1_combout\ : std_logic;
SIGNAL \comb_95|WideOr12~0_combout\ : std_logic;
SIGNAL \comb_95|display3[1]~2_combout\ : std_logic;
SIGNAL \comb_95|display3[1]~3_combout\ : std_logic;
SIGNAL \comb_95|WideOr11~0_combout\ : std_logic;
SIGNAL \comb_95|display3[2]~4_combout\ : std_logic;
SIGNAL \comb_95|WideOr10~0_combout\ : std_logic;
SIGNAL \comb_95|display3[3]~5_combout\ : std_logic;
SIGNAL \comb_95|display3[4]~7_combout\ : std_logic;
SIGNAL \comb_95|display3[4]~6_combout\ : std_logic;
SIGNAL \comb_95|display3[4]~8_combout\ : std_logic;
SIGNAL \comb_95|display3~9_combout\ : std_logic;
SIGNAL \comb_95|display3[5]~10_combout\ : std_logic;
SIGNAL \comb_95|display3~11_combout\ : std_logic;
SIGNAL \comb_95|display3[6]~12_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar[0]~9_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~19_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~24_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~21_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~20_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~22_combout\ : std_logic;
SIGNAL \comb_94|comb_19|centena~23_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~1_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~2_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~4_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~3_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~5_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar[2]~7_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar[3]~8_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar[1]~6_combout\ : std_logic;
SIGNAL \comb_95|WideOr18~0_combout\ : std_logic;
SIGNAL \comb_95|display4[0]~0_combout\ : std_logic;
SIGNAL \comb_95|display4[0]~1_combout\ : std_logic;
SIGNAL \comb_95|WideOr17~0_combout\ : std_logic;
SIGNAL \comb_95|display4[1]~2_combout\ : std_logic;
SIGNAL \comb_95|WideOr16~0_combout\ : std_logic;
SIGNAL \comb_95|display4[2]~3_combout\ : std_logic;
SIGNAL \comb_95|WideOr15~0_combout\ : std_logic;
SIGNAL \comb_95|display4[3]~4_combout\ : std_logic;
SIGNAL \comb_95|display4[4]~6_combout\ : std_logic;
SIGNAL \comb_95|display4[4]~5_combout\ : std_logic;
SIGNAL \comb_95|display4[4]~7_combout\ : std_logic;
SIGNAL \comb_95|display4~8_combout\ : std_logic;
SIGNAL \comb_95|display4[5]~9_combout\ : std_logic;
SIGNAL \comb_95|display4~10_combout\ : std_logic;
SIGNAL \comb_95|display4[6]~11_combout\ : std_logic;
SIGNAL \comb_94|comb_19|dezenademilhar[0]~0_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~12_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~10_combout\ : std_logic;
SIGNAL \comb_94|comb_19|milhar~11_combout\ : std_logic;
SIGNAL \comb_95|WideOr23~0_combout\ : std_logic;
SIGNAL \comb_95|display5[0]~0_combout\ : std_logic;
SIGNAL \comb_95|WideOr22~0_combout\ : std_logic;
SIGNAL \comb_95|display5[1]~1_combout\ : std_logic;
SIGNAL \comb_95|WideOr21~0_combout\ : std_logic;
SIGNAL \comb_95|display5[2]~2_combout\ : std_logic;
SIGNAL \comb_95|WideOr20~0_combout\ : std_logic;
SIGNAL \comb_95|display5[3]~3_combout\ : std_logic;
SIGNAL \comb_95|display5[4]~4_combout\ : std_logic;
SIGNAL \comb_95|display5[4]~5_combout\ : std_logic;
SIGNAL \comb_95|display5~6_combout\ : std_logic;
SIGNAL \comb_95|display5[5]~7_combout\ : std_logic;
SIGNAL \comb_95|display5~8_combout\ : std_logic;
SIGNAL \comb_95|display5[6]~9_combout\ : std_logic;
SIGNAL \comb_89|controle_memoria\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_89|controle_pc\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_89|controle_registradores\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_92|branch\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_89|controle_ula\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_89|controle_displays\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_92|ula\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_96|q_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \comb_91|memoria_rtl_0_bypass\ : std_logic_vector(0 TO 16);
SIGNAL \comb_93|endereco_atual\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_entrada <= entrada;
ww_button_in <= button_in;
display1 <= ww_display1;
display2 <= ww_display2;
display3 <= ww_display3;
display4 <= ww_display4;
display5 <= ww_display5;
codigo <= ww_codigo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\comb_90|Mux528~4_combout\ & \comb_90|Mux529~4_combout\ & \comb_90|Mux530~4_combout\ & \comb_90|Mux531~4_combout\ & \comb_90|Mux532~4_combout\ & \comb_90|Mux533~4_combout\ & 
\comb_90|Mux534~4_combout\ & \comb_90|Mux535~4_combout\ & \comb_90|Mux542~4_combout\);

\comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\comb_90|Mux518~1_wirecell_combout\ & \comb_90|Mux519~1_wirecell_combout\ & \comb_90|Mux520~1_wirecell_combout\ & \comb_90|Mux521~1_wirecell_combout\ & 
\comb_90|Mux522~1_wirecell_combout\ & \comb_90|Mux523~1_wirecell_combout\ & \comb_90|Mux524~1_wirecell_combout\ & \comb_90|Mux525~1_wirecell_combout\ & \comb_90|Mux526~1_wirecell_combout\ & \comb_90|Mux527~1_combout\);

\comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\comb_90|Mux518~1_wirecell_combout\ & \comb_90|Mux519~1_wirecell_combout\ & \comb_90|Mux520~1_wirecell_combout\ & \comb_90|Mux521~1_wirecell_combout\ & 
\comb_90|Mux522~1_wirecell_combout\ & \comb_90|Mux523~1_wirecell_combout\ & \comb_90|Mux524~1_wirecell_combout\ & \comb_90|Mux525~1_wirecell_combout\ & \comb_90|Mux526~1_wirecell_combout\ & \comb_90|Mux527~1_combout\);

\comb_91|memoria_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a8\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(1);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a9\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(2);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a10\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(3);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a11\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(4);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a12\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(5);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a13\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(6);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a14\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(7);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a15\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(8);

\comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \comb_90|Mux536~4_combout\ & \comb_90|Mux537~4_combout\ & \comb_90|Mux538~4_combout\ & \comb_90|Mux539~4_combout\ & \comb_90|Mux540~4_combout\ & \comb_90|Mux541~4_combout\
& \comb_90|Mux543~4_combout\);

\comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\comb_90|Mux518~1_wirecell_combout\ & \comb_90|Mux519~1_wirecell_combout\ & \comb_90|Mux520~1_wirecell_combout\ & \comb_90|Mux521~1_wirecell_combout\ & 
\comb_90|Mux522~1_wirecell_combout\ & \comb_90|Mux523~1_wirecell_combout\ & \comb_90|Mux524~1_wirecell_combout\ & \comb_90|Mux525~1_wirecell_combout\ & \comb_90|Mux526~1_wirecell_combout\ & \comb_90|Mux527~1_combout\);

\comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\comb_90|Mux518~1_wirecell_combout\ & \comb_90|Mux519~1_wirecell_combout\ & \comb_90|Mux520~1_wirecell_combout\ & \comb_90|Mux521~1_wirecell_combout\ & 
\comb_90|Mux522~1_wirecell_combout\ & \comb_90|Mux523~1_wirecell_combout\ & \comb_90|Mux524~1_wirecell_combout\ & \comb_90|Mux525~1_wirecell_combout\ & \comb_90|Mux526~1_wirecell_combout\ & \comb_90|Mux527~1_combout\);

\comb_91|memoria_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a2\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a3\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a4\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a5\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a6\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\comb_91|memoria_rtl_0|auto_generated|ram_block1a7\ <= \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\comb_96|DB_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_96|DB_out~q\);

\comb_89|WideOr5~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_89|WideOr5~1_combout\);

\comb_92|Mux16~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_92|Mux16~0_combout\);

\comb_92|WideOr0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_92|WideOr0~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\display1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display1[0]~1_combout\,
	devoe => ww_devoe,
	o => \display1[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\display1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display1[1]~2_combout\,
	devoe => ww_devoe,
	o => \display1[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\display1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display1[2]~3_combout\,
	devoe => ww_devoe,
	o => \display1[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\display1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display1[3]~6_combout\,
	devoe => ww_devoe,
	o => \display1[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\display1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display1[4]~9_combout\,
	devoe => ww_devoe,
	o => \display1[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\display1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display1[5]~11_combout\,
	devoe => ww_devoe,
	o => \display1[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\display1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display1[6]~13_combout\,
	devoe => ww_devoe,
	o => \display1[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\display2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display2[0]~1_combout\,
	devoe => ww_devoe,
	o => \display2[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\display2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display2[1]~2_combout\,
	devoe => ww_devoe,
	o => \display2[1]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\display2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display2[2]~3_combout\,
	devoe => ww_devoe,
	o => \display2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\display2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display2[3]~4_combout\,
	devoe => ww_devoe,
	o => \display2[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\display2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display2[4]~7_combout\,
	devoe => ww_devoe,
	o => \display2[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\display2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display2[5]~9_combout\,
	devoe => ww_devoe,
	o => \display2[5]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\display2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display2[6]~11_combout\,
	devoe => ww_devoe,
	o => \display2[6]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\display3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display3[0]~1_combout\,
	devoe => ww_devoe,
	o => \display3[0]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\display3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display3[1]~3_combout\,
	devoe => ww_devoe,
	o => \display3[1]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\display3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display3[2]~4_combout\,
	devoe => ww_devoe,
	o => \display3[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\display3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display3[3]~5_combout\,
	devoe => ww_devoe,
	o => \display3[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\display3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display3[4]~8_combout\,
	devoe => ww_devoe,
	o => \display3[4]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\display3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display3[5]~10_combout\,
	devoe => ww_devoe,
	o => \display3[5]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\display3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display3[6]~12_combout\,
	devoe => ww_devoe,
	o => \display3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\display4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display4[0]~1_combout\,
	devoe => ww_devoe,
	o => \display4[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\display4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display4[1]~2_combout\,
	devoe => ww_devoe,
	o => \display4[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\display4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display4[2]~3_combout\,
	devoe => ww_devoe,
	o => \display4[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\display4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display4[3]~4_combout\,
	devoe => ww_devoe,
	o => \display4[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\display4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display4[4]~7_combout\,
	devoe => ww_devoe,
	o => \display4[4]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\display4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display4[5]~9_combout\,
	devoe => ww_devoe,
	o => \display4[5]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\display4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display4[6]~11_combout\,
	devoe => ww_devoe,
	o => \display4[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\display5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display5[0]~0_combout\,
	devoe => ww_devoe,
	o => \display5[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\display5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display5[1]~1_combout\,
	devoe => ww_devoe,
	o => \display5[1]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\display5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display5[2]~2_combout\,
	devoe => ww_devoe,
	o => \display5[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\display5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display5[3]~3_combout\,
	devoe => ww_devoe,
	o => \display5[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\display5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display5[4]~5_combout\,
	devoe => ww_devoe,
	o => \display5[4]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\display5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display5[5]~7_combout\,
	devoe => ww_devoe,
	o => \display5[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\display5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_95|display5[6]~9_combout\,
	devoe => ww_devoe,
	o => \display5[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\codigo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_88|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \codigo[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\codigo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_88|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \codigo[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\codigo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_88|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \codigo[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\codigo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_88|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \codigo[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\codigo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_88|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \codigo[4]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y35_N22
\button_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_in,
	o => \button_in~input_o\);

-- Location: FF_X55_Y55_N19
\comb_96|DFF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \button_in~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|DFF1~q\);

-- Location: FF_X55_Y55_N23
\comb_96|DFF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_96|DFF1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|DFF2~q\);

-- Location: LCCOMB_X55_Y55_N18
\comb_96|q_reset\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|q_reset~combout\ = \comb_96|DFF2~q\ $ (\comb_96|DFF1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|DFF2~q\,
	datac => \comb_96|DFF1~q\,
	combout => \comb_96|q_reset~combout\);

-- Location: LCCOMB_X56_Y55_N10
\comb_96|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~0_combout\ = \comb_96|q_reg\(0) $ (VCC)
-- \comb_96|Add0~1\ = CARRY(\comb_96|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reg\(0),
	datad => VCC,
	combout => \comb_96|Add0~0_combout\,
	cout => \comb_96|Add0~1\);

-- Location: LCCOMB_X55_Y55_N26
\comb_96|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector10~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & ((\comb_96|q_reg\(0)))) # (!\comb_96|q_reg\(10) & (\comb_96|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reset~combout\,
	datab => \comb_96|Add0~0_combout\,
	datac => \comb_96|q_reg\(0),
	datad => \comb_96|q_reg\(10),
	combout => \comb_96|Selector10~0_combout\);

-- Location: FF_X55_Y55_N27
\comb_96|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(0));

-- Location: LCCOMB_X56_Y55_N12
\comb_96|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~2_combout\ = (\comb_96|q_reg\(1) & (!\comb_96|Add0~1\)) # (!\comb_96|q_reg\(1) & ((\comb_96|Add0~1\) # (GND)))
-- \comb_96|Add0~3\ = CARRY((!\comb_96|Add0~1\) # (!\comb_96|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(1),
	datad => VCC,
	cin => \comb_96|Add0~1\,
	combout => \comb_96|Add0~2_combout\,
	cout => \comb_96|Add0~3\);

-- Location: LCCOMB_X55_Y55_N6
\comb_96|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector9~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & ((\comb_96|q_reg\(1)))) # (!\comb_96|q_reg\(10) & (\comb_96|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reset~combout\,
	datab => \comb_96|Add0~2_combout\,
	datac => \comb_96|q_reg\(1),
	datad => \comb_96|q_reg\(10),
	combout => \comb_96|Selector9~0_combout\);

-- Location: FF_X55_Y55_N7
\comb_96|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(1));

-- Location: LCCOMB_X56_Y55_N14
\comb_96|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~4_combout\ = (\comb_96|q_reg\(2) & (\comb_96|Add0~3\ $ (GND))) # (!\comb_96|q_reg\(2) & (!\comb_96|Add0~3\ & VCC))
-- \comb_96|Add0~5\ = CARRY((\comb_96|q_reg\(2) & !\comb_96|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reg\(2),
	datad => VCC,
	cin => \comb_96|Add0~3\,
	combout => \comb_96|Add0~4_combout\,
	cout => \comb_96|Add0~5\);

-- Location: LCCOMB_X55_Y55_N16
\comb_96|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector8~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & ((\comb_96|q_reg\(2)))) # (!\comb_96|q_reg\(10) & (\comb_96|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reset~combout\,
	datab => \comb_96|Add0~4_combout\,
	datac => \comb_96|q_reg\(2),
	datad => \comb_96|q_reg\(10),
	combout => \comb_96|Selector8~0_combout\);

-- Location: FF_X55_Y55_N17
\comb_96|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(2));

-- Location: LCCOMB_X56_Y55_N16
\comb_96|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~6_combout\ = (\comb_96|q_reg\(3) & (!\comb_96|Add0~5\)) # (!\comb_96|q_reg\(3) & ((\comb_96|Add0~5\) # (GND)))
-- \comb_96|Add0~7\ = CARRY((!\comb_96|Add0~5\) # (!\comb_96|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(3),
	datad => VCC,
	cin => \comb_96|Add0~5\,
	combout => \comb_96|Add0~6_combout\,
	cout => \comb_96|Add0~7\);

-- Location: LCCOMB_X56_Y55_N0
\comb_96|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector7~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & (\comb_96|q_reg\(3))) # (!\comb_96|q_reg\(10) & ((\comb_96|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reg\(10),
	datab => \comb_96|q_reset~combout\,
	datac => \comb_96|q_reg\(3),
	datad => \comb_96|Add0~6_combout\,
	combout => \comb_96|Selector7~0_combout\);

-- Location: FF_X56_Y55_N1
\comb_96|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(3));

-- Location: LCCOMB_X56_Y55_N18
\comb_96|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~8_combout\ = (\comb_96|q_reg\(4) & (\comb_96|Add0~7\ $ (GND))) # (!\comb_96|q_reg\(4) & (!\comb_96|Add0~7\ & VCC))
-- \comb_96|Add0~9\ = CARRY((\comb_96|q_reg\(4) & !\comb_96|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reg\(4),
	datad => VCC,
	cin => \comb_96|Add0~7\,
	combout => \comb_96|Add0~8_combout\,
	cout => \comb_96|Add0~9\);

-- Location: LCCOMB_X56_Y55_N6
\comb_96|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector6~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & (\comb_96|q_reg\(4))) # (!\comb_96|q_reg\(10) & ((\comb_96|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reg\(10),
	datab => \comb_96|q_reset~combout\,
	datac => \comb_96|q_reg\(4),
	datad => \comb_96|Add0~8_combout\,
	combout => \comb_96|Selector6~0_combout\);

-- Location: FF_X56_Y55_N7
\comb_96|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(4));

-- Location: LCCOMB_X56_Y55_N20
\comb_96|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~10_combout\ = (\comb_96|q_reg\(5) & (!\comb_96|Add0~9\)) # (!\comb_96|q_reg\(5) & ((\comb_96|Add0~9\) # (GND)))
-- \comb_96|Add0~11\ = CARRY((!\comb_96|Add0~9\) # (!\comb_96|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(5),
	datad => VCC,
	cin => \comb_96|Add0~9\,
	combout => \comb_96|Add0~10_combout\,
	cout => \comb_96|Add0~11\);

-- Location: LCCOMB_X56_Y55_N4
\comb_96|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector5~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & (\comb_96|q_reg\(5))) # (!\comb_96|q_reg\(10) & ((\comb_96|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reg\(10),
	datab => \comb_96|q_reset~combout\,
	datac => \comb_96|q_reg\(5),
	datad => \comb_96|Add0~10_combout\,
	combout => \comb_96|Selector5~0_combout\);

-- Location: FF_X56_Y55_N5
\comb_96|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(5));

-- Location: LCCOMB_X56_Y55_N22
\comb_96|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~12_combout\ = (\comb_96|q_reg\(6) & (\comb_96|Add0~11\ $ (GND))) # (!\comb_96|q_reg\(6) & (!\comb_96|Add0~11\ & VCC))
-- \comb_96|Add0~13\ = CARRY((\comb_96|q_reg\(6) & !\comb_96|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(6),
	datad => VCC,
	cin => \comb_96|Add0~11\,
	combout => \comb_96|Add0~12_combout\,
	cout => \comb_96|Add0~13\);

-- Location: LCCOMB_X56_Y55_N2
\comb_96|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector4~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & ((\comb_96|q_reg\(6)))) # (!\comb_96|q_reg\(10) & (\comb_96|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|Add0~12_combout\,
	datab => \comb_96|q_reset~combout\,
	datac => \comb_96|q_reg\(6),
	datad => \comb_96|q_reg\(10),
	combout => \comb_96|Selector4~0_combout\);

-- Location: FF_X56_Y55_N3
\comb_96|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(6));

-- Location: LCCOMB_X56_Y55_N24
\comb_96|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~14_combout\ = (\comb_96|q_reg\(7) & (!\comb_96|Add0~13\)) # (!\comb_96|q_reg\(7) & ((\comb_96|Add0~13\) # (GND)))
-- \comb_96|Add0~15\ = CARRY((!\comb_96|Add0~13\) # (!\comb_96|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(7),
	datad => VCC,
	cin => \comb_96|Add0~13\,
	combout => \comb_96|Add0~14_combout\,
	cout => \comb_96|Add0~15\);

-- Location: LCCOMB_X55_Y55_N30
\comb_96|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector3~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & (\comb_96|q_reg\(7))) # (!\comb_96|q_reg\(10) & ((\comb_96|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reset~combout\,
	datab => \comb_96|q_reg\(10),
	datac => \comb_96|q_reg\(7),
	datad => \comb_96|Add0~14_combout\,
	combout => \comb_96|Selector3~0_combout\);

-- Location: FF_X55_Y55_N31
\comb_96|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(7));

-- Location: LCCOMB_X56_Y55_N26
\comb_96|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~16_combout\ = (\comb_96|q_reg\(8) & (\comb_96|Add0~15\ $ (GND))) # (!\comb_96|q_reg\(8) & (!\comb_96|Add0~15\ & VCC))
-- \comb_96|Add0~17\ = CARRY((\comb_96|q_reg\(8) & !\comb_96|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(8),
	datad => VCC,
	cin => \comb_96|Add0~15\,
	combout => \comb_96|Add0~16_combout\,
	cout => \comb_96|Add0~17\);

-- Location: LCCOMB_X56_Y55_N8
\comb_96|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector2~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & ((\comb_96|q_reg\(8)))) # (!\comb_96|q_reg\(10) & (\comb_96|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|Add0~16_combout\,
	datab => \comb_96|q_reset~combout\,
	datac => \comb_96|q_reg\(8),
	datad => \comb_96|q_reg\(10),
	combout => \comb_96|Selector2~0_combout\);

-- Location: FF_X56_Y55_N9
\comb_96|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(8));

-- Location: LCCOMB_X56_Y55_N28
\comb_96|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~18_combout\ = (\comb_96|q_reg\(9) & (!\comb_96|Add0~17\)) # (!\comb_96|q_reg\(9) & ((\comb_96|Add0~17\) # (GND)))
-- \comb_96|Add0~19\ = CARRY((!\comb_96|Add0~17\) # (!\comb_96|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(9),
	datad => VCC,
	cin => \comb_96|Add0~17\,
	combout => \comb_96|Add0~18_combout\,
	cout => \comb_96|Add0~19\);

-- Location: LCCOMB_X55_Y55_N28
\comb_96|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector1~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10) & (\comb_96|q_reg\(9))) # (!\comb_96|q_reg\(10) & ((\comb_96|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reset~combout\,
	datab => \comb_96|q_reg\(10),
	datac => \comb_96|q_reg\(9),
	datad => \comb_96|Add0~18_combout\,
	combout => \comb_96|Selector1~0_combout\);

-- Location: FF_X55_Y55_N29
\comb_96|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(9));

-- Location: LCCOMB_X56_Y55_N30
\comb_96|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Add0~20_combout\ = \comb_96|Add0~19\ $ (!\comb_96|q_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_96|q_reg\(10),
	cin => \comb_96|Add0~19\,
	combout => \comb_96|Add0~20_combout\);

-- Location: LCCOMB_X55_Y55_N20
\comb_96|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|Selector0~0_combout\ = (!\comb_96|q_reset~combout\ & ((\comb_96|q_reg\(10)) # (\comb_96|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_96|q_reset~combout\,
	datac => \comb_96|q_reg\(10),
	datad => \comb_96|Add0~20_combout\,
	combout => \comb_96|Selector0~0_combout\);

-- Location: FF_X55_Y55_N21
\comb_96|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|q_reg\(10));

-- Location: LCCOMB_X55_Y55_N22
\comb_96|DB_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|DB_out~0_combout\ = (\comb_96|q_reg\(10) & (\comb_96|DFF2~q\)) # (!\comb_96|q_reg\(10) & ((\comb_96|DB_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|q_reg\(10),
	datac => \comb_96|DFF2~q\,
	datad => \comb_96|DB_out~q\,
	combout => \comb_96|DB_out~0_combout\);

-- Location: LCCOMB_X55_Y55_N24
\comb_96|DB_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_96|DB_out~feeder_combout\ = \comb_96|DB_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_96|DB_out~0_combout\,
	combout => \comb_96|DB_out~feeder_combout\);

-- Location: FF_X55_Y55_N25
\comb_96|DB_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_96|DB_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_96|DB_out~q\);

-- Location: IOIBUF_X115_Y14_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X56_Y50_N20
\comb_93|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|Add0~8_combout\ = (\comb_93|endereco_atual\(4) & (\comb_93|Add0~7\ $ (GND))) # (!\comb_93|endereco_atual\(4) & (!\comb_93|Add0~7\ & VCC))
-- \comb_93|Add0~9\ = CARRY((\comb_93|endereco_atual\(4) & !\comb_93|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(4),
	datad => VCC,
	cin => \comb_93|Add0~7\,
	combout => \comb_93|Add0~8_combout\,
	cout => \comb_93|Add0~9\);

-- Location: LCCOMB_X56_Y50_N22
\comb_93|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|Add0~10_combout\ = \comb_93|endereco_atual\(5) $ (\comb_93|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(5),
	cin => \comb_93|Add0~9\,
	combout => \comb_93|Add0~10_combout\);

-- Location: CLKCTRL_G13
\comb_96|DB_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_96|DB_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_96|DB_out~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y50_N6
\comb_88|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux0~0_combout\ = (\comb_93|endereco_atual\(3) & (!\comb_93|endereco_atual\(2) & (\comb_93|endereco_atual\(1) $ (\comb_93|endereco_atual\(0))))) # (!\comb_93|endereco_atual\(3) & (\comb_93|endereco_atual\(2) $ (((!\comb_93|endereco_atual\(1) & 
-- \comb_93|endereco_atual\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(3),
	datab => \comb_93|endereco_atual\(2),
	datac => \comb_93|endereco_atual\(1),
	datad => \comb_93|endereco_atual\(0),
	combout => \comb_88|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y50_N0
\comb_88|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux0~1_combout\ = (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & \comb_88|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(5),
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_88|Mux0~0_combout\,
	combout => \comb_88|Mux0~1_combout\);

-- Location: LCCOMB_X55_Y50_N24
\comb_88|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux1~0_combout\ = (!\comb_93|endereco_atual\(2) & ((\comb_93|endereco_atual\(3) & ((!\comb_93|endereco_atual\(0)))) # (!\comb_93|endereco_atual\(3) & (\comb_93|endereco_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(3),
	datab => \comb_93|endereco_atual\(2),
	datac => \comb_93|endereco_atual\(1),
	datad => \comb_93|endereco_atual\(0),
	combout => \comb_88|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y50_N14
\comb_88|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux1~1_combout\ = (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & \comb_88|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(5),
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_88|Mux1~0_combout\,
	combout => \comb_88|Mux1~1_combout\);

-- Location: LCCOMB_X55_Y50_N10
\comb_88|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux2~0_combout\ = (\comb_93|endereco_atual\(2) & (((!\comb_93|endereco_atual\(3) & !\comb_93|endereco_atual\(0))))) # (!\comb_93|endereco_atual\(2) & ((\comb_93|endereco_atual\(3) & ((!\comb_93|endereco_atual\(0)))) # 
-- (!\comb_93|endereco_atual\(3) & ((\comb_93|endereco_atual\(1)) # (\comb_93|endereco_atual\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(1),
	datab => \comb_93|endereco_atual\(2),
	datac => \comb_93|endereco_atual\(3),
	datad => \comb_93|endereco_atual\(0),
	combout => \comb_88|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y50_N2
\comb_88|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux2~1_combout\ = (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & \comb_88|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(5),
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_88|Mux2~0_combout\,
	combout => \comb_88|Mux2~1_combout\);

-- Location: LCCOMB_X55_Y50_N28
\comb_88|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux4~0_combout\ = (!\comb_93|endereco_atual\(4) & ((\comb_93|endereco_atual\(3) & (!\comb_93|endereco_atual\(2) & !\comb_93|endereco_atual\(0))) # (!\comb_93|endereco_atual\(3) & (\comb_93|endereco_atual\(2) $ (\comb_93|endereco_atual\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(3),
	datab => \comb_93|endereco_atual\(2),
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_93|endereco_atual\(0),
	combout => \comb_88|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y50_N4
\comb_88|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux4~1_combout\ = (!\comb_93|endereco_atual\(5) & \comb_88|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(5),
	datad => \comb_88|Mux4~0_combout\,
	combout => \comb_88|Mux4~1_combout\);

-- Location: LCCOMB_X54_Y50_N20
\comb_89|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr2~2_combout\ = (\comb_88|Mux4~1_combout\ & ((\comb_88|Mux1~1_combout\) # ((\comb_88|Mux3~1_combout\)))) # (!\comb_88|Mux4~1_combout\ & ((\comb_88|Mux2~1_combout\) # ((\comb_88|Mux1~1_combout\ & \comb_88|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux1~1_combout\,
	datab => \comb_88|Mux2~1_combout\,
	datac => \comb_88|Mux4~1_combout\,
	datad => \comb_88|Mux3~1_combout\,
	combout => \comb_89|WideOr2~2_combout\);

-- Location: LCCOMB_X54_Y50_N8
\comb_89|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr2~0_combout\ = (\comb_88|Mux1~1_combout\ & (!\comb_88|Mux4~1_combout\ & !\comb_88|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux1~1_combout\,
	datab => \comb_88|Mux4~1_combout\,
	datac => \comb_88|Mux0~1_combout\,
	combout => \comb_89|WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y50_N12
\comb_88|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux3~0_combout\ = (!\comb_93|endereco_atual\(2) & ((\comb_93|endereco_atual\(1) & ((!\comb_93|endereco_atual\(0)))) # (!\comb_93|endereco_atual\(1) & (\comb_93|endereco_atual\(3) & \comb_93|endereco_atual\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(1),
	datab => \comb_93|endereco_atual\(3),
	datac => \comb_93|endereco_atual\(0),
	datad => \comb_93|endereco_atual\(2),
	combout => \comb_88|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y50_N16
\comb_89|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr2~1_combout\ = (\comb_93|endereco_atual\(4)) # ((\comb_93|endereco_atual\(5)) # ((!\comb_88|Mux3~0_combout\ & !\comb_88|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux3~0_combout\,
	datab => \comb_88|Mux2~0_combout\,
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_93|endereco_atual\(5),
	combout => \comb_89|WideOr2~1_combout\);

-- Location: LCCOMB_X54_Y50_N0
\comb_89|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr2~3_combout\ = (\comb_88|Mux0~1_combout\ & ((\comb_89|WideOr2~2_combout\) # ((\comb_89|WideOr2~0_combout\ & \comb_89|WideOr2~1_combout\)))) # (!\comb_88|Mux0~1_combout\ & (((\comb_89|WideOr2~0_combout\ & \comb_89|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux0~1_combout\,
	datab => \comb_89|WideOr2~2_combout\,
	datac => \comb_89|WideOr2~0_combout\,
	datad => \comb_89|WideOr2~1_combout\,
	combout => \comb_89|WideOr2~3_combout\);

-- Location: LCCOMB_X55_Y47_N2
\comb_89|controle_pc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_pc\(0) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (\comb_89|controle_pc\(0))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|WideOr2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_pc\(0),
	datac => \comb_89|WideOr2~3_combout\,
	datad => \comb_89|WideOr5~1clkctrl_outclk\,
	combout => \comb_89|controle_pc\(0));

-- Location: LCCOMB_X56_Y50_N6
\comb_88|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux31~0_combout\ = (!\comb_93|endereco_atual\(3) & ((\comb_93|endereco_atual\(0) & ((!\comb_93|endereco_atual\(2)))) # (!\comb_93|endereco_atual\(0) & ((\comb_93|endereco_atual\(1)) # (\comb_93|endereco_atual\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(0),
	datab => \comb_93|endereco_atual\(1),
	datac => \comb_93|endereco_atual\(3),
	datad => \comb_93|endereco_atual\(2),
	combout => \comb_88|Mux31~0_combout\);

-- Location: LCCOMB_X56_Y50_N4
\comb_88|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux31~1_combout\ = (\comb_88|Mux31~0_combout\ & (!\comb_93|endereco_atual\(5) & !\comb_93|endereco_atual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux31~0_combout\,
	datac => \comb_93|endereco_atual\(5),
	datad => \comb_93|endereco_atual\(4),
	combout => \comb_88|Mux31~1_combout\);

-- Location: LCCOMB_X56_Y50_N12
\comb_93|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|Add0~0_combout\ = \comb_93|endereco_atual\(0) $ (VCC)
-- \comb_93|Add0~1\ = CARRY(\comb_93|endereco_atual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(0),
	datad => VCC,
	combout => \comb_93|Add0~0_combout\,
	cout => \comb_93|Add0~1\);

-- Location: LCCOMB_X56_Y50_N8
\comb_93|endereco_atual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~0_combout\ = (\comb_89|controle_pc\(0) & (\comb_88|Mux31~1_combout\)) # (!\comb_89|controle_pc\(0) & ((\comb_93|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_pc\(0),
	datab => \comb_88|Mux31~1_combout\,
	datad => \comb_93|Add0~0_combout\,
	combout => \comb_93|endereco_atual~0_combout\);

-- Location: LCCOMB_X55_Y51_N4
\comb_89|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux3~0_combout\ = (\comb_88|Mux0~1_combout\ & (!\comb_88|Mux3~1_combout\ & ((!\comb_88|Mux2~1_combout\)))) # (!\comb_88|Mux0~1_combout\ & (\comb_88|Mux1~1_combout\ & (\comb_88|Mux3~1_combout\ $ (!\comb_88|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux3~1_combout\,
	datab => \comb_88|Mux0~1_combout\,
	datac => \comb_88|Mux1~1_combout\,
	datad => \comb_88|Mux2~1_combout\,
	combout => \comb_89|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y51_N30
\comb_89|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux3~1_combout\ = (\comb_88|Mux4~1_combout\) # (\comb_89|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux4~1_combout\,
	datad => \comb_89|Mux3~0_combout\,
	combout => \comb_89|Mux3~1_combout\);

-- Location: LCCOMB_X55_Y51_N6
\comb_89|controle_ula[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_ula\(0) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|controle_ula\(0)))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (\comb_89|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|WideOr5~1clkctrl_outclk\,
	datac => \comb_89|Mux3~1_combout\,
	datad => \comb_89|controle_ula\(0),
	combout => \comb_89|controle_ula\(0));

-- Location: LCCOMB_X54_Y50_N10
\comb_89|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux6~0_combout\ = (\comb_88|Mux1~1_combout\ & ((\comb_88|Mux4~1_combout\ & ((\comb_88|Mux3~1_combout\) # (!\comb_88|Mux2~1_combout\))) # (!\comb_88|Mux4~1_combout\ & (\comb_88|Mux3~1_combout\ $ (\comb_88|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux4~1_combout\,
	datab => \comb_88|Mux3~1_combout\,
	datac => \comb_88|Mux2~1_combout\,
	datad => \comb_88|Mux1~1_combout\,
	combout => \comb_89|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y50_N8
\comb_89|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux6~1_combout\ = (\comb_89|Mux6~0_combout\ & !\comb_88|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|Mux6~0_combout\,
	datad => \comb_88|Mux0~1_combout\,
	combout => \comb_89|Mux6~1_combout\);

-- Location: LCCOMB_X55_Y50_N22
\comb_89|controle_ula[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_ula\(3) = (\comb_89|WideOr5~1_combout\ & (\comb_89|controle_ula\(3))) # (!\comb_89|WideOr5~1_combout\ & ((\comb_89|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(3),
	datac => \comb_89|Mux6~1_combout\,
	datad => \comb_89|WideOr5~1_combout\,
	combout => \comb_89|controle_ula\(3));

-- Location: LCCOMB_X55_Y50_N20
\comb_89|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux4~0_combout\ = (\comb_88|Mux1~1_combout\ & ((\comb_88|Mux0~1_combout\) # ((\comb_88|Mux2~1_combout\ & !\comb_88|Mux4~1_combout\)))) # (!\comb_88|Mux1~1_combout\ & (\comb_88|Mux0~1_combout\ & ((\comb_88|Mux2~1_combout\) # 
-- (\comb_88|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux1~1_combout\,
	datab => \comb_88|Mux2~1_combout\,
	datac => \comb_88|Mux0~1_combout\,
	datad => \comb_88|Mux4~1_combout\,
	combout => \comb_89|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y50_N18
\comb_89|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux4~1_combout\ = (!\comb_89|Mux4~0_combout\ & \comb_88|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_89|Mux4~0_combout\,
	datad => \comb_88|Mux3~1_combout\,
	combout => \comb_89|Mux4~1_combout\);

-- Location: LCCOMB_X55_Y50_N16
\comb_89|controle_ula[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_ula\(1) = (\comb_89|WideOr5~1_combout\ & (\comb_89|controle_ula\(1))) # (!\comb_89|WideOr5~1_combout\ & ((\comb_89|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_ula\(1),
	datac => \comb_89|Mux4~1_combout\,
	datad => \comb_89|WideOr5~1_combout\,
	combout => \comb_89|controle_ula\(1));

-- Location: LCCOMB_X55_Y50_N26
\comb_89|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux5~0_combout\ = (\comb_88|Mux2~1_combout\) # ((!\comb_88|Mux4~1_combout\ & (!\comb_88|Mux3~1_combout\ & \comb_88|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux4~1_combout\,
	datab => \comb_88|Mux3~1_combout\,
	datac => \comb_88|Mux1~1_combout\,
	datad => \comb_88|Mux2~1_combout\,
	combout => \comb_89|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y50_N12
\comb_89|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux5~1_combout\ = (\comb_89|Mux5~0_combout\) # (\comb_88|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_89|Mux5~0_combout\,
	datad => \comb_88|Mux0~1_combout\,
	combout => \comb_89|Mux5~1_combout\);

-- Location: LCCOMB_X55_Y50_N30
\comb_89|controle_ula[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_ula\(2) = (\comb_89|WideOr5~1_combout\ & ((\comb_89|controle_ula\(2)))) # (!\comb_89|WideOr5~1_combout\ & (\comb_89|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|Mux5~1_combout\,
	datac => \comb_89|controle_ula\(2),
	datad => \comb_89|WideOr5~1_combout\,
	combout => \comb_89|controle_ula\(2));

-- Location: LCCOMB_X56_Y50_N2
\comb_92|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|WideOr0~0_combout\ = (\comb_89|controle_ula\(3) & (!\comb_89|controle_ula\(2) & (\comb_89|controle_ula\(0) $ (\comb_89|controle_ula\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_89|controle_ula\(3),
	datac => \comb_89|controle_ula\(1),
	datad => \comb_89|controle_ula\(2),
	combout => \comb_92|WideOr0~0_combout\);

-- Location: CLKCTRL_G11
\comb_92|WideOr0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_92|WideOr0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_92|WideOr0~0clkctrl_outclk\);

-- Location: LCCOMB_X54_Y49_N10
\comb_92|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Decoder0~0_combout\ = (!\comb_89|controle_ula\(1) & (\comb_89|controle_ula\(0) & (!\comb_89|controle_ula\(2) & \comb_89|controle_ula\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_89|controle_ula\(2),
	datad => \comb_89|controle_ula\(3),
	combout => \comb_92|Decoder0~0_combout\);

-- Location: LCCOMB_X54_Y50_N2
\comb_89|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux2~0_combout\ = (\comb_88|Mux1~1_combout\ & (!\comb_88|Mux0~1_combout\ & (!\comb_88|Mux3~1_combout\ & !\comb_88|Mux4~1_combout\))) # (!\comb_88|Mux1~1_combout\ & (\comb_88|Mux0~1_combout\ & ((!\comb_88|Mux4~1_combout\) # 
-- (!\comb_88|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux1~1_combout\,
	datab => \comb_88|Mux0~1_combout\,
	datac => \comb_88|Mux3~1_combout\,
	datad => \comb_88|Mux4~1_combout\,
	combout => \comb_89|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y50_N30
\comb_89|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux2~1_combout\ = (\comb_88|Mux2~1_combout\ & (\comb_88|Mux3~1_combout\ & ((\comb_89|WideOr2~0_combout\)))) # (!\comb_88|Mux2~1_combout\ & (((\comb_89|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux2~1_combout\,
	datab => \comb_88|Mux3~1_combout\,
	datac => \comb_89|Mux2~0_combout\,
	datad => \comb_89|WideOr2~0_combout\,
	combout => \comb_89|Mux2~1_combout\);

-- Location: LCCOMB_X54_Y50_N28
\comb_89|controle_registradores[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_registradores\(2) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (\comb_89|controle_registradores\(2))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_registradores\(2),
	datac => \comb_89|WideOr5~1clkctrl_outclk\,
	datad => \comb_89|Mux2~1_combout\,
	combout => \comb_89|controle_registradores\(2));

-- Location: IOIBUF_X115_Y10_N1
\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: LCCOMB_X55_Y51_N16
\comb_89|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux1~0_combout\ = (\comb_88|Mux4~1_combout\ & (\comb_88|Mux2~1_combout\ & (\comb_88|Mux0~1_combout\ $ (\comb_88|Mux1~1_combout\)))) # (!\comb_88|Mux4~1_combout\ & (\comb_88|Mux0~1_combout\ & ((!\comb_88|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux0~1_combout\,
	datab => \comb_88|Mux1~1_combout\,
	datac => \comb_88|Mux4~1_combout\,
	datad => \comb_88|Mux2~1_combout\,
	combout => \comb_89|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y51_N18
\comb_89|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux1~1_combout\ = (!\comb_88|Mux3~1_combout\ & \comb_89|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux3~1_combout\,
	datad => \comb_89|Mux1~0_combout\,
	combout => \comb_89|Mux1~1_combout\);

-- Location: LCCOMB_X53_Y49_N8
\comb_89|controle_registradores[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_registradores\(1) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|controle_registradores\(1)))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (\comb_89|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|Mux1~1_combout\,
	datac => \comb_89|controle_registradores\(1),
	datad => \comb_89|WideOr5~1clkctrl_outclk\,
	combout => \comb_89|controle_registradores\(1));

-- Location: LCCOMB_X55_Y51_N20
\comb_89|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux0~1_combout\ = (\comb_88|Mux1~1_combout\ & (!\comb_88|Mux3~1_combout\ & ((\comb_88|Mux2~1_combout\)))) # (!\comb_88|Mux1~1_combout\ & (((\comb_88|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux3~1_combout\,
	datab => \comb_88|Mux1~1_combout\,
	datac => \comb_88|Mux4~1_combout\,
	datad => \comb_88|Mux2~1_combout\,
	combout => \comb_89|Mux0~1_combout\);

-- Location: LCCOMB_X55_Y51_N26
\comb_89|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux0~0_combout\ = (!\comb_88|Mux1~1_combout\ & ((\comb_88|Mux4~1_combout\ & (\comb_88|Mux2~1_combout\ & !\comb_88|Mux3~1_combout\)) # (!\comb_88|Mux4~1_combout\ & (!\comb_88|Mux2~1_combout\ & \comb_88|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux4~1_combout\,
	datab => \comb_88|Mux2~1_combout\,
	datac => \comb_88|Mux3~1_combout\,
	datad => \comb_88|Mux1~1_combout\,
	combout => \comb_89|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y51_N2
\comb_89|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Mux0~2_combout\ = (\comb_88|Mux0~1_combout\ & ((\comb_89|Mux0~0_combout\))) # (!\comb_88|Mux0~1_combout\ & (!\comb_89|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|Mux0~1_combout\,
	datac => \comb_89|Mux0~0_combout\,
	datad => \comb_88|Mux0~1_combout\,
	combout => \comb_89|Mux0~2_combout\);

-- Location: LCCOMB_X55_Y48_N6
\comb_89|controle_registradores[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_registradores\(0) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (\comb_89|controle_registradores\(0))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(0),
	datab => \comb_89|Mux0~2_combout\,
	datad => \comb_89|WideOr5~1clkctrl_outclk\,
	combout => \comb_89|controle_registradores\(0));

-- Location: LCCOMB_X55_Y48_N2
\comb_90|registradores[0][6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[0][6]~7_combout\ = (\comb_89|controle_registradores\(0) & (!\comb_89|controle_registradores\(2) & \comb_89|controle_registradores\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(0),
	datab => \comb_89|controle_registradores\(2),
	datad => \comb_89|controle_registradores\(1),
	combout => \comb_90|registradores[0][6]~7_combout\);

-- Location: LCCOMB_X55_Y47_N30
\comb_88|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux8~0_combout\ = (\comb_93|endereco_atual\(2) & (!\comb_93|endereco_atual\(3) & ((\comb_93|endereco_atual\(1)) # (!\comb_93|endereco_atual\(0))))) # (!\comb_93|endereco_atual\(2) & (\comb_93|endereco_atual\(3) $ (((\comb_93|endereco_atual\(1)) # 
-- (\comb_93|endereco_atual\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(2),
	datab => \comb_93|endereco_atual\(1),
	datac => \comb_93|endereco_atual\(0),
	datad => \comb_93|endereco_atual\(3),
	combout => \comb_88|Mux8~0_combout\);

-- Location: LCCOMB_X55_Y47_N18
\comb_88|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux8~1_combout\ = (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & \comb_88|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(5),
	datab => \comb_93|endereco_atual\(4),
	datac => \comb_88|Mux8~0_combout\,
	combout => \comb_88|Mux8~1_combout\);

-- Location: LCCOMB_X55_Y49_N24
\comb_88|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux5~0_combout\ = \comb_93|endereco_atual\(3) $ (((\comb_93|endereco_atual\(0)) # ((\comb_93|endereco_atual\(2)) # (\comb_93|endereco_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(0),
	datab => \comb_93|endereco_atual\(3),
	datac => \comb_93|endereco_atual\(2),
	datad => \comb_93|endereco_atual\(1),
	combout => \comb_88|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y49_N0
\comb_88|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux5~1_combout\ = (\comb_88|Mux5~0_combout\ & (!\comb_93|endereco_atual\(5) & !\comb_93|endereco_atual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux5~0_combout\,
	datac => \comb_93|endereco_atual\(5),
	datad => \comb_93|endereco_atual\(4),
	combout => \comb_88|Mux5~1_combout\);

-- Location: LCCOMB_X55_Y48_N10
\comb_90|registradores[29][2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[29][2]~2_combout\ = (\comb_89|controle_registradores\(2) & ((\comb_89|controle_registradores\(0)) # (\comb_89|controle_registradores\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(0),
	datab => \comb_89|controle_registradores\(2),
	datad => \comb_89|controle_registradores\(1),
	combout => \comb_90|registradores[29][2]~2_combout\);

-- Location: LCCOMB_X55_Y48_N24
\comb_90|registradores[31][1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[31][1]~6_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux5~1_combout\ & (\comb_88|Mux9~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[31][1]~6_combout\);

-- Location: FF_X56_Y46_N15
\comb_90|registradores[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][6]~q\);

-- Location: LCCOMB_X53_Y48_N20
\comb_90|registradores[2][13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[2][13]~4_combout\ = (\comb_88|Mux8~1_combout\ & (!\comb_88|Mux9~1_combout\ & (!\comb_88|Mux5~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_88|Mux5~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[2][13]~4_combout\);

-- Location: FF_X55_Y46_N21
\comb_90|registradores[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][6]~q\);

-- Location: LCCOMB_X55_Y47_N10
\comb_88|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux10~0_combout\ = (\comb_93|endereco_atual\(0) & ((\comb_93|endereco_atual\(2) & ((!\comb_93|endereco_atual\(3)))) # (!\comb_93|endereco_atual\(2) & (!\comb_93|endereco_atual\(1) & \comb_93|endereco_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(1),
	datab => \comb_93|endereco_atual\(0),
	datac => \comb_93|endereco_atual\(2),
	datad => \comb_93|endereco_atual\(3),
	combout => \comb_88|Mux10~0_combout\);

-- Location: LCCOMB_X55_Y47_N26
\comb_88|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux10~1_combout\ = (\comb_88|Mux10~0_combout\ & (!\comb_93|endereco_atual\(4) & !\comb_93|endereco_atual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~0_combout\,
	datab => \comb_93|endereco_atual\(4),
	datac => \comb_93|endereco_atual\(5),
	combout => \comb_88|Mux10~1_combout\);

-- Location: LCCOMB_X55_Y48_N4
\comb_90|registradores[29][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[29][2]~3_combout\ = (!\comb_88|Mux8~1_combout\ & (\comb_88|Mux5~1_combout\ & (\comb_88|Mux9~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[29][2]~3_combout\);

-- Location: FF_X56_Y46_N5
\comb_90|registradores[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][6]~q\);

-- Location: LCCOMB_X56_Y48_N24
\comb_90|Mux521~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux521~0_combout\ = (\comb_88|Mux13~1_combout\ & (\comb_88|Mux10~1_combout\)) # (!\comb_88|Mux13~1_combout\ & ((\comb_88|Mux10~1_combout\ & ((!\comb_90|registradores[29][6]~q\))) # (!\comb_88|Mux10~1_combout\ & 
-- (!\comb_90|registradores[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[0][6]~q\,
	datad => \comb_90|registradores[29][6]~q\,
	combout => \comb_90|Mux521~0_combout\);

-- Location: LCCOMB_X55_Y46_N20
\comb_90|Mux521~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux521~1_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_90|Mux521~0_combout\ & (!\comb_90|registradores[31][6]~q\)) # (!\comb_90|Mux521~0_combout\ & ((!\comb_90|registradores[2][6]~q\))))) # (!\comb_88|Mux13~1_combout\ & 
-- (((\comb_90|Mux521~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_90|registradores[31][6]~q\,
	datac => \comb_90|registradores[2][6]~q\,
	datad => \comb_90|Mux521~0_combout\,
	combout => \comb_90|Mux521~1_combout\);

-- Location: LCCOMB_X55_Y49_N16
\comb_92|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux2~0_combout\ = (\comb_89|controle_ula\(2) & \comb_89|controle_ula\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_ula\(2),
	datad => \comb_89|controle_ula\(1),
	combout => \comb_92|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y47_N28
\comb_88|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux15~0_combout\ = (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & !\comb_93|endereco_atual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(5),
	datab => \comb_93|endereco_atual\(4),
	datad => \comb_93|endereco_atual\(3),
	combout => \comb_88|Mux15~0_combout\);

-- Location: LCCOMB_X55_Y47_N24
\comb_88|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux15~1_combout\ = (\comb_93|endereco_atual\(0) & (!\comb_93|endereco_atual\(1) & (\comb_93|endereco_atual\(2) & \comb_88|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(0),
	datab => \comb_93|endereco_atual\(1),
	datac => \comb_93|endereco_atual\(2),
	datad => \comb_88|Mux15~0_combout\,
	combout => \comb_88|Mux15~1_combout\);

-- Location: LCCOMB_X55_Y48_N18
\comb_90|registradores[30][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[30][0]~8_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux5~1_combout\ & (!\comb_88|Mux9~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[30][0]~8_combout\);

-- Location: FF_X56_Y47_N19
\comb_90|registradores[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][6]~q\);

-- Location: LCCOMB_X56_Y47_N18
\comb_90|Mux569~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux569~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][6]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux15~1_combout\,
	datac => \comb_90|registradores[30][6]~q\,
	datad => \comb_90|registradores[0][6]~q\,
	combout => \comb_90|Mux569~0_combout\);

-- Location: LCCOMB_X58_Y45_N0
\comb_92|ula~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~22_combout\ = (\comb_90|Mux569~0_combout\ & !\comb_90|Mux521~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux569~0_combout\,
	datac => \comb_90|Mux521~1_combout\,
	combout => \comb_92|ula~22_combout\);

-- Location: LCCOMB_X55_Y49_N2
\comb_92|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux5~0_combout\ = ((!\comb_89|controle_ula\(1) & !\comb_89|controle_ula\(0))) # (!\comb_89|controle_ula\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datad => \comb_89|controle_ula\(2),
	combout => \comb_92|Mux5~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: LCCOMB_X55_Y51_N28
\comb_89|controle_memoria~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_memoria~0_combout\ = (\comb_88|Mux1~1_combout\ & (\comb_88|Mux3~1_combout\ & (\comb_88|Mux2~1_combout\ & !\comb_88|Mux0~1_combout\))) # (!\comb_88|Mux1~1_combout\ & (!\comb_88|Mux3~1_combout\ & (!\comb_88|Mux2~1_combout\ & 
-- \comb_88|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux1~1_combout\,
	datab => \comb_88|Mux3~1_combout\,
	datac => \comb_88|Mux2~1_combout\,
	datad => \comb_88|Mux0~1_combout\,
	combout => \comb_89|controle_memoria~0_combout\);

-- Location: LCCOMB_X55_Y51_N24
\comb_89|controle_memoria~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_memoria~1_combout\ = (!\comb_88|Mux4~1_combout\ & \comb_89|controle_memoria~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_88|Mux4~1_combout\,
	datad => \comb_89|controle_memoria~0_combout\,
	combout => \comb_89|controle_memoria~1_combout\);

-- Location: LCCOMB_X55_Y51_N10
\comb_89|controle_memoria[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_memoria\(0) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (\comb_89|controle_memoria\(0))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|controle_memoria~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_memoria\(0),
	datac => \comb_89|WideOr5~1clkctrl_outclk\,
	datad => \comb_89|controle_memoria~1_combout\,
	combout => \comb_89|controle_memoria\(0));

-- Location: FF_X55_Y51_N13
\comb_91|memoria_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_89|controle_memoria\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(0));

-- Location: LCCOMB_X55_Y48_N22
\comb_90|registradores[0][15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[0][15]~5_combout\ = (!\comb_88|Mux8~1_combout\ & (!\comb_88|Mux5~1_combout\ & (!\comb_88|Mux9~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[0][15]~5_combout\);

-- Location: FF_X55_Y45_N1
\comb_90|registradores[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][5]~q\);

-- Location: LCCOMB_X55_Y48_N26
\comb_90|registradores[1][14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[1][14]~10_combout\ = (!\comb_88|Mux8~1_combout\ & (!\comb_88|Mux5~1_combout\ & (\comb_88|Mux9~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[1][14]~10_combout\);

-- Location: FF_X55_Y46_N13
\comb_90|registradores[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][5]~q\);

-- Location: LCCOMB_X55_Y46_N12
\comb_90|Mux538~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux538~2_combout\ = (\comb_88|Mux9~1_combout\ & (((\comb_90|registradores[1][5]~q\) # (\comb_88|Mux8~1_combout\)))) # (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[0][5]~q\ & ((!\comb_88|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_90|registradores[0][5]~q\,
	datac => \comb_90|registradores[1][5]~q\,
	datad => \comb_88|Mux8~1_combout\,
	combout => \comb_90|Mux538~2_combout\);

-- Location: LCCOMB_X55_Y48_N20
\comb_90|registradores[3][3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[3][3]~11_combout\ = (\comb_88|Mux8~1_combout\ & (!\comb_88|Mux5~1_combout\ & (\comb_88|Mux9~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[3][3]~11_combout\);

-- Location: FF_X58_Y48_N9
\comb_90|registradores[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][5]~q\);

-- Location: FF_X55_Y46_N31
\comb_90|registradores[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][5]~q\);

-- Location: LCCOMB_X55_Y46_N30
\comb_90|Mux538~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux538~3_combout\ = (\comb_90|Mux538~2_combout\ & ((\comb_90|registradores[3][5]~q\) # ((!\comb_88|Mux8~1_combout\)))) # (!\comb_90|Mux538~2_combout\ & (((\comb_90|registradores[2][5]~q\ & \comb_88|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux538~2_combout\,
	datab => \comb_90|registradores[3][5]~q\,
	datac => \comb_90|registradores[2][5]~q\,
	datad => \comb_88|Mux8~1_combout\,
	combout => \comb_90|Mux538~3_combout\);

-- Location: LCCOMB_X55_Y48_N16
\comb_90|registradores[28][14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[28][14]~9_combout\ = (!\comb_88|Mux8~1_combout\ & (\comb_88|Mux5~1_combout\ & (!\comb_88|Mux9~1_combout\ & !\comb_90|registradores[29][2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][2]~2_combout\,
	combout => \comb_90|registradores[28][14]~9_combout\);

-- Location: FF_X56_Y47_N11
\comb_90|registradores[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][5]~q\);

-- Location: FF_X56_Y47_N13
\comb_90|registradores[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][5]~q\);

-- Location: LCCOMB_X56_Y47_N10
\comb_90|Mux538~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux538~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][5]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][5]~q\,
	datad => \comb_90|registradores[30][5]~q\,
	combout => \comb_90|Mux538~0_combout\);

-- Location: FF_X55_Y45_N3
\comb_90|registradores[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][5]~q\);

-- Location: LCCOMB_X56_Y46_N26
\comb_90|Mux538~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux538~1_combout\ = (\comb_90|Mux538~0_combout\ & (((\comb_90|registradores[31][5]~q\) # (!\comb_88|Mux9~1_combout\)))) # (!\comb_90|Mux538~0_combout\ & (\comb_90|registradores[29][5]~q\ & (\comb_88|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[29][5]~q\,
	datab => \comb_90|Mux538~0_combout\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[31][5]~q\,
	combout => \comb_90|Mux538~1_combout\);

-- Location: LCCOMB_X55_Y46_N22
\comb_90|Mux538~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux538~4_combout\ = (\comb_88|Mux5~1_combout\ & ((\comb_90|Mux538~1_combout\))) # (!\comb_88|Mux5~1_combout\ & (\comb_90|Mux538~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux538~3_combout\,
	datac => \comb_90|Mux538~1_combout\,
	datad => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux538~4_combout\);

-- Location: FF_X63_Y46_N17
\comb_91|memoria_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux538~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(6));

-- Location: LCCOMB_X53_Y46_N16
\comb_90|registradores[0][15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[0][15]~1_combout\ = (\comb_89|controle_registradores\(2)) # ((\comb_89|controle_registradores\(1) & \comb_89|controle_registradores\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(1),
	datab => \comb_89|controle_registradores\(2),
	datad => \comb_89|controle_registradores\(0),
	combout => \comb_90|registradores[0][15]~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: FF_X63_Y46_N9
\comb_91|memoria_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux543~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(1));

-- Location: FF_X53_Y46_N21
\comb_90|registradores[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux511~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][0]~q\);

-- Location: LCCOMB_X52_Y46_N2
\comb_90|registradores[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[0][0]~feeder_combout\ = \comb_90|Mux511~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux511~1_combout\,
	combout => \comb_90|registradores[0][0]~feeder_combout\);

-- Location: FF_X52_Y46_N3
\comb_90|registradores[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[0][0]~feeder_combout\,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][0]~q\);

-- Location: FF_X54_Y46_N17
\comb_90|registradores[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux511~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][0]~q\);

-- Location: LCCOMB_X52_Y46_N28
\comb_90|Mux527~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux527~0_combout\ = (\comb_88|Mux10~1_combout\ & (((\comb_88|Mux13~1_combout\) # (\comb_90|registradores[29][0]~q\)))) # (!\comb_88|Mux10~1_combout\ & (\comb_90|registradores[0][0]~q\ & (!\comb_88|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|registradores[0][0]~q\,
	datac => \comb_88|Mux13~1_combout\,
	datad => \comb_90|registradores[29][0]~q\,
	combout => \comb_90|Mux527~0_combout\);

-- Location: LCCOMB_X52_Y46_N14
\comb_90|Mux527~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux527~1_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_90|Mux527~0_combout\ & (\comb_90|registradores[31][0]~q\)) # (!\comb_90|Mux527~0_combout\ & ((\comb_90|registradores[2][0]~q\))))) # (!\comb_88|Mux13~1_combout\ & 
-- (((\comb_90|Mux527~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][0]~q\,
	datab => \comb_88|Mux13~1_combout\,
	datac => \comb_90|registradores[2][0]~q\,
	datad => \comb_90|Mux527~0_combout\,
	combout => \comb_90|Mux527~1_combout\);

-- Location: LCCOMB_X53_Y46_N14
\comb_90|registradores[0][15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[0][15]~0_combout\ = (\comb_89|controle_registradores\(1) & !\comb_89|controle_registradores\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(1),
	datad => \comb_89|controle_registradores\(2),
	combout => \comb_90|registradores[0][15]~0_combout\);

-- Location: FF_X54_Y45_N25
\comb_90|registradores[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux510~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][1]~q\);

-- Location: FF_X57_Y45_N27
\comb_90|registradores[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux510~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][1]~q\);

-- Location: FF_X57_Y45_N9
\comb_90|registradores[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux510~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][1]~q\);

-- Location: FF_X54_Y45_N27
\comb_90|registradores[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux510~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][1]~q\);

-- Location: LCCOMB_X57_Y45_N8
\comb_90|Mux542~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux542~2_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux9~1_combout\)) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & (\comb_90|registradores[1][1]~q\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[1][1]~q\,
	datad => \comb_90|registradores[0][1]~q\,
	combout => \comb_90|Mux542~2_combout\);

-- Location: LCCOMB_X57_Y45_N26
\comb_90|Mux542~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux542~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux542~2_combout\ & ((\comb_90|registradores[3][1]~q\))) # (!\comb_90|Mux542~2_combout\ & (\comb_90|registradores[2][1]~q\)))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux542~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[2][1]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[3][1]~q\,
	datad => \comb_90|Mux542~2_combout\,
	combout => \comb_90|Mux542~3_combout\);

-- Location: FF_X53_Y46_N1
\comb_90|registradores[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux510~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][1]~q\);

-- Location: FF_X56_Y45_N5
\comb_90|registradores[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux510~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][1]~q\);

-- Location: LCCOMB_X56_Y45_N0
\comb_90|registradores[30][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[30][1]~feeder_combout\ = \comb_90|Mux510~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux510~1_combout\,
	combout => \comb_90|registradores[30][1]~feeder_combout\);

-- Location: FF_X56_Y45_N1
\comb_90|registradores[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[30][1]~feeder_combout\,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][1]~q\);

-- Location: LCCOMB_X56_Y45_N4
\comb_90|Mux542~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux542~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][1]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][1]~q\,
	datad => \comb_90|registradores[30][1]~q\,
	combout => \comb_90|Mux542~0_combout\);

-- Location: LCCOMB_X57_Y46_N24
\comb_90|Mux542~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux542~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux542~0_combout\ & (\comb_90|registradores[31][1]~q\)) # (!\comb_90|Mux542~0_combout\ & ((\comb_90|registradores[29][1]~q\))))) # (!\comb_88|Mux9~1_combout\ & 
-- (((\comb_90|Mux542~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][1]~q\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[29][1]~q\,
	datad => \comb_90|Mux542~0_combout\,
	combout => \comb_90|Mux542~1_combout\);

-- Location: LCCOMB_X53_Y46_N2
\comb_90|Mux542~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux542~4_combout\ = (\comb_88|Mux5~1_combout\ & ((\comb_90|Mux542~1_combout\))) # (!\comb_88|Mux5~1_combout\ & (\comb_90|Mux542~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_90|Mux542~3_combout\,
	datad => \comb_90|Mux542~1_combout\,
	combout => \comb_90|Mux542~4_combout\);

-- Location: FF_X63_Y46_N1
\comb_91|memoria_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux542~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(2));

-- Location: LCCOMB_X65_Y46_N8
\comb_90|Mux525~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux525~1_wirecell_combout\ = !\comb_90|Mux525~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux525~1_combout\,
	combout => \comb_90|Mux525~1_wirecell_combout\);

-- Location: LCCOMB_X55_Y47_N0
\comb_88|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux28~0_combout\ = (!\comb_93|endereco_atual\(2) & (\comb_93|endereco_atual\(1) & \comb_88|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(2),
	datab => \comb_93|endereco_atual\(1),
	datad => \comb_88|Mux15~0_combout\,
	combout => \comb_88|Mux28~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: FF_X56_Y46_N13
\comb_90|registradores[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][4]~q\);

-- Location: FF_X56_Y47_N9
\comb_90|registradores[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][4]~q\);

-- Location: FF_X56_Y47_N15
\comb_90|registradores[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][4]~q\);

-- Location: LCCOMB_X56_Y47_N8
\comb_90|Mux539~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux539~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][4]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][4]~q\,
	datad => \comb_90|registradores[30][4]~q\,
	combout => \comb_90|Mux539~0_combout\);

-- Location: FF_X56_Y46_N3
\comb_90|registradores[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][4]~q\);

-- Location: LCCOMB_X56_Y46_N8
\comb_90|Mux539~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux539~1_combout\ = (\comb_90|Mux539~0_combout\ & ((\comb_90|registradores[31][4]~q\) # ((!\comb_88|Mux9~1_combout\)))) # (!\comb_90|Mux539~0_combout\ & (((\comb_90|registradores[29][4]~q\ & \comb_88|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][4]~q\,
	datab => \comb_90|Mux539~0_combout\,
	datac => \comb_90|registradores[29][4]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux539~1_combout\);

-- Location: FF_X54_Y48_N9
\comb_90|registradores[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][4]~q\);

-- Location: FF_X55_Y46_N27
\comb_90|registradores[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][4]~q\);

-- Location: LCCOMB_X55_Y46_N26
\comb_90|Mux539~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux539~2_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\) # ((\comb_90|registradores[1][4]~q\)))) # (!\comb_88|Mux9~1_combout\ & (!\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[1][4]~q\,
	datad => \comb_90|registradores[0][4]~q\,
	combout => \comb_90|Mux539~2_combout\);

-- Location: FF_X55_Y46_N1
\comb_90|registradores[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][4]~q\);

-- Location: LCCOMB_X55_Y46_N10
\comb_90|Mux539~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux539~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux539~2_combout\ & (\comb_90|registradores[3][4]~q\)) # (!\comb_90|Mux539~2_combout\ & ((\comb_90|registradores[2][4]~q\))))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux539~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_90|registradores[3][4]~q\,
	datac => \comb_90|Mux539~2_combout\,
	datad => \comb_90|registradores[2][4]~q\,
	combout => \comb_90|Mux539~3_combout\);

-- Location: LCCOMB_X55_Y46_N4
\comb_90|Mux539~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux539~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux539~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux539~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux539~1_combout\,
	datab => \comb_90|Mux539~3_combout\,
	datad => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux539~4_combout\);

-- Location: FF_X63_Y46_N11
\comb_91|memoria_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux539~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(5));

-- Location: LCCOMB_X65_Y46_N26
\comb_90|Mux522~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux522~1_wirecell_combout\ = !\comb_90|Mux522~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux522~1_combout\,
	combout => \comb_90|Mux522~1_wirecell_combout\);

-- Location: LCCOMB_X65_Y46_N16
\comb_90|Mux521~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux521~1_wirecell_combout\ = !\comb_90|Mux521~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux521~1_combout\,
	combout => \comb_90|Mux521~1_wirecell_combout\);

-- Location: IOIBUF_X115_Y15_N1
\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: FF_X56_Y47_N29
\comb_90|registradores[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][7]~q\);

-- Location: FF_X56_Y47_N17
\comb_90|registradores[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][7]~q\);

-- Location: LCCOMB_X56_Y47_N28
\comb_90|Mux536~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux536~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][7]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][7]~q\,
	datad => \comb_90|registradores[30][7]~q\,
	combout => \comb_90|Mux536~0_combout\);

-- Location: FF_X56_Y46_N19
\comb_90|registradores[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][7]~q\);

-- Location: LCCOMB_X56_Y46_N20
\comb_90|Mux536~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux536~1_combout\ = (\comb_90|Mux536~0_combout\ & ((\comb_90|registradores[31][7]~q\) # ((!\comb_88|Mux9~1_combout\)))) # (!\comb_90|Mux536~0_combout\ & (((\comb_88|Mux9~1_combout\ & \comb_90|registradores[29][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux536~0_combout\,
	datab => \comb_90|registradores[31][7]~q\,
	datac => \comb_88|Mux9~1_combout\,
	datad => \comb_90|registradores[29][7]~q\,
	combout => \comb_90|Mux536~1_combout\);

-- Location: FF_X56_Y48_N31
\comb_90|registradores[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][7]~q\);

-- Location: FF_X56_Y48_N21
\comb_90|registradores[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][7]~q\);

-- Location: LCCOMB_X56_Y48_N20
\comb_90|Mux536~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux536~2_combout\ = (\comb_88|Mux8~1_combout\ & (((\comb_88|Mux9~1_combout\)))) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[1][7]~q\))) # (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][7]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[1][7]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux536~2_combout\);

-- Location: FF_X59_Y46_N9
\comb_90|registradores[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][7]~q\);

-- Location: FF_X55_Y46_N3
\comb_90|registradores[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][7]~q\);

-- Location: LCCOMB_X55_Y46_N2
\comb_90|Mux536~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux536~3_combout\ = (\comb_90|Mux536~2_combout\ & ((\comb_90|registradores[3][7]~q\) # ((!\comb_88|Mux8~1_combout\)))) # (!\comb_90|Mux536~2_combout\ & (((\comb_90|registradores[2][7]~q\ & \comb_88|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux536~2_combout\,
	datab => \comb_90|registradores[3][7]~q\,
	datac => \comb_90|registradores[2][7]~q\,
	datad => \comb_88|Mux8~1_combout\,
	combout => \comb_90|Mux536~3_combout\);

-- Location: LCCOMB_X55_Y46_N18
\comb_90|Mux536~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux536~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux536~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux536~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux5~1_combout\,
	datab => \comb_90|Mux536~1_combout\,
	datac => \comb_90|Mux536~3_combout\,
	combout => \comb_90|Mux536~4_combout\);

-- Location: FF_X63_Y46_N5
\comb_91|memoria_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux536~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(8));

-- Location: IOIBUF_X115_Y4_N22
\entrada[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(8),
	o => \entrada[8]~input_o\);

-- Location: FF_X63_Y45_N5
\comb_91|memoria_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux535~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(9));

-- Location: IOIBUF_X115_Y16_N8
\entrada[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(9),
	o => \entrada[9]~input_o\);

-- Location: FF_X56_Y46_N23
\comb_90|registradores[31][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][9]~q\);

-- Location: FF_X56_Y47_N1
\comb_90|registradores[28][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][9]~q\);

-- Location: FF_X56_Y47_N5
\comb_90|registradores[30][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][9]~q\);

-- Location: LCCOMB_X56_Y47_N0
\comb_90|Mux534~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux534~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][9]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][9]~q\,
	datad => \comb_90|registradores[30][9]~q\,
	combout => \comb_90|Mux534~0_combout\);

-- Location: LCCOMB_X56_Y46_N28
\comb_90|Mux534~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux534~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux534~0_combout\ & (\comb_90|registradores[31][9]~q\)) # (!\comb_90|Mux534~0_combout\ & ((\comb_90|registradores[29][9]~q\))))) # (!\comb_88|Mux9~1_combout\ & 
-- (((\comb_90|Mux534~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][9]~q\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[29][9]~q\,
	datad => \comb_90|Mux534~0_combout\,
	combout => \comb_90|Mux534~1_combout\);

-- Location: FF_X59_Y47_N1
\comb_90|registradores[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][9]~q\);

-- Location: FF_X53_Y48_N17
\comb_90|registradores[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][9]~q\);

-- Location: FF_X56_Y48_N3
\comb_90|registradores[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][9]~q\);

-- Location: FF_X56_Y48_N15
\comb_90|registradores[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][9]~q\);

-- Location: LCCOMB_X56_Y48_N14
\comb_90|Mux534~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux534~2_combout\ = (\comb_88|Mux8~1_combout\ & (((\comb_88|Mux9~1_combout\)))) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[1][9]~q\))) # (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][9]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[1][9]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux534~2_combout\);

-- Location: LCCOMB_X53_Y48_N14
\comb_90|Mux534~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux534~3_combout\ = (\comb_90|Mux534~2_combout\ & ((\comb_90|registradores[3][9]~q\) # ((!\comb_88|Mux8~1_combout\)))) # (!\comb_90|Mux534~2_combout\ & (((\comb_90|registradores[2][9]~q\ & \comb_88|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[3][9]~q\,
	datab => \comb_90|registradores[2][9]~q\,
	datac => \comb_90|Mux534~2_combout\,
	datad => \comb_88|Mux8~1_combout\,
	combout => \comb_90|Mux534~3_combout\);

-- Location: LCCOMB_X53_Y48_N8
\comb_90|Mux534~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux534~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux534~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux534~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux5~1_combout\,
	datac => \comb_90|Mux534~1_combout\,
	datad => \comb_90|Mux534~3_combout\,
	combout => \comb_90|Mux534~4_combout\);

-- Location: FF_X63_Y45_N3
\comb_91|memoria_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux534~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(10));

-- Location: IOIBUF_X115_Y4_N15
\entrada[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(10),
	o => \entrada[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\entrada[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(11),
	o => \entrada[11]~input_o\);

-- Location: FF_X63_Y45_N9
\comb_91|memoria_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux532~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(12));

-- Location: IOIBUF_X115_Y7_N15
\entrada[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(12),
	o => \entrada[12]~input_o\);

-- Location: FF_X63_Y45_N15
\comb_91|memoria_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux530~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(14));

-- Location: IOIBUF_X115_Y10_N8
\entrada[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(14),
	o => \entrada[14]~input_o\);

-- Location: FF_X63_Y45_N27
\comb_91|memoria_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux529~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(15));

-- Location: IOIBUF_X115_Y6_N15
\entrada[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(15),
	o => \entrada[15]~input_o\);

-- Location: M9K_X64_Y45_N0
\comb_91|memoria_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memoriaprincipal:comb_91|altsyncram:memoria_rtl_0|altsyncram_mlc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_89|controle_memoria\(0),
	portbre => VCC,
	clk0 => \comb_96|DB_out~clkctrl_outclk\,
	clk1 => \comb_96|DB_out~clkctrl_outclk\,
	ena0 => \comb_89|controle_memoria\(0),
	portadatain => \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \comb_91|memoria_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: FF_X63_Y46_N27
\comb_91|memoria_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux528~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(16));

-- Location: LCCOMB_X63_Y46_N26
\comb_91|memoria~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_91|memoria~3_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0_bypass\(16)))) # (!\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0|auto_generated|ram_block1a15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0|auto_generated|ram_block1a15\,
	datac => \comb_91|memoria_rtl_0_bypass\(16),
	datad => \comb_91|memoria_rtl_0_bypass\(0),
	combout => \comb_91|memoria~3_combout\);

-- Location: LCCOMB_X56_Y48_N26
\comb_90|registradores[0][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[0][15]~feeder_combout\ = \comb_90|Mux496~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux496~1_combout\,
	combout => \comb_90|registradores[0][15]~feeder_combout\);

-- Location: FF_X56_Y48_N27
\comb_90|registradores[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[0][15]~feeder_combout\,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][15]~q\);

-- Location: FF_X56_Y45_N25
\comb_90|registradores[30][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux496~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][15]~q\);

-- Location: LCCOMB_X56_Y45_N10
\comb_90|Mux560~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux560~0_combout\ = (\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[30][15]~q\))) # (!\comb_88|Mux15~1_combout\ & (\comb_90|registradores[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~q\,
	datab => \comb_90|registradores[30][15]~q\,
	datad => \comb_88|Mux15~1_combout\,
	combout => \comb_90|Mux560~0_combout\);

-- Location: LCCOMB_X57_Y48_N16
\comb_90|registradores[2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[2][15]~feeder_combout\ = \comb_90|Mux496~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux496~1_combout\,
	combout => \comb_90|registradores[2][15]~feeder_combout\);

-- Location: FF_X57_Y48_N17
\comb_90|registradores[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[2][15]~feeder_combout\,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][15]~q\);

-- Location: LCCOMB_X56_Y48_N12
\comb_90|Mux512~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux512~0_combout\ = (\comb_88|Mux13~1_combout\ & (((\comb_88|Mux10~1_combout\) # (!\comb_90|registradores[2][15]~q\)))) # (!\comb_88|Mux13~1_combout\ & (!\comb_90|registradores[0][15]~q\ & ((!\comb_88|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_90|registradores[0][15]~q\,
	datac => \comb_90|registradores[2][15]~q\,
	datad => \comb_88|Mux10~1_combout\,
	combout => \comb_90|Mux512~0_combout\);

-- Location: FF_X57_Y46_N13
\comb_90|registradores[31][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux496~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][15]~q\);

-- Location: FF_X57_Y46_N19
\comb_90|registradores[29][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux496~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][15]~q\);

-- Location: LCCOMB_X57_Y46_N12
\comb_90|Mux512~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux512~1_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_90|Mux512~0_combout\ & (!\comb_90|registradores[31][15]~q\)) # (!\comb_90|Mux512~0_combout\ & ((!\comb_90|registradores[29][15]~q\))))) # (!\comb_88|Mux10~1_combout\ & 
-- (\comb_90|Mux512~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|Mux512~0_combout\,
	datac => \comb_90|registradores[31][15]~q\,
	datad => \comb_90|registradores[29][15]~q\,
	combout => \comb_90|Mux512~1_combout\);

-- Location: FF_X56_Y45_N29
\comb_90|registradores[30][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][14]~q\);

-- Location: FF_X54_Y45_N17
\comb_90|registradores[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][14]~q\);

-- Location: LCCOMB_X56_Y45_N30
\comb_90|Mux561~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux561~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][14]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datab => \comb_90|registradores[30][14]~q\,
	datad => \comb_90|registradores[0][14]~q\,
	combout => \comb_90|Mux561~0_combout\);

-- Location: FF_X57_Y46_N5
\comb_90|registradores[31][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][14]~q\);

-- Location: FF_X57_Y46_N11
\comb_90|registradores[29][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][14]~q\);

-- Location: FF_X54_Y45_N15
\comb_90|registradores[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][14]~q\);

-- Location: LCCOMB_X54_Y45_N14
\comb_90|Mux513~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux513~0_combout\ = (\comb_88|Mux10~1_combout\ & (((\comb_88|Mux13~1_combout\)))) # (!\comb_88|Mux10~1_combout\ & ((\comb_88|Mux13~1_combout\ & ((!\comb_90|registradores[2][14]~q\))) # (!\comb_88|Mux13~1_combout\ & 
-- (!\comb_90|registradores[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][14]~q\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[2][14]~q\,
	datad => \comb_88|Mux13~1_combout\,
	combout => \comb_90|Mux513~0_combout\);

-- Location: LCCOMB_X57_Y46_N10
\comb_90|Mux513~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux513~1_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_90|Mux513~0_combout\ & (!\comb_90|registradores[31][14]~q\)) # (!\comb_90|Mux513~0_combout\ & ((!\comb_90|registradores[29][14]~q\))))) # (!\comb_88|Mux10~1_combout\ & 
-- (((\comb_90|Mux513~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|registradores[31][14]~q\,
	datac => \comb_90|registradores[29][14]~q\,
	datad => \comb_90|Mux513~0_combout\,
	combout => \comb_90|Mux513~1_combout\);

-- Location: FF_X57_Y47_N9
\comb_90|registradores[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux498~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][13]~q\);

-- Location: FF_X57_Y47_N19
\comb_90|registradores[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux498~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][13]~q\);

-- Location: LCCOMB_X57_Y46_N30
\comb_90|registradores[29][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[29][13]~feeder_combout\ = \comb_90|Mux498~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux498~1_combout\,
	combout => \comb_90|registradores[29][13]~feeder_combout\);

-- Location: FF_X57_Y46_N31
\comb_90|registradores[29][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[29][13]~feeder_combout\,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][13]~q\);

-- Location: LCCOMB_X57_Y47_N4
\comb_90|Mux514~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux514~0_combout\ = (\comb_88|Mux10~1_combout\ & (((\comb_88|Mux13~1_combout\) # (!\comb_90|registradores[29][13]~q\)))) # (!\comb_88|Mux10~1_combout\ & (!\comb_90|registradores[0][13]~q\ & ((!\comb_88|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|registradores[0][13]~q\,
	datac => \comb_90|registradores[29][13]~q\,
	datad => \comb_88|Mux13~1_combout\,
	combout => \comb_90|Mux514~0_combout\);

-- Location: FF_X57_Y46_N9
\comb_90|registradores[31][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux498~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][13]~q\);

-- Location: LCCOMB_X57_Y47_N22
\comb_90|Mux514~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux514~1_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_90|Mux514~0_combout\ & ((!\comb_90|registradores[31][13]~q\))) # (!\comb_90|Mux514~0_combout\ & (!\comb_90|registradores[2][13]~q\)))) # (!\comb_88|Mux13~1_combout\ & 
-- (((\comb_90|Mux514~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_90|registradores[2][13]~q\,
	datac => \comb_90|Mux514~0_combout\,
	datad => \comb_90|registradores[31][13]~q\,
	combout => \comb_90|Mux514~1_combout\);

-- Location: LCCOMB_X56_Y45_N8
\comb_90|registradores[30][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[30][13]~feeder_combout\ = \comb_90|Mux498~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux498~1_combout\,
	combout => \comb_90|registradores[30][13]~feeder_combout\);

-- Location: FF_X56_Y45_N9
\comb_90|registradores[30][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[30][13]~feeder_combout\,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][13]~q\);

-- Location: LCCOMB_X56_Y45_N28
\comb_90|Mux562~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux562~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][13]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datab => \comb_90|registradores[30][13]~q\,
	datad => \comb_90|registradores[0][13]~q\,
	combout => \comb_90|Mux562~0_combout\);

-- Location: FF_X55_Y45_N11
\comb_90|registradores[31][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux499~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][12]~q\);

-- Location: FF_X55_Y45_N17
\comb_90|registradores[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux499~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][12]~q\);

-- Location: FF_X54_Y49_N25
\comb_90|registradores[29][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux499~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][12]~q\);

-- Location: LCCOMB_X55_Y45_N28
\comb_90|Mux515~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux515~0_combout\ = (\comb_88|Mux10~1_combout\ & (((\comb_88|Mux13~1_combout\) # (!\comb_90|registradores[29][12]~q\)))) # (!\comb_88|Mux10~1_combout\ & (!\comb_90|registradores[0][12]~q\ & (!\comb_88|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][12]~q\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_88|Mux13~1_combout\,
	datad => \comb_90|registradores[29][12]~q\,
	combout => \comb_90|Mux515~0_combout\);

-- Location: FF_X55_Y48_N1
\comb_90|registradores[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux499~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][12]~q\);

-- Location: LCCOMB_X55_Y45_N14
\comb_90|Mux515~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux515~1_combout\ = (\comb_90|Mux515~0_combout\ & (((!\comb_88|Mux13~1_combout\)) # (!\comb_90|registradores[31][12]~q\))) # (!\comb_90|Mux515~0_combout\ & (((\comb_88|Mux13~1_combout\ & !\comb_90|registradores[2][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][12]~q\,
	datab => \comb_90|Mux515~0_combout\,
	datac => \comb_88|Mux13~1_combout\,
	datad => \comb_90|registradores[2][12]~q\,
	combout => \comb_90|Mux515~1_combout\);

-- Location: FF_X54_Y44_N17
\comb_90|registradores[30][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux499~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][12]~q\);

-- Location: LCCOMB_X54_Y44_N10
\comb_90|Mux563~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux563~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][12]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|registradores[30][12]~q\,
	datac => \comb_88|Mux15~1_combout\,
	datad => \comb_90|registradores[0][12]~q\,
	combout => \comb_90|Mux563~0_combout\);

-- Location: FF_X56_Y47_N25
\comb_90|registradores[30][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][11]~q\);

-- Location: LCCOMB_X56_Y47_N24
\comb_90|Mux564~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux564~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][11]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux15~1_combout\,
	datac => \comb_90|registradores[30][11]~q\,
	datad => \comb_90|registradores[0][11]~q\,
	combout => \comb_90|Mux564~0_combout\);

-- Location: FF_X56_Y46_N11
\comb_90|registradores[31][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][11]~q\);

-- Location: FF_X56_Y46_N17
\comb_90|registradores[29][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][11]~q\);

-- Location: FF_X55_Y46_N25
\comb_90|registradores[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][11]~q\);

-- Location: LCCOMB_X56_Y48_N16
\comb_90|Mux516~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux516~0_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_88|Mux10~1_combout\) # ((!\comb_90|registradores[2][11]~q\)))) # (!\comb_88|Mux13~1_combout\ & (!\comb_88|Mux10~1_combout\ & (!\comb_90|registradores[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[0][11]~q\,
	datad => \comb_90|registradores[2][11]~q\,
	combout => \comb_90|Mux516~0_combout\);

-- Location: LCCOMB_X56_Y46_N16
\comb_90|Mux516~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux516~1_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_90|Mux516~0_combout\ & (!\comb_90|registradores[31][11]~q\)) # (!\comb_90|Mux516~0_combout\ & ((!\comb_90|registradores[29][11]~q\))))) # (!\comb_88|Mux10~1_combout\ & 
-- (((\comb_90|Mux516~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][11]~q\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[29][11]~q\,
	datad => \comb_90|Mux516~0_combout\,
	combout => \comb_90|Mux516~1_combout\);

-- Location: FF_X55_Y45_N5
\comb_90|registradores[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux501~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][10]~q\);

-- Location: FF_X56_Y47_N3
\comb_90|registradores[30][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux501~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][10]~q\);

-- Location: LCCOMB_X56_Y47_N20
\comb_90|Mux565~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux565~0_combout\ = (\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[30][10]~q\))) # (!\comb_88|Mux15~1_combout\ & (\comb_90|registradores[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][10]~q\,
	datab => \comb_88|Mux15~1_combout\,
	datad => \comb_90|registradores[30][10]~q\,
	combout => \comb_90|Mux565~0_combout\);

-- Location: FF_X55_Y45_N7
\comb_90|registradores[31][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux501~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][10]~q\);

-- Location: LCCOMB_X54_Y49_N18
\comb_90|registradores[29][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[29][10]~feeder_combout\ = \comb_90|Mux501~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux501~2_combout\,
	combout => \comb_90|registradores[29][10]~feeder_combout\);

-- Location: FF_X54_Y49_N19
\comb_90|registradores[29][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[29][10]~feeder_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][10]~q\);

-- Location: LCCOMB_X55_Y45_N24
\comb_90|Mux517~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux517~0_combout\ = (\comb_88|Mux13~1_combout\ & (\comb_88|Mux10~1_combout\)) # (!\comb_88|Mux13~1_combout\ & ((\comb_88|Mux10~1_combout\ & ((!\comb_90|registradores[29][10]~q\))) # (!\comb_88|Mux10~1_combout\ & 
-- (!\comb_90|registradores[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[0][10]~q\,
	datad => \comb_90|registradores[29][10]~q\,
	combout => \comb_90|Mux517~0_combout\);

-- Location: FF_X55_Y48_N3
\comb_90|registradores[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux501~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][10]~q\);

-- Location: LCCOMB_X55_Y45_N18
\comb_90|Mux517~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux517~1_combout\ = (\comb_90|Mux517~0_combout\ & (((!\comb_88|Mux13~1_combout\)) # (!\comb_90|registradores[31][10]~q\))) # (!\comb_90|Mux517~0_combout\ & (((\comb_88|Mux13~1_combout\ & !\comb_90|registradores[2][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][10]~q\,
	datab => \comb_90|Mux517~0_combout\,
	datac => \comb_88|Mux13~1_combout\,
	datad => \comb_90|registradores[2][10]~q\,
	combout => \comb_90|Mux517~1_combout\);

-- Location: LCCOMB_X56_Y47_N4
\comb_90|Mux566~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux566~0_combout\ = (\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[30][9]~q\))) # (!\comb_88|Mux15~1_combout\ & (\comb_90|registradores[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][9]~q\,
	datac => \comb_90|registradores[30][9]~q\,
	datad => \comb_88|Mux15~1_combout\,
	combout => \comb_90|Mux566~0_combout\);

-- Location: FF_X56_Y47_N7
\comb_90|registradores[30][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][8]~q\);

-- Location: LCCOMB_X56_Y47_N22
\comb_90|Mux567~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux567~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][8]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[30][8]~q\,
	datac => \comb_90|registradores[0][8]~q\,
	datad => \comb_88|Mux15~1_combout\,
	combout => \comb_90|Mux567~0_combout\);

-- Location: LCCOMB_X56_Y47_N16
\comb_90|Mux568~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux568~0_combout\ = (\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[30][7]~q\))) # (!\comb_88|Mux15~1_combout\ & (\comb_90|registradores[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][7]~q\,
	datac => \comb_90|registradores[30][7]~q\,
	datad => \comb_88|Mux15~1_combout\,
	combout => \comb_90|Mux568~0_combout\);

-- Location: LCCOMB_X56_Y47_N12
\comb_90|Mux570~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux570~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][5]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux15~1_combout\,
	datac => \comb_90|registradores[30][5]~q\,
	datad => \comb_90|registradores[0][5]~q\,
	combout => \comb_90|Mux570~0_combout\);

-- Location: LCCOMB_X56_Y47_N14
\comb_90|Mux571~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux571~0_combout\ = (\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[30][4]~q\))) # (!\comb_88|Mux15~1_combout\ & (\comb_90|registradores[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][4]~q\,
	datac => \comb_90|registradores[30][4]~q\,
	datad => \comb_88|Mux15~1_combout\,
	combout => \comb_90|Mux571~0_combout\);

-- Location: FF_X56_Y45_N31
\comb_90|registradores[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux508~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][3]~q\);

-- Location: LCCOMB_X54_Y45_N28
\comb_90|registradores[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[0][3]~feeder_combout\ = \comb_90|Mux508~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux508~1_combout\,
	combout => \comb_90|registradores[0][3]~feeder_combout\);

-- Location: FF_X54_Y45_N29
\comb_90|registradores[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[0][3]~feeder_combout\,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][3]~q\);

-- Location: LCCOMB_X56_Y45_N2
\comb_90|Mux572~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux572~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][3]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datac => \comb_90|registradores[30][3]~q\,
	datad => \comb_90|registradores[0][3]~q\,
	combout => \comb_90|Mux572~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: LCCOMB_X57_Y46_N0
\comb_90|registradores[29][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[29][2]~feeder_combout\ = \comb_90|Mux509~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux509~1_combout\,
	combout => \comb_90|registradores[29][2]~feeder_combout\);

-- Location: FF_X57_Y46_N1
\comb_90|registradores[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[29][2]~feeder_combout\,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][2]~q\);

-- Location: FF_X58_Y46_N17
\comb_90|registradores[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux509~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][2]~q\);

-- Location: FF_X56_Y45_N17
\comb_90|registradores[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux509~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][2]~q\);

-- Location: LCCOMB_X56_Y45_N16
\comb_90|Mux541~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux541~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][2]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][2]~q\,
	datad => \comb_90|registradores[30][2]~q\,
	combout => \comb_90|Mux541~0_combout\);

-- Location: LCCOMB_X58_Y46_N16
\comb_90|Mux541~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux541~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux541~0_combout\ & ((\comb_90|registradores[31][2]~q\))) # (!\comb_90|Mux541~0_combout\ & (\comb_90|registradores[29][2]~q\)))) # (!\comb_88|Mux9~1_combout\ & 
-- (((\comb_90|Mux541~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[29][2]~q\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[31][2]~q\,
	datad => \comb_90|Mux541~0_combout\,
	combout => \comb_90|Mux541~1_combout\);

-- Location: FF_X57_Y47_N17
\comb_90|registradores[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux509~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][2]~q\);

-- Location: FF_X58_Y46_N31
\comb_90|registradores[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux509~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][2]~q\);

-- Location: FF_X57_Y45_N11
\comb_90|registradores[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux509~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][2]~q\);

-- Location: FF_X57_Y47_N3
\comb_90|registradores[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux509~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][2]~q\);

-- Location: LCCOMB_X57_Y45_N10
\comb_90|Mux541~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux541~2_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux9~1_combout\)) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & (\comb_90|registradores[1][2]~q\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[1][2]~q\,
	datad => \comb_90|registradores[0][2]~q\,
	combout => \comb_90|Mux541~2_combout\);

-- Location: LCCOMB_X58_Y46_N30
\comb_90|Mux541~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux541~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux541~2_combout\ & ((\comb_90|registradores[3][2]~q\))) # (!\comb_90|Mux541~2_combout\ & (\comb_90|registradores[2][2]~q\)))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux541~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[2][2]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[3][2]~q\,
	datad => \comb_90|Mux541~2_combout\,
	combout => \comb_90|Mux541~3_combout\);

-- Location: LCCOMB_X58_Y46_N8
\comb_90|Mux541~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux541~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux541~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux541~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux541~1_combout\,
	datac => \comb_90|Mux541~3_combout\,
	datad => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux541~4_combout\);

-- Location: FF_X63_Y46_N7
\comb_91|memoria_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux541~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(3));

-- Location: FF_X53_Y46_N19
\comb_90|registradores[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux508~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][3]~q\);

-- Location: FF_X56_Y45_N7
\comb_90|registradores[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux508~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][3]~q\);

-- Location: LCCOMB_X56_Y45_N6
\comb_90|Mux540~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux540~0_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][3]~q\) # ((\comb_88|Mux9~1_combout\)))) # (!\comb_88|Mux8~1_combout\ & (((\comb_90|registradores[28][3]~q\ & !\comb_88|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[30][3]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][3]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux540~0_combout\);

-- Location: LCCOMB_X57_Y46_N14
\comb_90|Mux540~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux540~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux540~0_combout\ & (\comb_90|registradores[31][3]~q\)) # (!\comb_90|Mux540~0_combout\ & ((\comb_90|registradores[29][3]~q\))))) # (!\comb_88|Mux9~1_combout\ & 
-- (((\comb_90|Mux540~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[31][3]~q\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[29][3]~q\,
	datad => \comb_90|Mux540~0_combout\,
	combout => \comb_90|Mux540~1_combout\);

-- Location: FF_X54_Y45_N3
\comb_90|registradores[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux508~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][3]~q\);

-- Location: FF_X58_Y46_N19
\comb_90|registradores[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux508~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][3]~q\);

-- Location: FF_X57_Y45_N17
\comb_90|registradores[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux508~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][3]~q\);

-- Location: LCCOMB_X57_Y45_N16
\comb_90|Mux540~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux540~2_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux9~1_combout\)) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & (\comb_90|registradores[1][3]~q\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[1][3]~q\,
	datad => \comb_90|registradores[0][3]~q\,
	combout => \comb_90|Mux540~2_combout\);

-- Location: LCCOMB_X58_Y46_N18
\comb_90|Mux540~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux540~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux540~2_combout\ & ((\comb_90|registradores[3][3]~q\))) # (!\comb_90|Mux540~2_combout\ & (\comb_90|registradores[2][3]~q\)))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux540~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[2][3]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[3][3]~q\,
	datad => \comb_90|Mux540~2_combout\,
	combout => \comb_90|Mux540~3_combout\);

-- Location: LCCOMB_X58_Y46_N4
\comb_90|Mux540~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux540~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux540~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux540~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux540~1_combout\,
	datab => \comb_90|Mux540~3_combout\,
	datad => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux540~4_combout\);

-- Location: M9K_X64_Y46_N0
\comb_91|memoria_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memoriaprincipal:comb_91|altsyncram:memoria_rtl_0|altsyncram_mlc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_89|controle_memoria\(0),
	portbre => VCC,
	clk0 => \comb_96|DB_out~clkctrl_outclk\,
	clk1 => \comb_96|DB_out~clkctrl_outclk\,
	ena0 => \comb_89|controle_memoria\(0),
	portadatain => \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \comb_91|memoria_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y46_N6
\comb_91|memoria~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_91|memoria~5_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(3))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(3),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a2\,
	combout => \comb_91|memoria~5_combout\);

-- Location: LCCOMB_X56_Y49_N26
\comb_92|ula~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~30_combout\ = (\comb_88|Mux29~1_combout\ & !\comb_90|Mux525~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux29~1_combout\,
	datac => \comb_90|Mux525~1_combout\,
	combout => \comb_92|ula~30_combout\);

-- Location: LCCOMB_X56_Y49_N28
\comb_92|ula~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~31_combout\ = (!\comb_90|Mux525~1_combout\ & \comb_90|Mux573~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux525~1_combout\,
	datad => \comb_90|Mux573~0_combout\,
	combout => \comb_92|ula~31_combout\);

-- Location: LCCOMB_X56_Y49_N30
\comb_92|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux2~1_combout\ = (\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1)) # ((\comb_92|ula~30_combout\)))) # (!\comb_89|controle_ula\(0) & (!\comb_89|controle_ula\(1) & ((\comb_92|ula~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|ula~30_combout\,
	datad => \comb_92|ula~31_combout\,
	combout => \comb_92|Mux2~1_combout\);

-- Location: LCCOMB_X56_Y49_N8
\comb_92|ula~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~29_combout\ = (\comb_90|Mux573~0_combout\) # (!\comb_90|Mux525~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux525~1_combout\,
	datab => \comb_90|Mux573~0_combout\,
	combout => \comb_92|ula~29_combout\);

-- Location: LCCOMB_X56_Y49_N24
\comb_92|ula~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~32_combout\ = (\comb_88|Mux29~1_combout\) # (!\comb_90|Mux525~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux29~1_combout\,
	datac => \comb_90|Mux525~1_combout\,
	combout => \comb_92|ula~32_combout\);

-- Location: LCCOMB_X56_Y49_N18
\comb_92|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux2~2_combout\ = (\comb_92|Mux2~1_combout\ & (((\comb_92|ula~32_combout\)) # (!\comb_89|controle_ula\(1)))) # (!\comb_92|Mux2~1_combout\ & (\comb_89|controle_ula\(1) & (\comb_92|ula~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~1_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|ula~29_combout\,
	datad => \comb_92|ula~32_combout\,
	combout => \comb_92|Mux2~2_combout\);

-- Location: LCCOMB_X58_Y49_N0
\comb_92|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~0_combout\ = (\comb_88|Mux31~1_combout\ & (\comb_90|Mux527~1_combout\ $ (VCC))) # (!\comb_88|Mux31~1_combout\ & ((\comb_90|Mux527~1_combout\) # (GND)))
-- \comb_92|Add3~1\ = CARRY((\comb_90|Mux527~1_combout\) # (!\comb_88|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux31~1_combout\,
	datab => \comb_90|Mux527~1_combout\,
	datad => VCC,
	combout => \comb_92|Add3~0_combout\,
	cout => \comb_92|Add3~1\);

-- Location: LCCOMB_X58_Y49_N2
\comb_92|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~2_combout\ = (\comb_88|Mux30~1_combout\ & ((\comb_90|Mux526~1_combout\ & ((\comb_92|Add3~1\) # (GND))) # (!\comb_90|Mux526~1_combout\ & (!\comb_92|Add3~1\)))) # (!\comb_88|Mux30~1_combout\ & ((\comb_90|Mux526~1_combout\ & 
-- (!\comb_92|Add3~1\)) # (!\comb_90|Mux526~1_combout\ & (\comb_92|Add3~1\ & VCC))))
-- \comb_92|Add3~3\ = CARRY((\comb_88|Mux30~1_combout\ & ((\comb_90|Mux526~1_combout\) # (!\comb_92|Add3~1\))) # (!\comb_88|Mux30~1_combout\ & (\comb_90|Mux526~1_combout\ & !\comb_92|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux30~1_combout\,
	datab => \comb_90|Mux526~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~1\,
	combout => \comb_92|Add3~2_combout\,
	cout => \comb_92|Add3~3\);

-- Location: LCCOMB_X58_Y49_N4
\comb_92|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~4_combout\ = ((\comb_88|Mux29~1_combout\ $ (\comb_90|Mux525~1_combout\ $ (!\comb_92|Add3~3\)))) # (GND)
-- \comb_92|Add3~5\ = CARRY((\comb_88|Mux29~1_combout\ & (!\comb_90|Mux525~1_combout\ & !\comb_92|Add3~3\)) # (!\comb_88|Mux29~1_combout\ & ((!\comb_92|Add3~3\) # (!\comb_90|Mux525~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux29~1_combout\,
	datab => \comb_90|Mux525~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~3\,
	combout => \comb_92|Add3~4_combout\,
	cout => \comb_92|Add3~5\);

-- Location: LCCOMB_X56_Y45_N18
\comb_90|Mux574~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux574~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][1]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datab => \comb_90|registradores[30][1]~q\,
	datad => \comb_90|registradores[0][1]~q\,
	combout => \comb_90|Mux574~0_combout\);

-- Location: FF_X56_Y45_N11
\comb_90|registradores[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux511~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][0]~q\);

-- Location: LCCOMB_X56_Y45_N24
\comb_90|Mux575~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux575~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][0]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datab => \comb_90|registradores[30][0]~q\,
	datad => \comb_90|registradores[0][0]~q\,
	combout => \comb_90|Mux575~0_combout\);

-- Location: LCCOMB_X54_Y48_N16
\comb_92|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~0_combout\ = (\comb_90|Mux575~0_combout\ & (\comb_90|Mux527~1_combout\ $ (VCC))) # (!\comb_90|Mux575~0_combout\ & (\comb_90|Mux527~1_combout\ & VCC))
-- \comb_92|Add0~1\ = CARRY((\comb_90|Mux575~0_combout\ & \comb_90|Mux527~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux575~0_combout\,
	datab => \comb_90|Mux527~1_combout\,
	datad => VCC,
	combout => \comb_92|Add0~0_combout\,
	cout => \comb_92|Add0~1\);

-- Location: LCCOMB_X54_Y48_N18
\comb_92|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~2_combout\ = (\comb_90|Mux526~1_combout\ & ((\comb_90|Mux574~0_combout\ & (!\comb_92|Add0~1\)) # (!\comb_90|Mux574~0_combout\ & ((\comb_92|Add0~1\) # (GND))))) # (!\comb_90|Mux526~1_combout\ & ((\comb_90|Mux574~0_combout\ & (\comb_92|Add0~1\ 
-- & VCC)) # (!\comb_90|Mux574~0_combout\ & (!\comb_92|Add0~1\))))
-- \comb_92|Add0~3\ = CARRY((\comb_90|Mux526~1_combout\ & ((!\comb_92|Add0~1\) # (!\comb_90|Mux574~0_combout\))) # (!\comb_90|Mux526~1_combout\ & (!\comb_90|Mux574~0_combout\ & !\comb_92|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux526~1_combout\,
	datab => \comb_90|Mux574~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~1\,
	combout => \comb_92|Add0~2_combout\,
	cout => \comb_92|Add0~3\);

-- Location: LCCOMB_X54_Y48_N20
\comb_92|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~4_combout\ = ((\comb_90|Mux525~1_combout\ $ (\comb_90|Mux573~0_combout\ $ (\comb_92|Add0~3\)))) # (GND)
-- \comb_92|Add0~5\ = CARRY((\comb_90|Mux525~1_combout\ & (\comb_90|Mux573~0_combout\ & !\comb_92|Add0~3\)) # (!\comb_90|Mux525~1_combout\ & ((\comb_90|Mux573~0_combout\) # (!\comb_92|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux525~1_combout\,
	datab => \comb_90|Mux573~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~3\,
	combout => \comb_92|Add0~4_combout\,
	cout => \comb_92|Add0~5\);

-- Location: LCCOMB_X57_Y49_N0
\comb_92|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~0_combout\ = (\comb_90|Mux527~1_combout\ & ((GND) # (!\comb_90|Mux575~0_combout\))) # (!\comb_90|Mux527~1_combout\ & (\comb_90|Mux575~0_combout\ $ (GND)))
-- \comb_92|Add2~1\ = CARRY((\comb_90|Mux527~1_combout\) # (!\comb_90|Mux575~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux527~1_combout\,
	datab => \comb_90|Mux575~0_combout\,
	datad => VCC,
	combout => \comb_92|Add2~0_combout\,
	cout => \comb_92|Add2~1\);

-- Location: LCCOMB_X57_Y49_N2
\comb_92|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~2_combout\ = (\comb_90|Mux526~1_combout\ & ((\comb_90|Mux574~0_combout\ & ((\comb_92|Add2~1\) # (GND))) # (!\comb_90|Mux574~0_combout\ & (!\comb_92|Add2~1\)))) # (!\comb_90|Mux526~1_combout\ & ((\comb_90|Mux574~0_combout\ & 
-- (!\comb_92|Add2~1\)) # (!\comb_90|Mux574~0_combout\ & (\comb_92|Add2~1\ & VCC))))
-- \comb_92|Add2~3\ = CARRY((\comb_90|Mux526~1_combout\ & ((\comb_90|Mux574~0_combout\) # (!\comb_92|Add2~1\))) # (!\comb_90|Mux526~1_combout\ & (\comb_90|Mux574~0_combout\ & !\comb_92|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux526~1_combout\,
	datab => \comb_90|Mux574~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~1\,
	combout => \comb_92|Add2~2_combout\,
	cout => \comb_92|Add2~3\);

-- Location: LCCOMB_X57_Y49_N4
\comb_92|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~4_combout\ = ((\comb_90|Mux573~0_combout\ $ (\comb_90|Mux525~1_combout\ $ (!\comb_92|Add2~3\)))) # (GND)
-- \comb_92|Add2~5\ = CARRY((\comb_90|Mux573~0_combout\ & (!\comb_90|Mux525~1_combout\ & !\comb_92|Add2~3\)) # (!\comb_90|Mux573~0_combout\ & ((!\comb_92|Add2~3\) # (!\comb_90|Mux525~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux573~0_combout\,
	datab => \comb_90|Mux525~1_combout\,
	datad => VCC,
	cin => \comb_92|Add2~3\,
	combout => \comb_92|Add2~4_combout\,
	cout => \comb_92|Add2~5\);

-- Location: LCCOMB_X56_Y49_N12
\comb_92|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux2~3_combout\ = (\comb_89|controle_ula\(0) & (\comb_89|controle_ula\(1))) # (!\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1) & ((\comb_92|Add2~4_combout\))) # (!\comb_89|controle_ula\(1) & (\comb_92|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|Add0~4_combout\,
	datad => \comb_92|Add2~4_combout\,
	combout => \comb_92|Mux2~3_combout\);

-- Location: LCCOMB_X58_Y48_N16
\comb_92|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~0_combout\ = (\comb_90|Mux527~1_combout\ & (\comb_88|Mux31~1_combout\ $ (VCC))) # (!\comb_90|Mux527~1_combout\ & (\comb_88|Mux31~1_combout\ & VCC))
-- \comb_92|Add1~1\ = CARRY((\comb_90|Mux527~1_combout\ & \comb_88|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux527~1_combout\,
	datab => \comb_88|Mux31~1_combout\,
	datad => VCC,
	combout => \comb_92|Add1~0_combout\,
	cout => \comb_92|Add1~1\);

-- Location: LCCOMB_X58_Y48_N18
\comb_92|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~2_combout\ = (\comb_90|Mux526~1_combout\ & ((\comb_88|Mux30~1_combout\ & (!\comb_92|Add1~1\)) # (!\comb_88|Mux30~1_combout\ & ((\comb_92|Add1~1\) # (GND))))) # (!\comb_90|Mux526~1_combout\ & ((\comb_88|Mux30~1_combout\ & (\comb_92|Add1~1\ & 
-- VCC)) # (!\comb_88|Mux30~1_combout\ & (!\comb_92|Add1~1\))))
-- \comb_92|Add1~3\ = CARRY((\comb_90|Mux526~1_combout\ & ((!\comb_92|Add1~1\) # (!\comb_88|Mux30~1_combout\))) # (!\comb_90|Mux526~1_combout\ & (!\comb_88|Mux30~1_combout\ & !\comb_92|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux526~1_combout\,
	datab => \comb_88|Mux30~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~1\,
	combout => \comb_92|Add1~2_combout\,
	cout => \comb_92|Add1~3\);

-- Location: LCCOMB_X58_Y48_N20
\comb_92|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~4_combout\ = ((\comb_88|Mux29~1_combout\ $ (\comb_90|Mux525~1_combout\ $ (\comb_92|Add1~3\)))) # (GND)
-- \comb_92|Add1~5\ = CARRY((\comb_88|Mux29~1_combout\ & ((!\comb_92|Add1~3\) # (!\comb_90|Mux525~1_combout\))) # (!\comb_88|Mux29~1_combout\ & (!\comb_90|Mux525~1_combout\ & !\comb_92|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux29~1_combout\,
	datab => \comb_90|Mux525~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~3\,
	combout => \comb_92|Add1~4_combout\,
	cout => \comb_92|Add1~5\);

-- Location: LCCOMB_X56_Y49_N22
\comb_92|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux2~4_combout\ = (\comb_92|Mux2~3_combout\ & ((\comb_92|Add3~4_combout\) # ((!\comb_89|controle_ula\(0))))) # (!\comb_92|Mux2~3_combout\ & (((\comb_92|Add1~4_combout\ & \comb_89|controle_ula\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add3~4_combout\,
	datab => \comb_92|Mux2~3_combout\,
	datac => \comb_92|Add1~4_combout\,
	datad => \comb_89|controle_ula\(0),
	combout => \comb_92|Mux2~4_combout\);

-- Location: LCCOMB_X56_Y49_N16
\comb_92|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux2~5_combout\ = (\comb_89|controle_ula\(2) & (\comb_92|Mux2~2_combout\)) # (!\comb_89|controle_ula\(2) & ((\comb_92|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~2_combout\,
	datab => \comb_89|controle_ula\(2),
	datad => \comb_92|Mux2~4_combout\,
	combout => \comb_92|Mux2~5_combout\);

-- Location: LCCOMB_X56_Y49_N10
\comb_92|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux2~6_combout\ = (\comb_89|controle_ula\(3) & (\comb_90|Mux525~1_combout\ & ((\comb_92|Mux2~0_combout\)))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux525~1_combout\,
	datab => \comb_89|controle_ula\(3),
	datac => \comb_92|Mux2~5_combout\,
	datad => \comb_92|Mux2~0_combout\,
	combout => \comb_92|Mux2~6_combout\);

-- Location: LCCOMB_X55_Y49_N30
\comb_92|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux16~0_combout\ = (\comb_89|controle_ula\(3) & ((\comb_89|controle_ula\(0) & ((!\comb_89|controle_ula\(1)))) # (!\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1)) # (!\comb_89|controle_ula\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(2),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_89|controle_ula\(3),
	datad => \comb_89|controle_ula\(1),
	combout => \comb_92|Mux16~0_combout\);

-- Location: CLKCTRL_G10
\comb_92|Mux16~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_92|Mux16~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_92|Mux16~0clkctrl_outclk\);

-- Location: LCCOMB_X58_Y46_N22
\comb_92|ula[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(2) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(2))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(2),
	datab => \comb_92|Mux2~6_combout\,
	datac => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(2));

-- Location: LCCOMB_X58_Y46_N6
\comb_90|Mux509~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux509~0_combout\ = (\comb_90|registradores[0][15]~1_combout\ & (((\comb_90|registradores[0][15]~0_combout\)))) # (!\comb_90|registradores[0][15]~1_combout\ & ((\comb_90|registradores[0][15]~0_combout\ & (\comb_91|memoria~5_combout\)) # 
-- (!\comb_90|registradores[0][15]~0_combout\ & ((\comb_92|ula\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~1_combout\,
	datab => \comb_91|memoria~5_combout\,
	datac => \comb_92|ula\(2),
	datad => \comb_90|registradores[0][15]~0_combout\,
	combout => \comb_90|Mux509~0_combout\);

-- Location: LCCOMB_X58_Y46_N0
\comb_90|Mux509~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux509~1_combout\ = (\comb_90|registradores[0][15]~1_combout\ & ((\comb_90|Mux509~0_combout\ & (\comb_88|Mux29~1_combout\)) # (!\comb_90|Mux509~0_combout\ & ((\entrada[2]~input_o\))))) # (!\comb_90|registradores[0][15]~1_combout\ & 
-- (((\comb_90|Mux509~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~1_combout\,
	datab => \comb_88|Mux29~1_combout\,
	datac => \entrada[2]~input_o\,
	datad => \comb_90|Mux509~0_combout\,
	combout => \comb_90|Mux509~1_combout\);

-- Location: LCCOMB_X56_Y45_N12
\comb_90|registradores[30][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[30][2]~feeder_combout\ = \comb_90|Mux509~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux509~1_combout\,
	combout => \comb_90|registradores[30][2]~feeder_combout\);

-- Location: FF_X56_Y45_N13
\comb_90|registradores[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[30][2]~feeder_combout\,
	ena => \comb_90|registradores[30][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[30][2]~q\);

-- Location: LCCOMB_X56_Y45_N22
\comb_90|Mux573~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux573~0_combout\ = (\comb_88|Mux15~1_combout\ & (\comb_90|registradores[30][2]~q\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|registradores[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datac => \comb_90|registradores[30][2]~q\,
	datad => \comb_90|registradores[0][2]~q\,
	combout => \comb_90|Mux573~0_combout\);

-- Location: LCCOMB_X54_Y48_N22
\comb_92|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~6_combout\ = (\comb_90|Mux524~1_combout\ & ((\comb_90|Mux572~0_combout\ & (!\comb_92|Add0~5\)) # (!\comb_90|Mux572~0_combout\ & ((\comb_92|Add0~5\) # (GND))))) # (!\comb_90|Mux524~1_combout\ & ((\comb_90|Mux572~0_combout\ & (\comb_92|Add0~5\ 
-- & VCC)) # (!\comb_90|Mux572~0_combout\ & (!\comb_92|Add0~5\))))
-- \comb_92|Add0~7\ = CARRY((\comb_90|Mux524~1_combout\ & ((!\comb_92|Add0~5\) # (!\comb_90|Mux572~0_combout\))) # (!\comb_90|Mux524~1_combout\ & (!\comb_90|Mux572~0_combout\ & !\comb_92|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux524~1_combout\,
	datab => \comb_90|Mux572~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~5\,
	combout => \comb_92|Add0~6_combout\,
	cout => \comb_92|Add0~7\);

-- Location: LCCOMB_X54_Y48_N24
\comb_92|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~8_combout\ = ((\comb_90|Mux571~0_combout\ $ (\comb_90|Mux523~1_combout\ $ (\comb_92|Add0~7\)))) # (GND)
-- \comb_92|Add0~9\ = CARRY((\comb_90|Mux571~0_combout\ & ((!\comb_92|Add0~7\) # (!\comb_90|Mux523~1_combout\))) # (!\comb_90|Mux571~0_combout\ & (!\comb_90|Mux523~1_combout\ & !\comb_92|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux571~0_combout\,
	datab => \comb_90|Mux523~1_combout\,
	datad => VCC,
	cin => \comb_92|Add0~7\,
	combout => \comb_92|Add0~8_combout\,
	cout => \comb_92|Add0~9\);

-- Location: LCCOMB_X54_Y48_N26
\comb_92|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~10_combout\ = (\comb_90|Mux522~1_combout\ & ((\comb_90|Mux570~0_combout\ & (!\comb_92|Add0~9\)) # (!\comb_90|Mux570~0_combout\ & ((\comb_92|Add0~9\) # (GND))))) # (!\comb_90|Mux522~1_combout\ & ((\comb_90|Mux570~0_combout\ & 
-- (\comb_92|Add0~9\ & VCC)) # (!\comb_90|Mux570~0_combout\ & (!\comb_92|Add0~9\))))
-- \comb_92|Add0~11\ = CARRY((\comb_90|Mux522~1_combout\ & ((!\comb_92|Add0~9\) # (!\comb_90|Mux570~0_combout\))) # (!\comb_90|Mux522~1_combout\ & (!\comb_90|Mux570~0_combout\ & !\comb_92|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux522~1_combout\,
	datab => \comb_90|Mux570~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~9\,
	combout => \comb_92|Add0~10_combout\,
	cout => \comb_92|Add0~11\);

-- Location: LCCOMB_X54_Y48_N28
\comb_92|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~12_combout\ = ((\comb_90|Mux521~1_combout\ $ (\comb_90|Mux569~0_combout\ $ (\comb_92|Add0~11\)))) # (GND)
-- \comb_92|Add0~13\ = CARRY((\comb_90|Mux521~1_combout\ & (\comb_90|Mux569~0_combout\ & !\comb_92|Add0~11\)) # (!\comb_90|Mux521~1_combout\ & ((\comb_90|Mux569~0_combout\) # (!\comb_92|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux521~1_combout\,
	datab => \comb_90|Mux569~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~11\,
	combout => \comb_92|Add0~12_combout\,
	cout => \comb_92|Add0~13\);

-- Location: LCCOMB_X54_Y48_N30
\comb_92|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~14_combout\ = (\comb_90|Mux568~0_combout\ & ((\comb_90|Mux520~1_combout\ & (!\comb_92|Add0~13\)) # (!\comb_90|Mux520~1_combout\ & (\comb_92|Add0~13\ & VCC)))) # (!\comb_90|Mux568~0_combout\ & ((\comb_90|Mux520~1_combout\ & 
-- ((\comb_92|Add0~13\) # (GND))) # (!\comb_90|Mux520~1_combout\ & (!\comb_92|Add0~13\))))
-- \comb_92|Add0~15\ = CARRY((\comb_90|Mux568~0_combout\ & (\comb_90|Mux520~1_combout\ & !\comb_92|Add0~13\)) # (!\comb_90|Mux568~0_combout\ & ((\comb_90|Mux520~1_combout\) # (!\comb_92|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux568~0_combout\,
	datab => \comb_90|Mux520~1_combout\,
	datad => VCC,
	cin => \comb_92|Add0~13\,
	combout => \comb_92|Add0~14_combout\,
	cout => \comb_92|Add0~15\);

-- Location: LCCOMB_X54_Y47_N0
\comb_92|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~16_combout\ = ((\comb_90|Mux567~0_combout\ $ (\comb_90|Mux519~1_combout\ $ (\comb_92|Add0~15\)))) # (GND)
-- \comb_92|Add0~17\ = CARRY((\comb_90|Mux567~0_combout\ & ((!\comb_92|Add0~15\) # (!\comb_90|Mux519~1_combout\))) # (!\comb_90|Mux567~0_combout\ & (!\comb_90|Mux519~1_combout\ & !\comb_92|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux567~0_combout\,
	datab => \comb_90|Mux519~1_combout\,
	datad => VCC,
	cin => \comb_92|Add0~15\,
	combout => \comb_92|Add0~16_combout\,
	cout => \comb_92|Add0~17\);

-- Location: LCCOMB_X54_Y47_N2
\comb_92|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~18_combout\ = (\comb_90|Mux518~1_combout\ & ((\comb_90|Mux566~0_combout\ & (!\comb_92|Add0~17\)) # (!\comb_90|Mux566~0_combout\ & ((\comb_92|Add0~17\) # (GND))))) # (!\comb_90|Mux518~1_combout\ & ((\comb_90|Mux566~0_combout\ & 
-- (\comb_92|Add0~17\ & VCC)) # (!\comb_90|Mux566~0_combout\ & (!\comb_92|Add0~17\))))
-- \comb_92|Add0~19\ = CARRY((\comb_90|Mux518~1_combout\ & ((!\comb_92|Add0~17\) # (!\comb_90|Mux566~0_combout\))) # (!\comb_90|Mux518~1_combout\ & (!\comb_90|Mux566~0_combout\ & !\comb_92|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux518~1_combout\,
	datab => \comb_90|Mux566~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~17\,
	combout => \comb_92|Add0~18_combout\,
	cout => \comb_92|Add0~19\);

-- Location: LCCOMB_X54_Y47_N4
\comb_92|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~20_combout\ = ((\comb_90|Mux565~0_combout\ $ (\comb_90|Mux517~1_combout\ $ (\comb_92|Add0~19\)))) # (GND)
-- \comb_92|Add0~21\ = CARRY((\comb_90|Mux565~0_combout\ & ((!\comb_92|Add0~19\) # (!\comb_90|Mux517~1_combout\))) # (!\comb_90|Mux565~0_combout\ & (!\comb_90|Mux517~1_combout\ & !\comb_92|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux565~0_combout\,
	datab => \comb_90|Mux517~1_combout\,
	datad => VCC,
	cin => \comb_92|Add0~19\,
	combout => \comb_92|Add0~20_combout\,
	cout => \comb_92|Add0~21\);

-- Location: LCCOMB_X54_Y47_N6
\comb_92|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~22_combout\ = (\comb_90|Mux564~0_combout\ & ((\comb_90|Mux516~1_combout\ & (!\comb_92|Add0~21\)) # (!\comb_90|Mux516~1_combout\ & (\comb_92|Add0~21\ & VCC)))) # (!\comb_90|Mux564~0_combout\ & ((\comb_90|Mux516~1_combout\ & 
-- ((\comb_92|Add0~21\) # (GND))) # (!\comb_90|Mux516~1_combout\ & (!\comb_92|Add0~21\))))
-- \comb_92|Add0~23\ = CARRY((\comb_90|Mux564~0_combout\ & (\comb_90|Mux516~1_combout\ & !\comb_92|Add0~21\)) # (!\comb_90|Mux564~0_combout\ & ((\comb_90|Mux516~1_combout\) # (!\comb_92|Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux564~0_combout\,
	datab => \comb_90|Mux516~1_combout\,
	datad => VCC,
	cin => \comb_92|Add0~21\,
	combout => \comb_92|Add0~22_combout\,
	cout => \comb_92|Add0~23\);

-- Location: LCCOMB_X54_Y47_N8
\comb_92|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~24_combout\ = ((\comb_90|Mux515~1_combout\ $ (\comb_90|Mux563~0_combout\ $ (\comb_92|Add0~23\)))) # (GND)
-- \comb_92|Add0~25\ = CARRY((\comb_90|Mux515~1_combout\ & (\comb_90|Mux563~0_combout\ & !\comb_92|Add0~23\)) # (!\comb_90|Mux515~1_combout\ & ((\comb_90|Mux563~0_combout\) # (!\comb_92|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux515~1_combout\,
	datab => \comb_90|Mux563~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~23\,
	combout => \comb_92|Add0~24_combout\,
	cout => \comb_92|Add0~25\);

-- Location: LCCOMB_X54_Y47_N10
\comb_92|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~26_combout\ = (\comb_90|Mux514~1_combout\ & ((\comb_90|Mux562~0_combout\ & (!\comb_92|Add0~25\)) # (!\comb_90|Mux562~0_combout\ & ((\comb_92|Add0~25\) # (GND))))) # (!\comb_90|Mux514~1_combout\ & ((\comb_90|Mux562~0_combout\ & 
-- (\comb_92|Add0~25\ & VCC)) # (!\comb_90|Mux562~0_combout\ & (!\comb_92|Add0~25\))))
-- \comb_92|Add0~27\ = CARRY((\comb_90|Mux514~1_combout\ & ((!\comb_92|Add0~25\) # (!\comb_90|Mux562~0_combout\))) # (!\comb_90|Mux514~1_combout\ & (!\comb_90|Mux562~0_combout\ & !\comb_92|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux562~0_combout\,
	datad => VCC,
	cin => \comb_92|Add0~25\,
	combout => \comb_92|Add0~26_combout\,
	cout => \comb_92|Add0~27\);

-- Location: LCCOMB_X54_Y47_N12
\comb_92|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~28_combout\ = ((\comb_90|Mux561~0_combout\ $ (\comb_90|Mux513~1_combout\ $ (\comb_92|Add0~27\)))) # (GND)
-- \comb_92|Add0~29\ = CARRY((\comb_90|Mux561~0_combout\ & ((!\comb_92|Add0~27\) # (!\comb_90|Mux513~1_combout\))) # (!\comb_90|Mux561~0_combout\ & (!\comb_90|Mux513~1_combout\ & !\comb_92|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux561~0_combout\,
	datab => \comb_90|Mux513~1_combout\,
	datad => VCC,
	cin => \comb_92|Add0~27\,
	combout => \comb_92|Add0~28_combout\,
	cout => \comb_92|Add0~29\);

-- Location: LCCOMB_X54_Y47_N14
\comb_92|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~30_combout\ = (\comb_90|Mux560~0_combout\ & ((\comb_90|Mux512~1_combout\ & (!\comb_92|Add0~29\)) # (!\comb_90|Mux512~1_combout\ & (\comb_92|Add0~29\ & VCC)))) # (!\comb_90|Mux560~0_combout\ & ((\comb_90|Mux512~1_combout\ & 
-- ((\comb_92|Add0~29\) # (GND))) # (!\comb_90|Mux512~1_combout\ & (!\comb_92|Add0~29\))))
-- \comb_92|Add0~31\ = CARRY((\comb_90|Mux560~0_combout\ & (\comb_90|Mux512~1_combout\ & !\comb_92|Add0~29\)) # (!\comb_90|Mux560~0_combout\ & ((\comb_90|Mux512~1_combout\) # (!\comb_92|Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux560~0_combout\,
	datab => \comb_90|Mux512~1_combout\,
	datad => VCC,
	cin => \comb_92|Add0~29\,
	combout => \comb_92|Add0~30_combout\,
	cout => \comb_92|Add0~31\);

-- Location: LCCOMB_X57_Y49_N6
\comb_92|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~6_combout\ = (\comb_90|Mux572~0_combout\ & ((\comb_90|Mux524~1_combout\ & ((\comb_92|Add2~5\) # (GND))) # (!\comb_90|Mux524~1_combout\ & (!\comb_92|Add2~5\)))) # (!\comb_90|Mux572~0_combout\ & ((\comb_90|Mux524~1_combout\ & 
-- (!\comb_92|Add2~5\)) # (!\comb_90|Mux524~1_combout\ & (\comb_92|Add2~5\ & VCC))))
-- \comb_92|Add2~7\ = CARRY((\comb_90|Mux572~0_combout\ & ((\comb_90|Mux524~1_combout\) # (!\comb_92|Add2~5\))) # (!\comb_90|Mux572~0_combout\ & (\comb_90|Mux524~1_combout\ & !\comb_92|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux572~0_combout\,
	datab => \comb_90|Mux524~1_combout\,
	datad => VCC,
	cin => \comb_92|Add2~5\,
	combout => \comb_92|Add2~6_combout\,
	cout => \comb_92|Add2~7\);

-- Location: LCCOMB_X57_Y49_N8
\comb_92|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~8_combout\ = ((\comb_90|Mux571~0_combout\ $ (\comb_90|Mux523~1_combout\ $ (!\comb_92|Add2~7\)))) # (GND)
-- \comb_92|Add2~9\ = CARRY((\comb_90|Mux571~0_combout\ & (!\comb_90|Mux523~1_combout\ & !\comb_92|Add2~7\)) # (!\comb_90|Mux571~0_combout\ & ((!\comb_92|Add2~7\) # (!\comb_90|Mux523~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux571~0_combout\,
	datab => \comb_90|Mux523~1_combout\,
	datad => VCC,
	cin => \comb_92|Add2~7\,
	combout => \comb_92|Add2~8_combout\,
	cout => \comb_92|Add2~9\);

-- Location: LCCOMB_X57_Y49_N10
\comb_92|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~10_combout\ = (\comb_90|Mux522~1_combout\ & ((\comb_90|Mux570~0_combout\ & ((\comb_92|Add2~9\) # (GND))) # (!\comb_90|Mux570~0_combout\ & (!\comb_92|Add2~9\)))) # (!\comb_90|Mux522~1_combout\ & ((\comb_90|Mux570~0_combout\ & 
-- (!\comb_92|Add2~9\)) # (!\comb_90|Mux570~0_combout\ & (\comb_92|Add2~9\ & VCC))))
-- \comb_92|Add2~11\ = CARRY((\comb_90|Mux522~1_combout\ & ((\comb_90|Mux570~0_combout\) # (!\comb_92|Add2~9\))) # (!\comb_90|Mux522~1_combout\ & (\comb_90|Mux570~0_combout\ & !\comb_92|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux522~1_combout\,
	datab => \comb_90|Mux570~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~9\,
	combout => \comb_92|Add2~10_combout\,
	cout => \comb_92|Add2~11\);

-- Location: LCCOMB_X57_Y49_N12
\comb_92|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~12_combout\ = ((\comb_90|Mux569~0_combout\ $ (\comb_90|Mux521~1_combout\ $ (!\comb_92|Add2~11\)))) # (GND)
-- \comb_92|Add2~13\ = CARRY((\comb_90|Mux569~0_combout\ & (!\comb_90|Mux521~1_combout\ & !\comb_92|Add2~11\)) # (!\comb_90|Mux569~0_combout\ & ((!\comb_92|Add2~11\) # (!\comb_90|Mux521~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux569~0_combout\,
	datab => \comb_90|Mux521~1_combout\,
	datad => VCC,
	cin => \comb_92|Add2~11\,
	combout => \comb_92|Add2~12_combout\,
	cout => \comb_92|Add2~13\);

-- Location: LCCOMB_X57_Y49_N14
\comb_92|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~14_combout\ = (\comb_90|Mux568~0_combout\ & ((\comb_90|Mux520~1_combout\ & ((\comb_92|Add2~13\) # (GND))) # (!\comb_90|Mux520~1_combout\ & (!\comb_92|Add2~13\)))) # (!\comb_90|Mux568~0_combout\ & ((\comb_90|Mux520~1_combout\ & 
-- (!\comb_92|Add2~13\)) # (!\comb_90|Mux520~1_combout\ & (\comb_92|Add2~13\ & VCC))))
-- \comb_92|Add2~15\ = CARRY((\comb_90|Mux568~0_combout\ & ((\comb_90|Mux520~1_combout\) # (!\comb_92|Add2~13\))) # (!\comb_90|Mux568~0_combout\ & (\comb_90|Mux520~1_combout\ & !\comb_92|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux568~0_combout\,
	datab => \comb_90|Mux520~1_combout\,
	datad => VCC,
	cin => \comb_92|Add2~13\,
	combout => \comb_92|Add2~14_combout\,
	cout => \comb_92|Add2~15\);

-- Location: LCCOMB_X57_Y49_N16
\comb_92|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~16_combout\ = ((\comb_90|Mux519~1_combout\ $ (\comb_90|Mux567~0_combout\ $ (!\comb_92|Add2~15\)))) # (GND)
-- \comb_92|Add2~17\ = CARRY((\comb_90|Mux519~1_combout\ & (!\comb_90|Mux567~0_combout\ & !\comb_92|Add2~15\)) # (!\comb_90|Mux519~1_combout\ & ((!\comb_92|Add2~15\) # (!\comb_90|Mux567~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux519~1_combout\,
	datab => \comb_90|Mux567~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~15\,
	combout => \comb_92|Add2~16_combout\,
	cout => \comb_92|Add2~17\);

-- Location: LCCOMB_X57_Y49_N18
\comb_92|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~18_combout\ = (\comb_90|Mux518~1_combout\ & ((\comb_90|Mux566~0_combout\ & ((\comb_92|Add2~17\) # (GND))) # (!\comb_90|Mux566~0_combout\ & (!\comb_92|Add2~17\)))) # (!\comb_90|Mux518~1_combout\ & ((\comb_90|Mux566~0_combout\ & 
-- (!\comb_92|Add2~17\)) # (!\comb_90|Mux566~0_combout\ & (\comb_92|Add2~17\ & VCC))))
-- \comb_92|Add2~19\ = CARRY((\comb_90|Mux518~1_combout\ & ((\comb_90|Mux566~0_combout\) # (!\comb_92|Add2~17\))) # (!\comb_90|Mux518~1_combout\ & (\comb_90|Mux566~0_combout\ & !\comb_92|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux518~1_combout\,
	datab => \comb_90|Mux566~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~17\,
	combout => \comb_92|Add2~18_combout\,
	cout => \comb_92|Add2~19\);

-- Location: LCCOMB_X57_Y49_N20
\comb_92|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~20_combout\ = ((\comb_90|Mux517~1_combout\ $ (\comb_90|Mux565~0_combout\ $ (!\comb_92|Add2~19\)))) # (GND)
-- \comb_92|Add2~21\ = CARRY((\comb_90|Mux517~1_combout\ & (!\comb_90|Mux565~0_combout\ & !\comb_92|Add2~19\)) # (!\comb_90|Mux517~1_combout\ & ((!\comb_92|Add2~19\) # (!\comb_90|Mux565~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux517~1_combout\,
	datab => \comb_90|Mux565~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~19\,
	combout => \comb_92|Add2~20_combout\,
	cout => \comb_92|Add2~21\);

-- Location: LCCOMB_X57_Y49_N22
\comb_92|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~22_combout\ = (\comb_90|Mux516~1_combout\ & ((\comb_90|Mux564~0_combout\ & ((\comb_92|Add2~21\) # (GND))) # (!\comb_90|Mux564~0_combout\ & (!\comb_92|Add2~21\)))) # (!\comb_90|Mux516~1_combout\ & ((\comb_90|Mux564~0_combout\ & 
-- (!\comb_92|Add2~21\)) # (!\comb_90|Mux564~0_combout\ & (\comb_92|Add2~21\ & VCC))))
-- \comb_92|Add2~23\ = CARRY((\comb_90|Mux516~1_combout\ & ((\comb_90|Mux564~0_combout\) # (!\comb_92|Add2~21\))) # (!\comb_90|Mux516~1_combout\ & (\comb_90|Mux564~0_combout\ & !\comb_92|Add2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux516~1_combout\,
	datab => \comb_90|Mux564~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~21\,
	combout => \comb_92|Add2~22_combout\,
	cout => \comb_92|Add2~23\);

-- Location: LCCOMB_X57_Y49_N24
\comb_92|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~24_combout\ = ((\comb_90|Mux563~0_combout\ $ (\comb_90|Mux515~1_combout\ $ (!\comb_92|Add2~23\)))) # (GND)
-- \comb_92|Add2~25\ = CARRY((\comb_90|Mux563~0_combout\ & (!\comb_90|Mux515~1_combout\ & !\comb_92|Add2~23\)) # (!\comb_90|Mux563~0_combout\ & ((!\comb_92|Add2~23\) # (!\comb_90|Mux515~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux563~0_combout\,
	datab => \comb_90|Mux515~1_combout\,
	datad => VCC,
	cin => \comb_92|Add2~23\,
	combout => \comb_92|Add2~24_combout\,
	cout => \comb_92|Add2~25\);

-- Location: LCCOMB_X57_Y49_N26
\comb_92|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~26_combout\ = (\comb_90|Mux514~1_combout\ & ((\comb_90|Mux562~0_combout\ & ((\comb_92|Add2~25\) # (GND))) # (!\comb_90|Mux562~0_combout\ & (!\comb_92|Add2~25\)))) # (!\comb_90|Mux514~1_combout\ & ((\comb_90|Mux562~0_combout\ & 
-- (!\comb_92|Add2~25\)) # (!\comb_90|Mux562~0_combout\ & (\comb_92|Add2~25\ & VCC))))
-- \comb_92|Add2~27\ = CARRY((\comb_90|Mux514~1_combout\ & ((\comb_90|Mux562~0_combout\) # (!\comb_92|Add2~25\))) # (!\comb_90|Mux514~1_combout\ & (\comb_90|Mux562~0_combout\ & !\comb_92|Add2~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux562~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~25\,
	combout => \comb_92|Add2~26_combout\,
	cout => \comb_92|Add2~27\);

-- Location: LCCOMB_X57_Y49_N28
\comb_92|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~28_combout\ = ((\comb_90|Mux513~1_combout\ $ (\comb_90|Mux561~0_combout\ $ (!\comb_92|Add2~27\)))) # (GND)
-- \comb_92|Add2~29\ = CARRY((\comb_90|Mux513~1_combout\ & (!\comb_90|Mux561~0_combout\ & !\comb_92|Add2~27\)) # (!\comb_90|Mux513~1_combout\ & ((!\comb_92|Add2~27\) # (!\comb_90|Mux561~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux513~1_combout\,
	datab => \comb_90|Mux561~0_combout\,
	datad => VCC,
	cin => \comb_92|Add2~27\,
	combout => \comb_92|Add2~28_combout\,
	cout => \comb_92|Add2~29\);

-- Location: LCCOMB_X57_Y49_N30
\comb_92|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add2~30_combout\ = \comb_90|Mux560~0_combout\ $ (\comb_92|Add2~29\ $ (\comb_90|Mux512~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux560~0_combout\,
	datad => \comb_90|Mux512~1_combout\,
	cin => \comb_92|Add2~29\,
	combout => \comb_92|Add2~30_combout\);

-- Location: LCCOMB_X58_Y47_N24
\comb_92|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux15~2_combout\ = (\comb_89|controle_ula\(0) & (((\comb_89|controle_ula\(1))))) # (!\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1) & ((\comb_92|Add2~30_combout\))) # (!\comb_89|controle_ula\(1) & (\comb_92|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add0~30_combout\,
	datab => \comb_89|controle_ula\(0),
	datac => \comb_89|controle_ula\(1),
	datad => \comb_92|Add2~30_combout\,
	combout => \comb_92|Mux15~2_combout\);

-- Location: LCCOMB_X58_Y48_N22
\comb_92|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~6_combout\ = (\comb_90|Mux524~1_combout\ & ((\comb_88|Mux28~0_combout\ & (!\comb_92|Add1~5\)) # (!\comb_88|Mux28~0_combout\ & ((\comb_92|Add1~5\) # (GND))))) # (!\comb_90|Mux524~1_combout\ & ((\comb_88|Mux28~0_combout\ & (\comb_92|Add1~5\ & 
-- VCC)) # (!\comb_88|Mux28~0_combout\ & (!\comb_92|Add1~5\))))
-- \comb_92|Add1~7\ = CARRY((\comb_90|Mux524~1_combout\ & ((!\comb_92|Add1~5\) # (!\comb_88|Mux28~0_combout\))) # (!\comb_90|Mux524~1_combout\ & (!\comb_88|Mux28~0_combout\ & !\comb_92|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux524~1_combout\,
	datab => \comb_88|Mux28~0_combout\,
	datad => VCC,
	cin => \comb_92|Add1~5\,
	combout => \comb_92|Add1~6_combout\,
	cout => \comb_92|Add1~7\);

-- Location: LCCOMB_X58_Y48_N24
\comb_92|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~8_combout\ = (\comb_90|Mux523~1_combout\ & (!\comb_92|Add1~7\ & VCC)) # (!\comb_90|Mux523~1_combout\ & (\comb_92|Add1~7\ $ (GND)))
-- \comb_92|Add1~9\ = CARRY((!\comb_90|Mux523~1_combout\ & !\comb_92|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux523~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~7\,
	combout => \comb_92|Add1~8_combout\,
	cout => \comb_92|Add1~9\);

-- Location: LCCOMB_X58_Y48_N26
\comb_92|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~10_combout\ = (\comb_90|Mux522~1_combout\ & ((\comb_92|Add1~9\) # (GND))) # (!\comb_90|Mux522~1_combout\ & (!\comb_92|Add1~9\))
-- \comb_92|Add1~11\ = CARRY((\comb_90|Mux522~1_combout\) # (!\comb_92|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux522~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~9\,
	combout => \comb_92|Add1~10_combout\,
	cout => \comb_92|Add1~11\);

-- Location: LCCOMB_X58_Y48_N28
\comb_92|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~12_combout\ = (\comb_90|Mux521~1_combout\ & (!\comb_92|Add1~11\ & VCC)) # (!\comb_90|Mux521~1_combout\ & (\comb_92|Add1~11\ $ (GND)))
-- \comb_92|Add1~13\ = CARRY((!\comb_90|Mux521~1_combout\ & !\comb_92|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux521~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~11\,
	combout => \comb_92|Add1~12_combout\,
	cout => \comb_92|Add1~13\);

-- Location: LCCOMB_X58_Y48_N30
\comb_92|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~14_combout\ = (\comb_90|Mux520~1_combout\ & ((\comb_92|Add1~13\) # (GND))) # (!\comb_90|Mux520~1_combout\ & (!\comb_92|Add1~13\))
-- \comb_92|Add1~15\ = CARRY((\comb_90|Mux520~1_combout\) # (!\comb_92|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux520~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~13\,
	combout => \comb_92|Add1~14_combout\,
	cout => \comb_92|Add1~15\);

-- Location: LCCOMB_X58_Y47_N0
\comb_92|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~16_combout\ = (\comb_90|Mux519~1_combout\ & (!\comb_92|Add1~15\ & VCC)) # (!\comb_90|Mux519~1_combout\ & (\comb_92|Add1~15\ $ (GND)))
-- \comb_92|Add1~17\ = CARRY((!\comb_90|Mux519~1_combout\ & !\comb_92|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux519~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~15\,
	combout => \comb_92|Add1~16_combout\,
	cout => \comb_92|Add1~17\);

-- Location: LCCOMB_X58_Y47_N2
\comb_92|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~18_combout\ = (\comb_90|Mux518~1_combout\ & ((\comb_92|Add1~17\) # (GND))) # (!\comb_90|Mux518~1_combout\ & (!\comb_92|Add1~17\))
-- \comb_92|Add1~19\ = CARRY((\comb_90|Mux518~1_combout\) # (!\comb_92|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux518~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~17\,
	combout => \comb_92|Add1~18_combout\,
	cout => \comb_92|Add1~19\);

-- Location: LCCOMB_X58_Y47_N4
\comb_92|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~20_combout\ = (\comb_90|Mux517~1_combout\ & (!\comb_92|Add1~19\ & VCC)) # (!\comb_90|Mux517~1_combout\ & (\comb_92|Add1~19\ $ (GND)))
-- \comb_92|Add1~21\ = CARRY((!\comb_90|Mux517~1_combout\ & !\comb_92|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux517~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~19\,
	combout => \comb_92|Add1~20_combout\,
	cout => \comb_92|Add1~21\);

-- Location: LCCOMB_X58_Y47_N6
\comb_92|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~22_combout\ = (\comb_90|Mux516~1_combout\ & ((\comb_92|Add1~21\) # (GND))) # (!\comb_90|Mux516~1_combout\ & (!\comb_92|Add1~21\))
-- \comb_92|Add1~23\ = CARRY((\comb_90|Mux516~1_combout\) # (!\comb_92|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux516~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~21\,
	combout => \comb_92|Add1~22_combout\,
	cout => \comb_92|Add1~23\);

-- Location: LCCOMB_X58_Y47_N8
\comb_92|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~24_combout\ = (\comb_90|Mux515~1_combout\ & (!\comb_92|Add1~23\ & VCC)) # (!\comb_90|Mux515~1_combout\ & (\comb_92|Add1~23\ $ (GND)))
-- \comb_92|Add1~25\ = CARRY((!\comb_90|Mux515~1_combout\ & !\comb_92|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux515~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~23\,
	combout => \comb_92|Add1~24_combout\,
	cout => \comb_92|Add1~25\);

-- Location: LCCOMB_X58_Y47_N10
\comb_92|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~26_combout\ = (\comb_90|Mux514~1_combout\ & ((\comb_88|Mux15~1_combout\ & (!\comb_92|Add1~25\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_92|Add1~25\) # (GND))))) # (!\comb_90|Mux514~1_combout\ & ((\comb_88|Mux15~1_combout\ & 
-- (\comb_92|Add1~25\ & VCC)) # (!\comb_88|Mux15~1_combout\ & (!\comb_92|Add1~25\))))
-- \comb_92|Add1~27\ = CARRY((\comb_90|Mux514~1_combout\ & ((!\comb_92|Add1~25\) # (!\comb_88|Mux15~1_combout\))) # (!\comb_90|Mux514~1_combout\ & (!\comb_88|Mux15~1_combout\ & !\comb_92|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_88|Mux15~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~25\,
	combout => \comb_92|Add1~26_combout\,
	cout => \comb_92|Add1~27\);

-- Location: LCCOMB_X58_Y47_N12
\comb_92|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~28_combout\ = ((\comb_90|Mux513~1_combout\ $ (\comb_88|Mux15~1_combout\ $ (\comb_92|Add1~27\)))) # (GND)
-- \comb_92|Add1~29\ = CARRY((\comb_90|Mux513~1_combout\ & (\comb_88|Mux15~1_combout\ & !\comb_92|Add1~27\)) # (!\comb_90|Mux513~1_combout\ & ((\comb_88|Mux15~1_combout\) # (!\comb_92|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux513~1_combout\,
	datab => \comb_88|Mux15~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~27\,
	combout => \comb_92|Add1~28_combout\,
	cout => \comb_92|Add1~29\);

-- Location: LCCOMB_X58_Y47_N14
\comb_92|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~30_combout\ = (\comb_88|Mux15~1_combout\ & ((\comb_90|Mux512~1_combout\ & (!\comb_92|Add1~29\)) # (!\comb_90|Mux512~1_combout\ & (\comb_92|Add1~29\ & VCC)))) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|Mux512~1_combout\ & ((\comb_92|Add1~29\) 
-- # (GND))) # (!\comb_90|Mux512~1_combout\ & (!\comb_92|Add1~29\))))
-- \comb_92|Add1~31\ = CARRY((\comb_88|Mux15~1_combout\ & (\comb_90|Mux512~1_combout\ & !\comb_92|Add1~29\)) # (!\comb_88|Mux15~1_combout\ & ((\comb_90|Mux512~1_combout\) # (!\comb_92|Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datab => \comb_90|Mux512~1_combout\,
	datad => VCC,
	cin => \comb_92|Add1~29\,
	combout => \comb_92|Add1~30_combout\,
	cout => \comb_92|Add1~31\);

-- Location: LCCOMB_X58_Y49_N12
\comb_92|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~12_combout\ = (\comb_90|Mux521~1_combout\ & (\comb_92|Add3~11\ $ (GND))) # (!\comb_90|Mux521~1_combout\ & ((GND) # (!\comb_92|Add3~11\)))
-- \comb_92|Add3~13\ = CARRY((!\comb_92|Add3~11\) # (!\comb_90|Mux521~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux521~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~11\,
	combout => \comb_92|Add3~12_combout\,
	cout => \comb_92|Add3~13\);

-- Location: LCCOMB_X58_Y49_N14
\comb_92|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~14_combout\ = (\comb_90|Mux520~1_combout\ & (!\comb_92|Add3~13\)) # (!\comb_90|Mux520~1_combout\ & (\comb_92|Add3~13\ & VCC))
-- \comb_92|Add3~15\ = CARRY((\comb_90|Mux520~1_combout\ & !\comb_92|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~13\,
	combout => \comb_92|Add3~14_combout\,
	cout => \comb_92|Add3~15\);

-- Location: LCCOMB_X58_Y49_N16
\comb_92|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~16_combout\ = (\comb_90|Mux519~1_combout\ & (\comb_92|Add3~15\ $ (GND))) # (!\comb_90|Mux519~1_combout\ & ((GND) # (!\comb_92|Add3~15\)))
-- \comb_92|Add3~17\ = CARRY((!\comb_92|Add3~15\) # (!\comb_90|Mux519~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux519~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~15\,
	combout => \comb_92|Add3~16_combout\,
	cout => \comb_92|Add3~17\);

-- Location: LCCOMB_X58_Y49_N18
\comb_92|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~18_combout\ = (\comb_90|Mux518~1_combout\ & (!\comb_92|Add3~17\)) # (!\comb_90|Mux518~1_combout\ & (\comb_92|Add3~17\ & VCC))
-- \comb_92|Add3~19\ = CARRY((\comb_90|Mux518~1_combout\ & !\comb_92|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux518~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~17\,
	combout => \comb_92|Add3~18_combout\,
	cout => \comb_92|Add3~19\);

-- Location: LCCOMB_X58_Y49_N20
\comb_92|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~20_combout\ = (\comb_90|Mux517~1_combout\ & (\comb_92|Add3~19\ $ (GND))) # (!\comb_90|Mux517~1_combout\ & ((GND) # (!\comb_92|Add3~19\)))
-- \comb_92|Add3~21\ = CARRY((!\comb_92|Add3~19\) # (!\comb_90|Mux517~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux517~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~19\,
	combout => \comb_92|Add3~20_combout\,
	cout => \comb_92|Add3~21\);

-- Location: LCCOMB_X58_Y49_N22
\comb_92|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~22_combout\ = (\comb_90|Mux516~1_combout\ & (!\comb_92|Add3~21\)) # (!\comb_90|Mux516~1_combout\ & (\comb_92|Add3~21\ & VCC))
-- \comb_92|Add3~23\ = CARRY((\comb_90|Mux516~1_combout\ & !\comb_92|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux516~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~21\,
	combout => \comb_92|Add3~22_combout\,
	cout => \comb_92|Add3~23\);

-- Location: LCCOMB_X58_Y49_N24
\comb_92|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~24_combout\ = (\comb_90|Mux515~1_combout\ & (\comb_92|Add3~23\ $ (GND))) # (!\comb_90|Mux515~1_combout\ & ((GND) # (!\comb_92|Add3~23\)))
-- \comb_92|Add3~25\ = CARRY((!\comb_92|Add3~23\) # (!\comb_90|Mux515~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux515~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~23\,
	combout => \comb_92|Add3~24_combout\,
	cout => \comb_92|Add3~25\);

-- Location: LCCOMB_X58_Y49_N26
\comb_92|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~26_combout\ = (\comb_90|Mux514~1_combout\ & ((\comb_88|Mux15~1_combout\ & ((\comb_92|Add3~25\) # (GND))) # (!\comb_88|Mux15~1_combout\ & (!\comb_92|Add3~25\)))) # (!\comb_90|Mux514~1_combout\ & ((\comb_88|Mux15~1_combout\ & 
-- (!\comb_92|Add3~25\)) # (!\comb_88|Mux15~1_combout\ & (\comb_92|Add3~25\ & VCC))))
-- \comb_92|Add3~27\ = CARRY((\comb_90|Mux514~1_combout\ & ((\comb_88|Mux15~1_combout\) # (!\comb_92|Add3~25\))) # (!\comb_90|Mux514~1_combout\ & (\comb_88|Mux15~1_combout\ & !\comb_92|Add3~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_88|Mux15~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~25\,
	combout => \comb_92|Add3~26_combout\,
	cout => \comb_92|Add3~27\);

-- Location: LCCOMB_X58_Y49_N28
\comb_92|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~28_combout\ = ((\comb_88|Mux15~1_combout\ $ (\comb_90|Mux513~1_combout\ $ (!\comb_92|Add3~27\)))) # (GND)
-- \comb_92|Add3~29\ = CARRY((\comb_88|Mux15~1_combout\ & (!\comb_90|Mux513~1_combout\ & !\comb_92|Add3~27\)) # (!\comb_88|Mux15~1_combout\ & ((!\comb_92|Add3~27\) # (!\comb_90|Mux513~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datab => \comb_90|Mux513~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~27\,
	combout => \comb_92|Add3~28_combout\,
	cout => \comb_92|Add3~29\);

-- Location: LCCOMB_X58_Y49_N30
\comb_92|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~30_combout\ = \comb_88|Mux15~1_combout\ $ (\comb_92|Add3~29\ $ (\comb_90|Mux512~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	cin => \comb_92|Add3~29\,
	combout => \comb_92|Add3~30_combout\);

-- Location: LCCOMB_X58_Y47_N18
\comb_92|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux15~3_combout\ = (\comb_92|Mux15~2_combout\ & (((\comb_92|Add3~30_combout\)) # (!\comb_89|controle_ula\(0)))) # (!\comb_92|Mux15~2_combout\ & (\comb_89|controle_ula\(0) & (\comb_92|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux15~2_combout\,
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|Add1~30_combout\,
	datad => \comb_92|Add3~30_combout\,
	combout => \comb_92|Mux15~3_combout\);

-- Location: LCCOMB_X58_Y47_N20
\comb_92|ula~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~17_combout\ = (\comb_88|Mux15~1_combout\) # (!\comb_90|Mux512~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux512~1_combout\,
	datad => \comb_88|Mux15~1_combout\,
	combout => \comb_92|ula~17_combout\);

-- Location: LCCOMB_X57_Y48_N22
\comb_92|ula~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~16_combout\ = (\comb_90|Mux560~0_combout\ & !\comb_90|Mux512~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux560~0_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_92|ula~16_combout\);

-- Location: LCCOMB_X57_Y48_N28
\comb_92|ula~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~15_combout\ = (\comb_88|Mux15~1_combout\ & !\comb_90|Mux512~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_92|ula~15_combout\);

-- Location: LCCOMB_X57_Y48_N8
\comb_92|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux15~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0))))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & ((\comb_92|ula~15_combout\))) # (!\comb_89|controle_ula\(0) & (\comb_92|ula~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~16_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|ula~15_combout\,
	combout => \comb_92|Mux15~0_combout\);

-- Location: LCCOMB_X58_Y47_N26
\comb_92|ula~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~14_combout\ = (\comb_90|Mux560~0_combout\) # (!\comb_90|Mux512~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux512~1_combout\,
	datad => \comb_90|Mux560~0_combout\,
	combout => \comb_92|ula~14_combout\);

-- Location: LCCOMB_X58_Y47_N22
\comb_92|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux15~1_combout\ = (\comb_89|controle_ula\(1) & ((\comb_92|Mux15~0_combout\ & (\comb_92|ula~17_combout\)) # (!\comb_92|Mux15~0_combout\ & ((\comb_92|ula~14_combout\))))) # (!\comb_89|controle_ula\(1) & (((\comb_92|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_92|ula~17_combout\,
	datac => \comb_92|Mux15~0_combout\,
	datad => \comb_92|ula~14_combout\,
	combout => \comb_92|Mux15~1_combout\);

-- Location: LCCOMB_X58_Y47_N28
\comb_92|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux15~4_combout\ = (\comb_89|controle_ula\(2) & ((\comb_92|Mux15~1_combout\))) # (!\comb_89|controle_ula\(2) & (\comb_92|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_ula\(2),
	datac => \comb_92|Mux15~3_combout\,
	datad => \comb_92|Mux15~1_combout\,
	combout => \comb_92|Mux15~4_combout\);

-- Location: LCCOMB_X57_Y46_N20
\comb_92|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux15~5_combout\ = (\comb_89|controle_ula\(3) & (\comb_92|Mux2~0_combout\ & ((\comb_90|Mux512~1_combout\)))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(3),
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_92|Mux15~4_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_92|Mux15~5_combout\);

-- Location: LCCOMB_X57_Y46_N6
\comb_92|ula[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(15) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(15))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(15),
	datac => \comb_92|Mux15~5_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(15));

-- Location: LCCOMB_X57_Y46_N2
\comb_90|Mux496~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux496~0_combout\ = (\comb_90|registradores[0][15]~0_combout\ & ((\comb_91|memoria~3_combout\) # ((\comb_90|registradores[0][15]~1_combout\)))) # (!\comb_90|registradores[0][15]~0_combout\ & (((!\comb_90|registradores[0][15]~1_combout\ & 
-- \comb_92|ula\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~0_combout\,
	datab => \comb_91|memoria~3_combout\,
	datac => \comb_90|registradores[0][15]~1_combout\,
	datad => \comb_92|ula\(15),
	combout => \comb_90|Mux496~0_combout\);

-- Location: LCCOMB_X57_Y46_N28
\comb_90|Mux496~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux496~1_combout\ = (\comb_90|registradores[0][15]~1_combout\ & ((\comb_90|Mux496~0_combout\ & ((\comb_88|Mux15~1_combout\))) # (!\comb_90|Mux496~0_combout\ & (\entrada[15]~input_o\)))) # (!\comb_90|registradores[0][15]~1_combout\ & 
-- (((\comb_90|Mux496~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[15]~input_o\,
	datab => \comb_88|Mux15~1_combout\,
	datac => \comb_90|registradores[0][15]~1_combout\,
	datad => \comb_90|Mux496~0_combout\,
	combout => \comb_90|Mux496~1_combout\);

-- Location: FF_X56_Y45_N21
\comb_90|registradores[28][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux496~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][15]~q\);

-- Location: LCCOMB_X56_Y45_N20
\comb_90|Mux528~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux528~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][15]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][15]~q\,
	datad => \comb_90|registradores[30][15]~q\,
	combout => \comb_90|Mux528~0_combout\);

-- Location: LCCOMB_X57_Y46_N18
\comb_90|Mux528~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux528~1_combout\ = (\comb_90|Mux528~0_combout\ & (((\comb_90|registradores[31][15]~q\)) # (!\comb_88|Mux9~1_combout\))) # (!\comb_90|Mux528~0_combout\ & (\comb_88|Mux9~1_combout\ & (\comb_90|registradores[29][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux528~0_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[29][15]~q\,
	datad => \comb_90|registradores[31][15]~q\,
	combout => \comb_90|Mux528~1_combout\);

-- Location: FF_X57_Y45_N25
\comb_90|registradores[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux496~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][15]~q\);

-- Location: LCCOMB_X57_Y45_N24
\comb_90|Mux528~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux528~2_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux9~1_combout\)) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & (\comb_90|registradores[1][15]~q\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[1][15]~q\,
	datad => \comb_90|registradores[0][15]~q\,
	combout => \comb_90|Mux528~2_combout\);

-- Location: FF_X57_Y45_N3
\comb_90|registradores[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux496~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][15]~q\);

-- Location: LCCOMB_X57_Y45_N2
\comb_90|Mux528~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux528~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux528~2_combout\ & (\comb_90|registradores[3][15]~q\)) # (!\comb_90|Mux528~2_combout\ & ((\comb_90|registradores[2][15]~q\))))) # (!\comb_88|Mux8~1_combout\ & 
-- (\comb_90|Mux528~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_90|Mux528~2_combout\,
	datac => \comb_90|registradores[3][15]~q\,
	datad => \comb_90|registradores[2][15]~q\,
	combout => \comb_90|Mux528~3_combout\);

-- Location: LCCOMB_X57_Y46_N22
\comb_90|Mux528~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux528~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux528~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux528~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_90|Mux528~1_combout\,
	datad => \comb_90|Mux528~3_combout\,
	combout => \comb_90|Mux528~4_combout\);

-- Location: LCCOMB_X63_Y45_N26
\comb_91|memoria~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_91|memoria~1_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(15))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(15),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a14\,
	combout => \comb_91|memoria~1_combout\);

-- Location: LCCOMB_X54_Y45_N26
\comb_92|ula~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~7_combout\ = (!\comb_90|Mux513~1_combout\ & \comb_90|Mux561~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux561~0_combout\,
	combout => \comb_92|ula~7_combout\);

-- Location: LCCOMB_X54_Y45_N16
\comb_92|ula~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~6_combout\ = (\comb_88|Mux15~1_combout\ & !\comb_90|Mux513~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux513~1_combout\,
	combout => \comb_92|ula~6_combout\);

-- Location: LCCOMB_X54_Y45_N10
\comb_92|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux14~0_combout\ = (\comb_89|controle_ula\(0) & (((\comb_89|controle_ula\(1)) # (\comb_92|ula~6_combout\)))) # (!\comb_89|controle_ula\(0) & (\comb_92|ula~7_combout\ & (!\comb_89|controle_ula\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~7_combout\,
	datab => \comb_89|controle_ula\(0),
	datac => \comb_89|controle_ula\(1),
	datad => \comb_92|ula~6_combout\,
	combout => \comb_92|Mux14~0_combout\);

-- Location: LCCOMB_X54_Y45_N24
\comb_92|ula~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~8_combout\ = (\comb_88|Mux15~1_combout\) # (!\comb_90|Mux513~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux513~1_combout\,
	combout => \comb_92|ula~8_combout\);

-- Location: LCCOMB_X55_Y45_N16
\comb_92|ula~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~5_combout\ = (\comb_90|Mux561~0_combout\) # (!\comb_90|Mux513~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux561~0_combout\,
	datad => \comb_90|Mux513~1_combout\,
	combout => \comb_92|ula~5_combout\);

-- Location: LCCOMB_X54_Y45_N4
\comb_92|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux14~1_combout\ = (\comb_92|Mux14~0_combout\ & ((\comb_92|ula~8_combout\) # ((!\comb_89|controle_ula\(1))))) # (!\comb_92|Mux14~0_combout\ & (((\comb_92|ula~5_combout\ & \comb_89|controle_ula\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux14~0_combout\,
	datab => \comb_92|ula~8_combout\,
	datac => \comb_92|ula~5_combout\,
	datad => \comb_89|controle_ula\(1),
	combout => \comb_92|Mux14~1_combout\);

-- Location: LCCOMB_X54_Y45_N22
\comb_92|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux14~2_combout\ = (\comb_89|controle_ula\(0) & (((\comb_89|controle_ula\(1))))) # (!\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1) & ((\comb_92|Add2~28_combout\))) # (!\comb_89|controle_ula\(1) & (\comb_92|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_92|Add0~28_combout\,
	datac => \comb_89|controle_ula\(1),
	datad => \comb_92|Add2~28_combout\,
	combout => \comb_92|Mux14~2_combout\);

-- Location: LCCOMB_X54_Y45_N8
\comb_92|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux14~3_combout\ = (\comb_89|controle_ula\(0) & ((\comb_92|Mux14~2_combout\ & ((\comb_92|Add3~28_combout\))) # (!\comb_92|Mux14~2_combout\ & (\comb_92|Add1~28_combout\)))) # (!\comb_89|controle_ula\(0) & (((\comb_92|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_92|Add1~28_combout\,
	datac => \comb_92|Mux14~2_combout\,
	datad => \comb_92|Add3~28_combout\,
	combout => \comb_92|Mux14~3_combout\);

-- Location: LCCOMB_X54_Y45_N18
\comb_92|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux14~4_combout\ = (\comb_89|controle_ula\(2) & (\comb_92|Mux14~1_combout\)) # (!\comb_89|controle_ula\(2) & ((\comb_92|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux14~1_combout\,
	datab => \comb_89|controle_ula\(2),
	datac => \comb_92|Mux14~3_combout\,
	combout => \comb_92|Mux14~4_combout\);

-- Location: LCCOMB_X54_Y45_N12
\comb_92|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux14~5_combout\ = (\comb_89|controle_ula\(3) & (\comb_92|Mux2~0_combout\ & (\comb_90|Mux513~1_combout\))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~0_combout\,
	datab => \comb_89|controle_ula\(3),
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_92|Mux14~4_combout\,
	combout => \comb_92|Mux14~5_combout\);

-- Location: LCCOMB_X54_Y45_N30
\comb_92|ula[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(14) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|ula\(14)))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|Mux14~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|Mux14~5_combout\,
	datac => \comb_92|ula\(14),
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(14));

-- Location: LCCOMB_X54_Y45_N6
\comb_90|Mux497~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux497~0_combout\ = (\comb_90|registradores[0][15]~0_combout\ & ((\comb_91|memoria~1_combout\) # ((\comb_90|registradores[0][15]~1_combout\)))) # (!\comb_90|registradores[0][15]~0_combout\ & (((\comb_92|ula\(14) & 
-- !\comb_90|registradores[0][15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria~1_combout\,
	datab => \comb_90|registradores[0][15]~0_combout\,
	datac => \comb_92|ula\(14),
	datad => \comb_90|registradores[0][15]~1_combout\,
	combout => \comb_90|Mux497~0_combout\);

-- Location: LCCOMB_X54_Y45_N0
\comb_90|Mux497~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux497~1_combout\ = (\comb_90|registradores[0][15]~1_combout\ & ((\comb_90|Mux497~0_combout\ & ((\comb_88|Mux15~1_combout\))) # (!\comb_90|Mux497~0_combout\ & (\entrada[14]~input_o\)))) # (!\comb_90|registradores[0][15]~1_combout\ & 
-- (((\comb_90|Mux497~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~1_combout\,
	datab => \entrada[14]~input_o\,
	datac => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux497~0_combout\,
	combout => \comb_90|Mux497~1_combout\);

-- Location: FF_X56_Y45_N15
\comb_90|registradores[28][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][14]~q\);

-- Location: LCCOMB_X56_Y45_N14
\comb_90|Mux529~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux529~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][14]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][14]~q\,
	datad => \comb_90|registradores[30][14]~q\,
	combout => \comb_90|Mux529~0_combout\);

-- Location: LCCOMB_X57_Y46_N4
\comb_90|Mux529~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux529~1_combout\ = (\comb_90|Mux529~0_combout\ & (((\comb_90|registradores[31][14]~q\)) # (!\comb_88|Mux9~1_combout\))) # (!\comb_90|Mux529~0_combout\ & (\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[29][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux529~0_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[31][14]~q\,
	datad => \comb_90|registradores[29][14]~q\,
	combout => \comb_90|Mux529~1_combout\);

-- Location: FF_X57_Y45_N31
\comb_90|registradores[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][14]~q\);

-- Location: FF_X57_Y45_N5
\comb_90|registradores[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux497~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][14]~q\);

-- Location: LCCOMB_X57_Y45_N4
\comb_90|Mux529~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux529~2_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux9~1_combout\)) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & (\comb_90|registradores[1][14]~q\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[1][14]~q\,
	datad => \comb_90|registradores[0][14]~q\,
	combout => \comb_90|Mux529~2_combout\);

-- Location: LCCOMB_X57_Y45_N30
\comb_90|Mux529~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux529~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux529~2_combout\ & ((\comb_90|registradores[3][14]~q\))) # (!\comb_90|Mux529~2_combout\ & (\comb_90|registradores[2][14]~q\)))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux529~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[2][14]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[3][14]~q\,
	datad => \comb_90|Mux529~2_combout\,
	combout => \comb_90|Mux529~3_combout\);

-- Location: LCCOMB_X57_Y46_N16
\comb_90|Mux529~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux529~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux529~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux529~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux5~1_combout\,
	datac => \comb_90|Mux529~1_combout\,
	datad => \comb_90|Mux529~3_combout\,
	combout => \comb_90|Mux529~4_combout\);

-- Location: LCCOMB_X63_Y45_N14
\comb_91|memoria~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_91|memoria~2_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(14))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(14),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a13\,
	combout => \comb_91|memoria~2_combout\);

-- Location: IOIBUF_X115_Y9_N22
\entrada[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(13),
	o => \entrada[13]~input_o\);

-- Location: LCCOMB_X56_Y47_N2
\comb_92|ula~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~11_combout\ = (!\comb_90|Mux514~1_combout\ & \comb_88|Mux15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_88|Mux15~1_combout\,
	combout => \comb_92|ula~11_combout\);

-- Location: LCCOMB_X57_Y47_N2
\comb_92|ula~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~12_combout\ = (!\comb_90|Mux514~1_combout\ & \comb_90|Mux562~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux562~0_combout\,
	combout => \comb_92|ula~12_combout\);

-- Location: LCCOMB_X57_Y47_N26
\comb_92|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux13~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0))))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & (\comb_92|ula~11_combout\)) # (!\comb_89|controle_ula\(0) & ((\comb_92|ula~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~11_combout\,
	datab => \comb_92|ula~12_combout\,
	datac => \comb_89|controle_ula\(1),
	datad => \comb_89|controle_ula\(0),
	combout => \comb_92|Mux13~0_combout\);

-- Location: LCCOMB_X57_Y47_N18
\comb_92|ula~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~10_combout\ = (\comb_90|Mux562~0_combout\) # (!\comb_90|Mux514~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux562~0_combout\,
	combout => \comb_92|ula~10_combout\);

-- Location: LCCOMB_X57_Y47_N8
\comb_92|ula~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~13_combout\ = (\comb_88|Mux15~1_combout\) # (!\comb_90|Mux514~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux514~1_combout\,
	combout => \comb_92|ula~13_combout\);

-- Location: LCCOMB_X57_Y47_N12
\comb_92|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux13~1_combout\ = (\comb_92|Mux13~0_combout\ & (((\comb_92|ula~13_combout\)) # (!\comb_89|controle_ula\(1)))) # (!\comb_92|Mux13~0_combout\ & (\comb_89|controle_ula\(1) & (\comb_92|ula~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux13~0_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|ula~10_combout\,
	datad => \comb_92|ula~13_combout\,
	combout => \comb_92|Mux13~1_combout\);

-- Location: LCCOMB_X57_Y47_N14
\comb_92|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux13~2_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0)) # (\comb_92|Add2~26_combout\)))) # (!\comb_89|controle_ula\(1) & (\comb_92|Add0~26_combout\ & (!\comb_89|controle_ula\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add0~26_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|Add2~26_combout\,
	combout => \comb_92|Mux13~2_combout\);

-- Location: LCCOMB_X57_Y47_N24
\comb_92|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux13~3_combout\ = (\comb_92|Mux13~2_combout\ & ((\comb_92|Add3~26_combout\) # ((!\comb_89|controle_ula\(0))))) # (!\comb_92|Mux13~2_combout\ & (((\comb_92|Add1~26_combout\ & \comb_89|controle_ula\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add3~26_combout\,
	datab => \comb_92|Mux13~2_combout\,
	datac => \comb_92|Add1~26_combout\,
	datad => \comb_89|controle_ula\(0),
	combout => \comb_92|Mux13~3_combout\);

-- Location: LCCOMB_X57_Y47_N10
\comb_92|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux13~4_combout\ = (\comb_89|controle_ula\(2) & (\comb_92|Mux13~1_combout\)) # (!\comb_89|controle_ula\(2) & ((\comb_92|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux13~1_combout\,
	datab => \comb_89|controle_ula\(2),
	datac => \comb_92|Mux13~3_combout\,
	combout => \comb_92|Mux13~4_combout\);

-- Location: LCCOMB_X57_Y47_N28
\comb_92|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux13~5_combout\ = (\comb_89|controle_ula\(3) & (\comb_92|Mux2~0_combout\ & ((\comb_90|Mux514~1_combout\)))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~0_combout\,
	datab => \comb_92|Mux13~4_combout\,
	datac => \comb_89|controle_ula\(3),
	datad => \comb_90|Mux514~1_combout\,
	combout => \comb_92|Mux13~5_combout\);

-- Location: LCCOMB_X57_Y47_N30
\comb_92|ula[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(13) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(13))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(13),
	datac => \comb_92|Mux13~5_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(13));

-- Location: LCCOMB_X57_Y47_N6
\comb_90|Mux498~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux498~0_combout\ = (\comb_90|registradores[0][15]~0_combout\ & (((\comb_90|registradores[0][15]~1_combout\)))) # (!\comb_90|registradores[0][15]~0_combout\ & ((\comb_90|registradores[0][15]~1_combout\ & (\entrada[13]~input_o\)) # 
-- (!\comb_90|registradores[0][15]~1_combout\ & ((\comb_92|ula\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~0_combout\,
	datab => \entrada[13]~input_o\,
	datac => \comb_92|ula\(13),
	datad => \comb_90|registradores[0][15]~1_combout\,
	combout => \comb_90|Mux498~0_combout\);

-- Location: LCCOMB_X57_Y47_N0
\comb_90|Mux498~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux498~1_combout\ = (\comb_90|registradores[0][15]~0_combout\ & ((\comb_90|Mux498~0_combout\ & ((\comb_88|Mux15~1_combout\))) # (!\comb_90|Mux498~0_combout\ & (\comb_91|memoria~2_combout\)))) # (!\comb_90|registradores[0][15]~0_combout\ & 
-- (((\comb_90|Mux498~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~0_combout\,
	datab => \comb_91|memoria~2_combout\,
	datac => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux498~0_combout\,
	combout => \comb_90|Mux498~1_combout\);

-- Location: FF_X57_Y45_N13
\comb_90|registradores[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux498~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][13]~q\);

-- Location: LCCOMB_X57_Y45_N12
\comb_90|Mux530~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux530~2_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux9~1_combout\)) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & (\comb_90|registradores[1][13]~q\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[1][13]~q\,
	datad => \comb_90|registradores[0][13]~q\,
	combout => \comb_90|Mux530~2_combout\);

-- Location: FF_X57_Y45_N15
\comb_90|registradores[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux498~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][13]~q\);

-- Location: LCCOMB_X57_Y45_N14
\comb_90|Mux530~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux530~3_combout\ = (\comb_90|Mux530~2_combout\ & (((\comb_90|registradores[3][13]~q\)) # (!\comb_88|Mux8~1_combout\))) # (!\comb_90|Mux530~2_combout\ & (\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux530~2_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[3][13]~q\,
	datad => \comb_90|registradores[2][13]~q\,
	combout => \comb_90|Mux530~3_combout\);

-- Location: FF_X56_Y45_N27
\comb_90|registradores[28][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux498~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][13]~q\);

-- Location: LCCOMB_X56_Y45_N26
\comb_90|Mux530~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux530~0_combout\ = (\comb_88|Mux9~1_combout\ & (((\comb_88|Mux8~1_combout\)))) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & (\comb_90|registradores[30][13]~q\)) # (!\comb_88|Mux8~1_combout\ & 
-- ((\comb_90|registradores[28][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_90|registradores[30][13]~q\,
	datac => \comb_90|registradores[28][13]~q\,
	datad => \comb_88|Mux8~1_combout\,
	combout => \comb_90|Mux530~0_combout\);

-- Location: LCCOMB_X57_Y46_N8
\comb_90|Mux530~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux530~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux530~0_combout\ & ((\comb_90|registradores[31][13]~q\))) # (!\comb_90|Mux530~0_combout\ & (\comb_90|registradores[29][13]~q\)))) # (!\comb_88|Mux9~1_combout\ & 
-- (((\comb_90|Mux530~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[29][13]~q\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[31][13]~q\,
	datad => \comb_90|Mux530~0_combout\,
	combout => \comb_90|Mux530~1_combout\);

-- Location: LCCOMB_X55_Y45_N26
\comb_90|Mux530~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux530~4_combout\ = (\comb_88|Mux5~1_combout\ & ((\comb_90|Mux530~1_combout\))) # (!\comb_88|Mux5~1_combout\ & (\comb_90|Mux530~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux530~3_combout\,
	datac => \comb_88|Mux5~1_combout\,
	datad => \comb_90|Mux530~1_combout\,
	combout => \comb_90|Mux530~4_combout\);

-- Location: FF_X63_Y45_N13
\comb_91|memoria_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux531~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(13));

-- Location: LCCOMB_X63_Y45_N12
\comb_90|Mux499~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux499~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0_bypass\(13)))) # (!\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0|auto_generated|ram_block1a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_91|memoria_rtl_0|auto_generated|ram_block1a12\,
	datac => \comb_91|memoria_rtl_0_bypass\(13),
	datad => \comb_91|memoria_rtl_0_bypass\(0),
	combout => \comb_90|Mux499~0_combout\);

-- Location: LCCOMB_X57_Y48_N24
\comb_92|ula~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~9_combout\ = (\comb_90|Mux563~0_combout\ & !\comb_90|Mux515~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux563~0_combout\,
	datad => \comb_90|Mux515~1_combout\,
	combout => \comb_92|ula~9_combout\);

-- Location: LCCOMB_X55_Y49_N6
\comb_92|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux5~1_combout\ = (\comb_89|controle_ula\(2) & ((\comb_89|controle_ula\(0)) # (!\comb_89|controle_ula\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datad => \comb_89|controle_ula\(2),
	combout => \comb_92|Mux5~1_combout\);

-- Location: LCCOMB_X57_Y48_N18
\comb_92|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux12~0_combout\ = (\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1)) # ((\comb_92|Add1~24_combout\)))) # (!\comb_89|controle_ula\(0) & (!\comb_89|controle_ula\(1) & ((\comb_92|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|Add1~24_combout\,
	datad => \comb_92|Add0~24_combout\,
	combout => \comb_92|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y48_N12
\comb_92|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux12~1_combout\ = (\comb_92|Mux12~0_combout\ & (((\comb_92|Add3~24_combout\)) # (!\comb_89|controle_ula\(1)))) # (!\comb_92|Mux12~0_combout\ & (\comb_89|controle_ula\(1) & (\comb_92|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux12~0_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|Add2~24_combout\,
	datad => \comb_92|Add3~24_combout\,
	combout => \comb_92|Mux12~1_combout\);

-- Location: LCCOMB_X57_Y48_N30
\comb_92|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux12~2_combout\ = (\comb_92|Mux5~0_combout\ & ((\comb_92|Mux5~1_combout\ & (\comb_92|ula~9_combout\)) # (!\comb_92|Mux5~1_combout\ & ((\comb_92|Mux12~1_combout\))))) # (!\comb_92|Mux5~0_combout\ & (((!\comb_92|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~9_combout\,
	datab => \comb_92|Mux5~0_combout\,
	datac => \comb_92|Mux5~1_combout\,
	datad => \comb_92|Mux12~1_combout\,
	combout => \comb_92|Mux12~2_combout\);

-- Location: LCCOMB_X57_Y48_N0
\comb_92|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux12~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_90|Mux563~0_combout\ & \comb_92|Mux12~2_combout\)) # (!\comb_90|Mux515~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (((\comb_92|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux563~0_combout\,
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_92|Mux12~2_combout\,
	datad => \comb_90|Mux515~1_combout\,
	combout => \comb_92|Mux12~3_combout\);

-- Location: LCCOMB_X57_Y48_N2
\comb_92|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux12~4_combout\ = (\comb_89|controle_ula\(3) & (((\comb_92|Mux2~0_combout\ & \comb_90|Mux515~1_combout\)))) # (!\comb_89|controle_ula\(3) & (\comb_92|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux12~3_combout\,
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_89|controle_ula\(3),
	datad => \comb_90|Mux515~1_combout\,
	combout => \comb_92|Mux12~4_combout\);

-- Location: LCCOMB_X57_Y48_N10
\comb_92|ula[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(12) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(12))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(12),
	datac => \comb_92|Mux12~4_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(12));

-- Location: LCCOMB_X57_Y48_N6
\comb_90|Mux499~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux499~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux499~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(1),
	datac => \comb_90|Mux499~0_combout\,
	datad => \comb_92|ula\(12),
	combout => \comb_90|Mux499~1_combout\);

-- Location: LCCOMB_X54_Y49_N24
\comb_90|Mux499~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux499~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[12]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux499~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[12]~input_o\,
	datac => \comb_89|controle_registradores\(2),
	datad => \comb_90|Mux499~1_combout\,
	combout => \comb_90|Mux499~2_combout\);

-- Location: FF_X55_Y48_N9
\comb_90|registradores[28][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux499~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][12]~q\);

-- Location: LCCOMB_X55_Y48_N8
\comb_90|Mux531~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux531~0_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\) # ((\comb_90|registradores[30][12]~q\)))) # (!\comb_88|Mux8~1_combout\ & (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[28][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[28][12]~q\,
	datad => \comb_90|registradores[30][12]~q\,
	combout => \comb_90|Mux531~0_combout\);

-- Location: LCCOMB_X55_Y45_N10
\comb_90|Mux531~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux531~1_combout\ = (\comb_90|Mux531~0_combout\ & (((\comb_90|registradores[31][12]~q\) # (!\comb_88|Mux9~1_combout\)))) # (!\comb_90|Mux531~0_combout\ & (\comb_90|registradores[29][12]~q\ & ((\comb_88|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux531~0_combout\,
	datab => \comb_90|registradores[29][12]~q\,
	datac => \comb_90|registradores[31][12]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux531~1_combout\);

-- Location: LCCOMB_X54_Y49_N14
\comb_90|registradores[3][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[3][12]~feeder_combout\ = \comb_90|Mux499~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux499~2_combout\,
	combout => \comb_90|registradores[3][12]~feeder_combout\);

-- Location: FF_X54_Y49_N15
\comb_90|registradores[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[3][12]~feeder_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][12]~q\);

-- Location: FF_X56_Y48_N7
\comb_90|registradores[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux499~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][12]~q\);

-- Location: LCCOMB_X56_Y48_N6
\comb_90|Mux531~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux531~2_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\) # ((\comb_90|registradores[1][12]~q\)))) # (!\comb_88|Mux9~1_combout\ & (!\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[1][12]~q\,
	datad => \comb_90|registradores[0][12]~q\,
	combout => \comb_90|Mux531~2_combout\);

-- Location: LCCOMB_X55_Y48_N0
\comb_90|Mux531~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux531~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux531~2_combout\ & (\comb_90|registradores[3][12]~q\)) # (!\comb_90|Mux531~2_combout\ & ((\comb_90|registradores[2][12]~q\))))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux531~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[3][12]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[2][12]~q\,
	datad => \comb_90|Mux531~2_combout\,
	combout => \comb_90|Mux531~3_combout\);

-- Location: LCCOMB_X55_Y45_N12
\comb_90|Mux531~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux531~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux531~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux531~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux531~1_combout\,
	datac => \comb_90|Mux531~3_combout\,
	datad => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux531~4_combout\);

-- Location: LCCOMB_X63_Y45_N8
\comb_90|Mux500~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux500~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(12))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(12),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a11\,
	combout => \comb_90|Mux500~0_combout\);

-- Location: LCCOMB_X55_Y49_N10
\comb_92|ula~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~4_combout\ = (\comb_90|Mux564~0_combout\ & !\comb_90|Mux516~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux564~0_combout\,
	datac => \comb_90|Mux516~1_combout\,
	combout => \comb_92|ula~4_combout\);

-- Location: LCCOMB_X55_Y49_N4
\comb_92|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux11~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0)) # (\comb_92|Add2~22_combout\)))) # (!\comb_89|controle_ula\(1) & (\comb_92|Add0~22_combout\ & (!\comb_89|controle_ula\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_92|Add0~22_combout\,
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|Add2~22_combout\,
	combout => \comb_92|Mux11~0_combout\);

-- Location: LCCOMB_X55_Y49_N12
\comb_92|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux11~1_combout\ = (\comb_92|Mux11~0_combout\ & (((\comb_92|Add3~22_combout\)) # (!\comb_89|controle_ula\(0)))) # (!\comb_92|Mux11~0_combout\ & (\comb_89|controle_ula\(0) & (\comb_92|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux11~0_combout\,
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|Add1~22_combout\,
	datad => \comb_92|Add3~22_combout\,
	combout => \comb_92|Mux11~1_combout\);

-- Location: LCCOMB_X55_Y49_N18
\comb_92|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux11~2_combout\ = (\comb_92|Mux5~1_combout\ & (\comb_92|ula~4_combout\ & ((\comb_92|Mux5~0_combout\)))) # (!\comb_92|Mux5~1_combout\ & (((\comb_92|Mux11~1_combout\) # (!\comb_92|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~4_combout\,
	datab => \comb_92|Mux11~1_combout\,
	datac => \comb_92|Mux5~1_combout\,
	datad => \comb_92|Mux5~0_combout\,
	combout => \comb_92|Mux11~2_combout\);

-- Location: LCCOMB_X56_Y49_N14
\comb_92|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux11~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_92|Mux11~2_combout\ & \comb_90|Mux564~0_combout\)) # (!\comb_90|Mux516~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (((\comb_92|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~0_combout\,
	datab => \comb_90|Mux516~1_combout\,
	datac => \comb_92|Mux11~2_combout\,
	datad => \comb_90|Mux564~0_combout\,
	combout => \comb_92|Mux11~3_combout\);

-- Location: LCCOMB_X56_Y49_N0
\comb_92|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux11~4_combout\ = (\comb_89|controle_ula\(3) & (\comb_92|Mux2~0_combout\ & ((\comb_90|Mux516~1_combout\)))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~0_combout\,
	datab => \comb_89|controle_ula\(3),
	datac => \comb_92|Mux11~3_combout\,
	datad => \comb_90|Mux516~1_combout\,
	combout => \comb_92|Mux11~4_combout\);

-- Location: LCCOMB_X56_Y49_N6
\comb_92|ula[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(11) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(11))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(11),
	datab => \comb_92|Mux11~4_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(11));

-- Location: LCCOMB_X56_Y49_N2
\comb_90|Mux500~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux500~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux500~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_registradores\(1),
	datac => \comb_90|Mux500~0_combout\,
	datad => \comb_92|ula\(11),
	combout => \comb_90|Mux500~1_combout\);

-- Location: LCCOMB_X56_Y49_N20
\comb_90|Mux500~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux500~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[11]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux500~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[11]~input_o\,
	datac => \comb_89|controle_registradores\(2),
	datad => \comb_90|Mux500~1_combout\,
	combout => \comb_90|Mux500~2_combout\);

-- Location: FF_X56_Y48_N17
\comb_90|registradores[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][11]~q\);

-- Location: FF_X56_Y48_N29
\comb_90|registradores[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][11]~q\);

-- Location: LCCOMB_X56_Y48_N28
\comb_90|Mux532~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux532~2_combout\ = (\comb_88|Mux8~1_combout\ & (((\comb_88|Mux9~1_combout\)))) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[1][11]~q\))) # (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_90|registradores[0][11]~q\,
	datac => \comb_90|registradores[1][11]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux532~2_combout\);

-- Location: FF_X56_Y49_N9
\comb_90|registradores[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][11]~q\);

-- Location: LCCOMB_X55_Y46_N24
\comb_90|Mux532~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux532~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux532~2_combout\ & ((\comb_90|registradores[3][11]~q\))) # (!\comb_90|Mux532~2_combout\ & (\comb_90|registradores[2][11]~q\)))) # (!\comb_88|Mux8~1_combout\ & 
-- (\comb_90|Mux532~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_90|Mux532~2_combout\,
	datac => \comb_90|registradores[2][11]~q\,
	datad => \comb_90|registradores[3][11]~q\,
	combout => \comb_90|Mux532~3_combout\);

-- Location: FF_X55_Y48_N31
\comb_90|registradores[28][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux500~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][11]~q\);

-- Location: LCCOMB_X55_Y48_N30
\comb_90|Mux532~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux532~0_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\) # ((\comb_90|registradores[30][11]~q\)))) # (!\comb_88|Mux8~1_combout\ & (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[28][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[28][11]~q\,
	datad => \comb_90|registradores[30][11]~q\,
	combout => \comb_90|Mux532~0_combout\);

-- Location: LCCOMB_X56_Y46_N10
\comb_90|Mux532~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux532~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux532~0_combout\ & (\comb_90|registradores[31][11]~q\)) # (!\comb_90|Mux532~0_combout\ & ((\comb_90|registradores[29][11]~q\))))) # (!\comb_88|Mux9~1_combout\ & 
-- (\comb_90|Mux532~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_90|Mux532~0_combout\,
	datac => \comb_90|registradores[31][11]~q\,
	datad => \comb_90|registradores[29][11]~q\,
	combout => \comb_90|Mux532~1_combout\);

-- Location: LCCOMB_X54_Y46_N30
\comb_90|Mux532~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux532~4_combout\ = (\comb_88|Mux5~1_combout\ & ((\comb_90|Mux532~1_combout\))) # (!\comb_88|Mux5~1_combout\ & (\comb_90|Mux532~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux532~3_combout\,
	datac => \comb_88|Mux5~1_combout\,
	datad => \comb_90|Mux532~1_combout\,
	combout => \comb_90|Mux532~4_combout\);

-- Location: FF_X63_Y45_N1
\comb_91|memoria_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux533~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(11));

-- Location: LCCOMB_X63_Y45_N0
\comb_90|Mux501~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux501~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0_bypass\(11)))) # (!\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_91|memoria_rtl_0|auto_generated|ram_block1a10\,
	datac => \comb_91|memoria_rtl_0_bypass\(11),
	datad => \comb_91|memoria_rtl_0_bypass\(0),
	combout => \comb_90|Mux501~0_combout\);

-- Location: LCCOMB_X55_Y49_N22
\comb_92|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux10~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0))))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & ((\comb_92|Add1~20_combout\))) # (!\comb_89|controle_ula\(0) & (\comb_92|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add0~20_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|Add1~20_combout\,
	combout => \comb_92|Mux10~0_combout\);

-- Location: LCCOMB_X55_Y49_N28
\comb_92|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux10~1_combout\ = (\comb_92|Mux10~0_combout\ & (((\comb_92|Add3~20_combout\)) # (!\comb_89|controle_ula\(1)))) # (!\comb_92|Mux10~0_combout\ & (\comb_89|controle_ula\(1) & (\comb_92|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux10~0_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|Add2~20_combout\,
	datad => \comb_92|Add3~20_combout\,
	combout => \comb_92|Mux10~1_combout\);

-- Location: LCCOMB_X56_Y48_N18
\comb_92|ula~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~18_combout\ = (\comb_90|Mux565~0_combout\ & !\comb_90|Mux517~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux565~0_combout\,
	datad => \comb_90|Mux517~1_combout\,
	combout => \comb_92|ula~18_combout\);

-- Location: LCCOMB_X55_Y49_N20
\comb_92|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux10~2_combout\ = (\comb_92|Mux5~1_combout\ & (((\comb_92|ula~18_combout\ & \comb_92|Mux5~0_combout\)))) # (!\comb_92|Mux5~1_combout\ & ((\comb_92|Mux10~1_combout\) # ((!\comb_92|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux10~1_combout\,
	datab => \comb_92|ula~18_combout\,
	datac => \comb_92|Mux5~1_combout\,
	datad => \comb_92|Mux5~0_combout\,
	combout => \comb_92|Mux10~2_combout\);

-- Location: LCCOMB_X55_Y49_N8
\comb_92|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux10~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_92|Mux10~2_combout\ & \comb_90|Mux565~0_combout\)) # (!\comb_90|Mux517~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (((\comb_92|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux517~1_combout\,
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_92|Mux10~2_combout\,
	datad => \comb_90|Mux565~0_combout\,
	combout => \comb_92|Mux10~3_combout\);

-- Location: LCCOMB_X55_Y49_N14
\comb_92|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux10~4_combout\ = (\comb_89|controle_ula\(3) & (\comb_90|Mux517~1_combout\ & (\comb_92|Mux2~0_combout\))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux517~1_combout\,
	datab => \comb_89|controle_ula\(3),
	datac => \comb_92|Mux2~0_combout\,
	datad => \comb_92|Mux10~3_combout\,
	combout => \comb_92|Mux10~4_combout\);

-- Location: LCCOMB_X54_Y49_N6
\comb_92|ula[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(10) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(10))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(10),
	datab => \comb_92|Mux10~4_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(10));

-- Location: LCCOMB_X54_Y49_N0
\comb_90|Mux501~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux501~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux501~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(1),
	datac => \comb_90|Mux501~0_combout\,
	datad => \comb_92|ula\(10),
	combout => \comb_90|Mux501~1_combout\);

-- Location: LCCOMB_X54_Y49_N4
\comb_90|Mux501~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux501~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[10]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux501~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[10]~input_o\,
	datac => \comb_89|controle_registradores\(2),
	datad => \comb_90|Mux501~1_combout\,
	combout => \comb_90|Mux501~2_combout\);

-- Location: FF_X55_Y48_N29
\comb_90|registradores[28][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux501~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][10]~q\);

-- Location: LCCOMB_X55_Y48_N28
\comb_90|Mux533~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux533~0_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\) # ((\comb_90|registradores[30][10]~q\)))) # (!\comb_88|Mux8~1_combout\ & (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[28][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[28][10]~q\,
	datad => \comb_90|registradores[30][10]~q\,
	combout => \comb_90|Mux533~0_combout\);

-- Location: LCCOMB_X55_Y45_N6
\comb_90|Mux533~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux533~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux533~0_combout\ & (\comb_90|registradores[31][10]~q\)) # (!\comb_90|Mux533~0_combout\ & ((\comb_90|registradores[29][10]~q\))))) # (!\comb_88|Mux9~1_combout\ & 
-- (\comb_90|Mux533~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_90|Mux533~0_combout\,
	datac => \comb_90|registradores[31][10]~q\,
	datad => \comb_90|registradores[29][10]~q\,
	combout => \comb_90|Mux533~1_combout\);

-- Location: FF_X54_Y49_N5
\comb_90|registradores[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux501~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][10]~q\);

-- Location: FF_X56_Y48_N11
\comb_90|registradores[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux501~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][10]~q\);

-- Location: LCCOMB_X56_Y48_N10
\comb_90|Mux533~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux533~2_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\) # ((\comb_90|registradores[1][10]~q\)))) # (!\comb_88|Mux9~1_combout\ & (!\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[1][10]~q\,
	datad => \comb_90|registradores[0][10]~q\,
	combout => \comb_90|Mux533~2_combout\);

-- Location: LCCOMB_X55_Y48_N12
\comb_90|Mux533~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux533~3_combout\ = (\comb_90|Mux533~2_combout\ & ((\comb_90|registradores[3][10]~q\) # ((!\comb_88|Mux8~1_combout\)))) # (!\comb_90|Mux533~2_combout\ & (((\comb_90|registradores[2][10]~q\ & \comb_88|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[3][10]~q\,
	datab => \comb_90|registradores[2][10]~q\,
	datac => \comb_90|Mux533~2_combout\,
	datad => \comb_88|Mux8~1_combout\,
	combout => \comb_90|Mux533~3_combout\);

-- Location: LCCOMB_X55_Y45_N8
\comb_90|Mux533~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux533~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux533~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux533~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux5~1_combout\,
	datab => \comb_90|Mux533~1_combout\,
	datac => \comb_90|Mux533~3_combout\,
	combout => \comb_90|Mux533~4_combout\);

-- Location: LCCOMB_X63_Y45_N2
\comb_90|Mux502~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux502~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(10))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(10),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a9\,
	combout => \comb_90|Mux502~0_combout\);

-- Location: LCCOMB_X59_Y47_N16
\comb_92|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux9~0_combout\ = (\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0)) # ((\comb_92|Add2~18_combout\)))) # (!\comb_89|controle_ula\(1) & (!\comb_89|controle_ula\(0) & ((\comb_92|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|Add2~18_combout\,
	datad => \comb_92|Add0~18_combout\,
	combout => \comb_92|Mux9~0_combout\);

-- Location: LCCOMB_X59_Y47_N26
\comb_92|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux9~1_combout\ = (\comb_89|controle_ula\(0) & ((\comb_92|Mux9~0_combout\ & (\comb_92|Add3~18_combout\)) # (!\comb_92|Mux9~0_combout\ & ((\comb_92|Add1~18_combout\))))) # (!\comb_89|controle_ula\(0) & (((\comb_92|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_92|Add3~18_combout\,
	datac => \comb_92|Mux9~0_combout\,
	datad => \comb_92|Add1~18_combout\,
	combout => \comb_92|Mux9~1_combout\);

-- Location: LCCOMB_X60_Y47_N24
\comb_92|ula~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~19_combout\ = (\comb_90|Mux566~0_combout\ & !\comb_90|Mux518~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux566~0_combout\,
	datad => \comb_90|Mux518~1_combout\,
	combout => \comb_92|ula~19_combout\);

-- Location: LCCOMB_X59_Y47_N28
\comb_92|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux9~2_combout\ = (\comb_92|Mux5~0_combout\ & ((\comb_92|Mux5~1_combout\ & ((\comb_92|ula~19_combout\))) # (!\comb_92|Mux5~1_combout\ & (\comb_92|Mux9~1_combout\)))) # (!\comb_92|Mux5~0_combout\ & (((!\comb_92|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux9~1_combout\,
	datab => \comb_92|ula~19_combout\,
	datac => \comb_92|Mux5~0_combout\,
	datad => \comb_92|Mux5~1_combout\,
	combout => \comb_92|Mux9~2_combout\);

-- Location: LCCOMB_X59_Y47_N22
\comb_92|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux9~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_92|Mux9~2_combout\ & \comb_90|Mux566~0_combout\)) # (!\comb_90|Mux518~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (\comb_92|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux9~2_combout\,
	datab => \comb_90|Mux566~0_combout\,
	datac => \comb_90|Mux518~1_combout\,
	datad => \comb_92|Mux2~0_combout\,
	combout => \comb_92|Mux9~3_combout\);

-- Location: LCCOMB_X59_Y47_N24
\comb_92|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux9~4_combout\ = (\comb_89|controle_ula\(3) & (((\comb_90|Mux518~1_combout\ & \comb_92|Mux2~0_combout\)))) # (!\comb_89|controle_ula\(3) & (\comb_92|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux9~3_combout\,
	datab => \comb_89|controle_ula\(3),
	datac => \comb_90|Mux518~1_combout\,
	datad => \comb_92|Mux2~0_combout\,
	combout => \comb_92|Mux9~4_combout\);

-- Location: LCCOMB_X59_Y47_N4
\comb_92|ula[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(9) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|ula\(9)))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux9~4_combout\,
	datac => \comb_92|ula\(9),
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(9));

-- Location: LCCOMB_X59_Y47_N20
\comb_90|Mux502~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux502~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux502~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux502~0_combout\,
	datac => \comb_92|ula\(9),
	datad => \comb_89|controle_registradores\(1),
	combout => \comb_90|Mux502~1_combout\);

-- Location: LCCOMB_X59_Y47_N0
\comb_90|Mux502~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux502~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[9]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux502~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[9]~input_o\,
	datac => \comb_89|controle_registradores\(2),
	datad => \comb_90|Mux502~1_combout\,
	combout => \comb_90|Mux502~2_combout\);

-- Location: FF_X56_Y46_N29
\comb_90|registradores[29][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux502~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][9]~q\);

-- Location: LCCOMB_X56_Y48_N2
\comb_90|Mux518~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux518~0_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_88|Mux10~1_combout\) # ((!\comb_90|registradores[2][9]~q\)))) # (!\comb_88|Mux13~1_combout\ & (!\comb_88|Mux10~1_combout\ & (!\comb_90|registradores[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[0][9]~q\,
	datad => \comb_90|registradores[2][9]~q\,
	combout => \comb_90|Mux518~0_combout\);

-- Location: LCCOMB_X56_Y46_N22
\comb_90|Mux518~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux518~1_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_90|Mux518~0_combout\ & ((!\comb_90|registradores[31][9]~q\))) # (!\comb_90|Mux518~0_combout\ & (!\comb_90|registradores[29][9]~q\)))) # (!\comb_88|Mux10~1_combout\ & 
-- (((\comb_90|Mux518~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|registradores[29][9]~q\,
	datac => \comb_90|registradores[31][9]~q\,
	datad => \comb_90|Mux518~0_combout\,
	combout => \comb_90|Mux518~1_combout\);

-- Location: LCCOMB_X63_Y45_N6
\comb_90|Mux518~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux518~1_wirecell_combout\ = !\comb_90|Mux518~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux518~1_combout\,
	combout => \comb_90|Mux518~1_wirecell_combout\);

-- Location: LCCOMB_X63_Y45_N4
\comb_90|Mux503~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux503~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(9))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(9),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a8\,
	combout => \comb_90|Mux503~0_combout\);

-- Location: LCCOMB_X59_Y47_N2
\comb_92|ula~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~20_combout\ = (\comb_90|Mux567~0_combout\ & !\comb_90|Mux519~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux567~0_combout\,
	datad => \comb_90|Mux519~1_combout\,
	combout => \comb_92|ula~20_combout\);

-- Location: LCCOMB_X58_Y47_N30
\comb_92|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux8~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0))))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & ((\comb_92|Add1~16_combout\))) # (!\comb_89|controle_ula\(0) & (\comb_92|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add0~16_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|Add1~16_combout\,
	combout => \comb_92|Mux8~0_combout\);

-- Location: LCCOMB_X59_Y47_N12
\comb_92|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux8~1_combout\ = (\comb_89|controle_ula\(1) & ((\comb_92|Mux8~0_combout\ & (\comb_92|Add3~16_combout\)) # (!\comb_92|Mux8~0_combout\ & ((\comb_92|Add2~16_combout\))))) # (!\comb_89|controle_ula\(1) & (\comb_92|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_92|Mux8~0_combout\,
	datac => \comb_92|Add3~16_combout\,
	datad => \comb_92|Add2~16_combout\,
	combout => \comb_92|Mux8~1_combout\);

-- Location: LCCOMB_X59_Y47_N14
\comb_92|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux8~2_combout\ = (\comb_92|Mux5~0_combout\ & ((\comb_92|Mux5~1_combout\ & (\comb_92|ula~20_combout\)) # (!\comb_92|Mux5~1_combout\ & ((\comb_92|Mux8~1_combout\))))) # (!\comb_92|Mux5~0_combout\ & (((!\comb_92|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux5~0_combout\,
	datab => \comb_92|ula~20_combout\,
	datac => \comb_92|Mux8~1_combout\,
	datad => \comb_92|Mux5~1_combout\,
	combout => \comb_92|Mux8~2_combout\);

-- Location: LCCOMB_X59_Y47_N8
\comb_92|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux8~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_90|Mux567~0_combout\ & \comb_92|Mux8~2_combout\)) # (!\comb_90|Mux519~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (((\comb_92|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~0_combout\,
	datab => \comb_90|Mux567~0_combout\,
	datac => \comb_92|Mux8~2_combout\,
	datad => \comb_90|Mux519~1_combout\,
	combout => \comb_92|Mux8~3_combout\);

-- Location: LCCOMB_X59_Y47_N10
\comb_92|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux8~4_combout\ = (\comb_89|controle_ula\(3) & (\comb_92|Mux2~0_combout\ & ((\comb_90|Mux519~1_combout\)))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~0_combout\,
	datab => \comb_89|controle_ula\(3),
	datac => \comb_92|Mux8~3_combout\,
	datad => \comb_90|Mux519~1_combout\,
	combout => \comb_92|Mux8~4_combout\);

-- Location: LCCOMB_X59_Y47_N30
\comb_92|ula[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(8) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(8))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(8),
	datac => \comb_92|Mux8~4_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(8));

-- Location: LCCOMB_X59_Y47_N6
\comb_90|Mux503~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux503~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux503~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux503~0_combout\,
	datac => \comb_92|ula\(8),
	datad => \comb_89|controle_registradores\(1),
	combout => \comb_90|Mux503~1_combout\);

-- Location: LCCOMB_X59_Y47_N18
\comb_90|Mux503~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux503~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[8]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux503~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[8]~input_o\,
	datac => \comb_89|controle_registradores\(2),
	datad => \comb_90|Mux503~1_combout\,
	combout => \comb_90|Mux503~2_combout\);

-- Location: FF_X56_Y48_N5
\comb_90|registradores[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][8]~q\);

-- Location: FF_X59_Y48_N25
\comb_90|registradores[29][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][8]~q\);

-- Location: LCCOMB_X56_Y48_N4
\comb_90|Mux519~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux519~0_combout\ = (\comb_88|Mux13~1_combout\ & (\comb_88|Mux10~1_combout\)) # (!\comb_88|Mux13~1_combout\ & ((\comb_88|Mux10~1_combout\ & ((!\comb_90|registradores[29][8]~q\))) # (!\comb_88|Mux10~1_combout\ & 
-- (!\comb_90|registradores[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[0][8]~q\,
	datad => \comb_90|registradores[29][8]~q\,
	combout => \comb_90|Mux519~0_combout\);

-- Location: FF_X53_Y48_N5
\comb_90|registradores[31][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[31][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[31][8]~q\);

-- Location: FF_X53_Y48_N19
\comb_90|registradores[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][8]~q\);

-- Location: LCCOMB_X53_Y48_N18
\comb_90|Mux519~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux519~1_combout\ = (\comb_90|Mux519~0_combout\ & (((!\comb_88|Mux13~1_combout\)) # (!\comb_90|registradores[31][8]~q\))) # (!\comb_90|Mux519~0_combout\ & (((!\comb_90|registradores[2][8]~q\ & \comb_88|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux519~0_combout\,
	datab => \comb_90|registradores[31][8]~q\,
	datac => \comb_90|registradores[2][8]~q\,
	datad => \comb_88|Mux13~1_combout\,
	combout => \comb_90|Mux519~1_combout\);

-- Location: LCCOMB_X63_Y47_N0
\comb_90|Mux519~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux519~1_wirecell_combout\ = !\comb_90|Mux519~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux519~1_combout\,
	combout => \comb_90|Mux519~1_wirecell_combout\);

-- Location: LCCOMB_X63_Y46_N4
\comb_90|Mux504~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux504~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(8))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(8),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a7\,
	combout => \comb_90|Mux504~0_combout\);

-- Location: LCCOMB_X59_Y46_N26
\comb_92|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux7~0_combout\ = (\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0)) # ((\comb_92|Add2~14_combout\)))) # (!\comb_89|controle_ula\(1) & (!\comb_89|controle_ula\(0) & ((\comb_92|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|Add2~14_combout\,
	datad => \comb_92|Add0~14_combout\,
	combout => \comb_92|Mux7~0_combout\);

-- Location: LCCOMB_X59_Y46_N12
\comb_92|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux7~1_combout\ = (\comb_89|controle_ula\(0) & ((\comb_92|Mux7~0_combout\ & ((\comb_92|Add3~14_combout\))) # (!\comb_92|Mux7~0_combout\ & (\comb_92|Add1~14_combout\)))) # (!\comb_89|controle_ula\(0) & (\comb_92|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_92|Mux7~0_combout\,
	datac => \comb_92|Add1~14_combout\,
	datad => \comb_92|Add3~14_combout\,
	combout => \comb_92|Mux7~1_combout\);

-- Location: LCCOMB_X59_Y46_N0
\comb_92|ula~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~21_combout\ = (\comb_90|Mux568~0_combout\ & !\comb_90|Mux520~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux568~0_combout\,
	datad => \comb_90|Mux520~1_combout\,
	combout => \comb_92|ula~21_combout\);

-- Location: LCCOMB_X59_Y46_N30
\comb_92|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux7~2_combout\ = (\comb_92|Mux5~1_combout\ & (((\comb_92|ula~21_combout\ & \comb_92|Mux5~0_combout\)))) # (!\comb_92|Mux5~1_combout\ & ((\comb_92|Mux7~1_combout\) # ((!\comb_92|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux7~1_combout\,
	datab => \comb_92|ula~21_combout\,
	datac => \comb_92|Mux5~1_combout\,
	datad => \comb_92|Mux5~0_combout\,
	combout => \comb_92|Mux7~2_combout\);

-- Location: LCCOMB_X59_Y46_N16
\comb_92|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux7~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_92|Mux7~2_combout\ & \comb_90|Mux568~0_combout\)) # (!\comb_90|Mux520~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (\comb_92|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux7~2_combout\,
	datab => \comb_90|Mux568~0_combout\,
	datac => \comb_92|Mux2~0_combout\,
	datad => \comb_90|Mux520~1_combout\,
	combout => \comb_92|Mux7~3_combout\);

-- Location: LCCOMB_X59_Y46_N10
\comb_92|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux7~4_combout\ = (\comb_89|controle_ula\(3) & (\comb_90|Mux520~1_combout\ & (\comb_92|Mux2~0_combout\))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datab => \comb_89|controle_ula\(3),
	datac => \comb_92|Mux2~0_combout\,
	datad => \comb_92|Mux7~3_combout\,
	combout => \comb_92|Mux7~4_combout\);

-- Location: LCCOMB_X59_Y46_N4
\comb_92|ula[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(7) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|ula\(7)))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|Mux7~4_combout\,
	datac => \comb_92|ula\(7),
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(7));

-- Location: LCCOMB_X59_Y46_N28
\comb_90|Mux504~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux504~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux504~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux504~0_combout\,
	datab => \comb_89|controle_registradores\(1),
	datac => \comb_92|ula\(7),
	combout => \comb_90|Mux504~1_combout\);

-- Location: LCCOMB_X59_Y46_N8
\comb_90|Mux504~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux504~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[7]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux504~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[7]~input_o\,
	datab => \comb_90|Mux504~1_combout\,
	datad => \comb_89|controle_registradores\(2),
	combout => \comb_90|Mux504~2_combout\);

-- Location: FF_X56_Y46_N1
\comb_90|registradores[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux504~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][7]~q\);

-- Location: LCCOMB_X56_Y48_N30
\comb_90|Mux520~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux520~0_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_88|Mux10~1_combout\) # ((!\comb_90|registradores[2][7]~q\)))) # (!\comb_88|Mux13~1_combout\ & (!\comb_88|Mux10~1_combout\ & (!\comb_90|registradores[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[0][7]~q\,
	datad => \comb_90|registradores[2][7]~q\,
	combout => \comb_90|Mux520~0_combout\);

-- Location: LCCOMB_X56_Y46_N6
\comb_90|Mux520~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux520~1_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_90|Mux520~0_combout\ & ((!\comb_90|registradores[31][7]~q\))) # (!\comb_90|Mux520~0_combout\ & (!\comb_90|registradores[29][7]~q\)))) # (!\comb_88|Mux10~1_combout\ & 
-- (((\comb_90|Mux520~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|registradores[29][7]~q\,
	datac => \comb_90|Mux520~0_combout\,
	datad => \comb_90|registradores[31][7]~q\,
	combout => \comb_90|Mux520~1_combout\);

-- Location: LCCOMB_X63_Y46_N18
\comb_90|Mux520~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux520~1_wirecell_combout\ = !\comb_90|Mux520~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux520~1_combout\,
	combout => \comb_90|Mux520~1_wirecell_combout\);

-- Location: LCCOMB_X63_Y46_N10
\comb_90|Mux507~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux507~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(5))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(5),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a4\,
	combout => \comb_90|Mux507~0_combout\);

-- Location: LCCOMB_X54_Y48_N12
\comb_92|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux4~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0))))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & ((\comb_92|Add1~8_combout\))) # (!\comb_89|controle_ula\(0) & (\comb_92|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_92|Add0~8_combout\,
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|Add1~8_combout\,
	combout => \comb_92|Mux4~0_combout\);

-- Location: LCCOMB_X58_Y49_N6
\comb_92|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~6_combout\ = (\comb_90|Mux524~1_combout\ & ((\comb_88|Mux28~0_combout\ & ((\comb_92|Add3~5\) # (GND))) # (!\comb_88|Mux28~0_combout\ & (!\comb_92|Add3~5\)))) # (!\comb_90|Mux524~1_combout\ & ((\comb_88|Mux28~0_combout\ & (!\comb_92|Add3~5\)) 
-- # (!\comb_88|Mux28~0_combout\ & (\comb_92|Add3~5\ & VCC))))
-- \comb_92|Add3~7\ = CARRY((\comb_90|Mux524~1_combout\ & ((\comb_88|Mux28~0_combout\) # (!\comb_92|Add3~5\))) # (!\comb_90|Mux524~1_combout\ & (\comb_88|Mux28~0_combout\ & !\comb_92|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux524~1_combout\,
	datab => \comb_88|Mux28~0_combout\,
	datad => VCC,
	cin => \comb_92|Add3~5\,
	combout => \comb_92|Add3~6_combout\,
	cout => \comb_92|Add3~7\);

-- Location: LCCOMB_X58_Y49_N8
\comb_92|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~8_combout\ = (\comb_90|Mux523~1_combout\ & (\comb_92|Add3~7\ $ (GND))) # (!\comb_90|Mux523~1_combout\ & ((GND) # (!\comb_92|Add3~7\)))
-- \comb_92|Add3~9\ = CARRY((!\comb_92|Add3~7\) # (!\comb_90|Mux523~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux523~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~7\,
	combout => \comb_92|Add3~8_combout\,
	cout => \comb_92|Add3~9\);

-- Location: LCCOMB_X54_Y48_N14
\comb_92|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux4~1_combout\ = (\comb_92|Mux4~0_combout\ & (((\comb_92|Add3~8_combout\)) # (!\comb_89|controle_ula\(1)))) # (!\comb_92|Mux4~0_combout\ & (\comb_89|controle_ula\(1) & ((\comb_92|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux4~0_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|Add3~8_combout\,
	datad => \comb_92|Add2~8_combout\,
	combout => \comb_92|Mux4~1_combout\);

-- Location: LCCOMB_X54_Y49_N28
\comb_92|ula~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~24_combout\ = (\comb_90|Mux571~0_combout\ & !\comb_90|Mux523~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux571~0_combout\,
	datad => \comb_90|Mux523~1_combout\,
	combout => \comb_92|ula~24_combout\);

-- Location: LCCOMB_X54_Y48_N0
\comb_92|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux4~2_combout\ = (\comb_92|Mux5~0_combout\ & ((\comb_92|Mux5~1_combout\ & ((\comb_92|ula~24_combout\))) # (!\comb_92|Mux5~1_combout\ & (\comb_92|Mux4~1_combout\)))) # (!\comb_92|Mux5~0_combout\ & (((!\comb_92|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux5~0_combout\,
	datab => \comb_92|Mux4~1_combout\,
	datac => \comb_92|ula~24_combout\,
	datad => \comb_92|Mux5~1_combout\,
	combout => \comb_92|Mux4~2_combout\);

-- Location: LCCOMB_X54_Y48_N2
\comb_92|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux4~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_90|Mux571~0_combout\ & \comb_92|Mux4~2_combout\)) # (!\comb_90|Mux523~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (((\comb_92|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux571~0_combout\,
	datab => \comb_92|Mux4~2_combout\,
	datac => \comb_90|Mux523~1_combout\,
	datad => \comb_92|Mux2~0_combout\,
	combout => \comb_92|Mux4~3_combout\);

-- Location: LCCOMB_X54_Y48_N4
\comb_92|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux4~4_combout\ = (\comb_89|controle_ula\(3) & (\comb_92|Mux2~0_combout\ & ((\comb_90|Mux523~1_combout\)))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux2~0_combout\,
	datab => \comb_92|Mux4~3_combout\,
	datac => \comb_90|Mux523~1_combout\,
	datad => \comb_89|controle_ula\(3),
	combout => \comb_92|Mux4~4_combout\);

-- Location: LCCOMB_X54_Y48_N6
\comb_92|ula[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(4) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(4))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(4),
	datab => \comb_92|Mux4~4_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(4));

-- Location: LCCOMB_X54_Y48_N10
\comb_90|Mux507~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux507~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux507~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux507~0_combout\,
	datac => \comb_89|controle_registradores\(1),
	datad => \comb_92|ula\(4),
	combout => \comb_90|Mux507~1_combout\);

-- Location: LCCOMB_X54_Y48_N8
\comb_90|Mux507~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux507~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[4]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux507~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[4]~input_o\,
	datac => \comb_89|controle_registradores\(2),
	datad => \comb_90|Mux507~1_combout\,
	combout => \comb_90|Mux507~2_combout\);

-- Location: FF_X56_Y48_N19
\comb_90|registradores[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux507~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][4]~q\);

-- Location: LCCOMB_X56_Y48_N22
\comb_90|Mux523~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux523~0_combout\ = (\comb_88|Mux13~1_combout\ & (((\comb_88|Mux10~1_combout\)))) # (!\comb_88|Mux13~1_combout\ & ((\comb_88|Mux10~1_combout\ & ((!\comb_90|registradores[29][4]~q\))) # (!\comb_88|Mux10~1_combout\ & 
-- (!\comb_90|registradores[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_90|registradores[0][4]~q\,
	datac => \comb_88|Mux10~1_combout\,
	datad => \comb_90|registradores[29][4]~q\,
	combout => \comb_90|Mux523~0_combout\);

-- Location: LCCOMB_X55_Y46_N0
\comb_90|Mux523~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux523~1_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_90|Mux523~0_combout\ & ((!\comb_90|registradores[31][4]~q\))) # (!\comb_90|Mux523~0_combout\ & (!\comb_90|registradores[2][4]~q\)))) # (!\comb_88|Mux13~1_combout\ & 
-- (\comb_90|Mux523~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_90|Mux523~0_combout\,
	datac => \comb_90|registradores[2][4]~q\,
	datad => \comb_90|registradores[31][4]~q\,
	combout => \comb_90|Mux523~1_combout\);

-- Location: LCCOMB_X65_Y46_N20
\comb_90|Mux523~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux523~1_wirecell_combout\ = !\comb_90|Mux523~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux523~1_combout\,
	combout => \comb_90|Mux523~1_wirecell_combout\);

-- Location: FF_X63_Y46_N29
\comb_91|memoria_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux540~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(4));

-- Location: LCCOMB_X63_Y46_N28
\comb_91|memoria~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_91|memoria~4_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0_bypass\(4)))) # (!\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0|auto_generated|ram_block1a3\,
	datac => \comb_91|memoria_rtl_0_bypass\(4),
	datad => \comb_91|memoria_rtl_0_bypass\(0),
	combout => \comb_91|memoria~4_combout\);

-- Location: IOIBUF_X115_Y13_N8
\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: LCCOMB_X58_Y46_N12
\comb_92|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux3~2_combout\ = (\comb_89|controle_ula\(1) & ((\comb_92|Add2~6_combout\) # ((\comb_89|controle_ula\(0))))) # (!\comb_89|controle_ula\(1) & (((\comb_92|Add0~6_combout\ & !\comb_89|controle_ula\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add2~6_combout\,
	datab => \comb_92|Add0~6_combout\,
	datac => \comb_89|controle_ula\(1),
	datad => \comb_89|controle_ula\(0),
	combout => \comb_92|Mux3~2_combout\);

-- Location: LCCOMB_X58_Y46_N14
\comb_92|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux3~3_combout\ = (\comb_92|Mux3~2_combout\ & ((\comb_92|Add3~6_combout\) # ((!\comb_89|controle_ula\(0))))) # (!\comb_92|Mux3~2_combout\ & (((\comb_92|Add1~6_combout\ & \comb_89|controle_ula\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux3~2_combout\,
	datab => \comb_92|Add3~6_combout\,
	datac => \comb_92|Add1~6_combout\,
	datad => \comb_89|controle_ula\(0),
	combout => \comb_92|Mux3~3_combout\);

-- Location: LCCOMB_X56_Y50_N26
\comb_92|ula~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~26_combout\ = (!\comb_90|Mux524~1_combout\ & \comb_88|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux524~1_combout\,
	datad => \comb_88|Mux28~0_combout\,
	combout => \comb_92|ula~26_combout\);

-- Location: LCCOMB_X56_Y50_N24
\comb_92|ula~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~27_combout\ = (!\comb_90|Mux524~1_combout\ & \comb_90|Mux572~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux524~1_combout\,
	datad => \comb_90|Mux572~0_combout\,
	combout => \comb_92|ula~27_combout\);

-- Location: LCCOMB_X56_Y50_N10
\comb_92|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux3~0_combout\ = (\comb_89|controle_ula\(1) & (\comb_89|controle_ula\(0))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & (\comb_92|ula~26_combout\)) # (!\comb_89|controle_ula\(0) & ((\comb_92|ula~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|ula~26_combout\,
	datad => \comb_92|ula~27_combout\,
	combout => \comb_92|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y50_N28
\comb_92|ula~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~28_combout\ = (\comb_88|Mux28~0_combout\) # (!\comb_90|Mux524~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux524~1_combout\,
	datad => \comb_88|Mux28~0_combout\,
	combout => \comb_92|ula~28_combout\);

-- Location: LCCOMB_X56_Y50_N30
\comb_92|ula~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~25_combout\ = (\comb_90|Mux572~0_combout\) # (!\comb_90|Mux524~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux524~1_combout\,
	datad => \comb_90|Mux572~0_combout\,
	combout => \comb_92|ula~25_combout\);

-- Location: LCCOMB_X57_Y50_N16
\comb_92|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux3~1_combout\ = (\comb_89|controle_ula\(1) & ((\comb_92|Mux3~0_combout\ & (\comb_92|ula~28_combout\)) # (!\comb_92|Mux3~0_combout\ & ((\comb_92|ula~25_combout\))))) # (!\comb_89|controle_ula\(1) & (\comb_92|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_92|Mux3~0_combout\,
	datac => \comb_92|ula~28_combout\,
	datad => \comb_92|ula~25_combout\,
	combout => \comb_92|Mux3~1_combout\);

-- Location: LCCOMB_X58_Y46_N24
\comb_92|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux3~4_combout\ = (\comb_89|controle_ula\(2) & ((\comb_92|Mux3~1_combout\))) # (!\comb_89|controle_ula\(2) & (\comb_92|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|Mux3~3_combout\,
	datac => \comb_89|controle_ula\(2),
	datad => \comb_92|Mux3~1_combout\,
	combout => \comb_92|Mux3~4_combout\);

-- Location: LCCOMB_X58_Y46_N26
\comb_92|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux3~5_combout\ = (\comb_89|controle_ula\(3) & (((\comb_92|Mux2~0_combout\ & \comb_90|Mux524~1_combout\)))) # (!\comb_89|controle_ula\(3) & (\comb_92|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(3),
	datab => \comb_92|Mux3~4_combout\,
	datac => \comb_92|Mux2~0_combout\,
	datad => \comb_90|Mux524~1_combout\,
	combout => \comb_92|Mux3~5_combout\);

-- Location: LCCOMB_X58_Y46_N20
\comb_92|ula[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(3) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|ula\(3)))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|Mux3~5_combout\,
	datac => \comb_92|Mux16~0clkctrl_outclk\,
	datad => \comb_92|ula\(3),
	combout => \comb_92|ula\(3));

-- Location: LCCOMB_X58_Y46_N10
\comb_90|Mux508~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux508~0_combout\ = (\comb_90|registradores[0][15]~0_combout\ & (((\comb_90|registradores[0][15]~1_combout\)))) # (!\comb_90|registradores[0][15]~0_combout\ & ((\comb_90|registradores[0][15]~1_combout\ & (\entrada[3]~input_o\)) # 
-- (!\comb_90|registradores[0][15]~1_combout\ & ((\comb_92|ula\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~0_combout\,
	datab => \entrada[3]~input_o\,
	datac => \comb_90|registradores[0][15]~1_combout\,
	datad => \comb_92|ula\(3),
	combout => \comb_90|Mux508~0_combout\);

-- Location: LCCOMB_X58_Y46_N28
\comb_90|Mux508~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux508~1_combout\ = (\comb_90|registradores[0][15]~0_combout\ & ((\comb_90|Mux508~0_combout\ & (\comb_88|Mux28~0_combout\)) # (!\comb_90|Mux508~0_combout\ & ((\comb_91|memoria~4_combout\))))) # (!\comb_90|registradores[0][15]~0_combout\ & 
-- (((\comb_90|Mux508~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][15]~0_combout\,
	datab => \comb_88|Mux28~0_combout\,
	datac => \comb_91|memoria~4_combout\,
	datad => \comb_90|Mux508~0_combout\,
	combout => \comb_90|Mux508~1_combout\);

-- Location: FF_X57_Y46_N15
\comb_90|registradores[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux508~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][3]~q\);

-- Location: LCCOMB_X54_Y45_N2
\comb_90|Mux524~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux524~0_combout\ = (\comb_88|Mux10~1_combout\ & (((\comb_88|Mux13~1_combout\)))) # (!\comb_88|Mux10~1_combout\ & ((\comb_88|Mux13~1_combout\ & ((!\comb_90|registradores[2][3]~q\))) # (!\comb_88|Mux13~1_combout\ & 
-- (!\comb_90|registradores[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|registradores[0][3]~q\,
	datac => \comb_90|registradores[2][3]~q\,
	datad => \comb_88|Mux13~1_combout\,
	combout => \comb_90|Mux524~0_combout\);

-- Location: LCCOMB_X53_Y46_N18
\comb_90|Mux524~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux524~1_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_90|Mux524~0_combout\ & ((!\comb_90|registradores[31][3]~q\))) # (!\comb_90|Mux524~0_combout\ & (!\comb_90|registradores[29][3]~q\)))) # (!\comb_88|Mux10~1_combout\ & 
-- (((\comb_90|Mux524~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[29][3]~q\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[31][3]~q\,
	datad => \comb_90|Mux524~0_combout\,
	combout => \comb_90|Mux524~1_combout\);

-- Location: LCCOMB_X65_Y46_N30
\comb_90|Mux524~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux524~1_wirecell_combout\ = !\comb_90|Mux524~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux524~1_combout\,
	combout => \comb_90|Mux524~1_wirecell_combout\);

-- Location: LCCOMB_X63_Y46_N0
\comb_91|memoria~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_91|memoria~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(2))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a1~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(2),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	combout => \comb_91|memoria~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X54_Y49_N22
\comb_92|ula~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~2_combout\ = (!\comb_90|Mux526~1_combout\ & \comb_90|Mux574~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_90|Mux574~0_combout\,
	combout => \comb_92|ula~2_combout\);

-- Location: LCCOMB_X54_Y49_N12
\comb_92|ula~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~1_combout\ = (!\comb_90|Mux526~1_combout\ & \comb_88|Mux30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_88|Mux30~1_combout\,
	combout => \comb_92|ula~1_combout\);

-- Location: LCCOMB_X54_Y49_N16
\comb_92|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux1~0_combout\ = (\comb_89|controle_ula\(1) & (\comb_89|controle_ula\(0))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & ((\comb_92|ula~1_combout\))) # (!\comb_89|controle_ula\(0) & (\comb_92|ula~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|ula~2_combout\,
	datad => \comb_92|ula~1_combout\,
	combout => \comb_92|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y49_N26
\comb_92|ula~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~0_combout\ = (\comb_90|Mux574~0_combout\) # (!\comb_90|Mux526~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_90|Mux574~0_combout\,
	combout => \comb_92|ula~0_combout\);

-- Location: LCCOMB_X54_Y49_N2
\comb_92|ula~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~3_combout\ = (\comb_88|Mux30~1_combout\) # (!\comb_90|Mux526~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_88|Mux30~1_combout\,
	combout => \comb_92|ula~3_combout\);

-- Location: LCCOMB_X54_Y49_N20
\comb_92|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux1~1_combout\ = (\comb_89|controle_ula\(1) & ((\comb_92|Mux1~0_combout\ & ((\comb_92|ula~3_combout\))) # (!\comb_92|Mux1~0_combout\ & (\comb_92|ula~0_combout\)))) # (!\comb_89|controle_ula\(1) & (\comb_92|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_92|Mux1~0_combout\,
	datac => \comb_92|ula~0_combout\,
	datad => \comb_92|ula~3_combout\,
	combout => \comb_92|Mux1~1_combout\);

-- Location: LCCOMB_X55_Y49_N26
\comb_92|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux1~2_combout\ = (\comb_89|controle_ula\(0) & (((\comb_89|controle_ula\(1))))) # (!\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1) & ((\comb_92|Add2~2_combout\))) # (!\comb_89|controle_ula\(1) & (\comb_92|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add0~2_combout\,
	datab => \comb_92|Add2~2_combout\,
	datac => \comb_89|controle_ula\(0),
	datad => \comb_89|controle_ula\(1),
	combout => \comb_92|Mux1~2_combout\);

-- Location: LCCOMB_X54_Y49_N30
\comb_92|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux1~3_combout\ = (\comb_92|Mux1~2_combout\ & (((\comb_92|Add3~2_combout\) # (!\comb_89|controle_ula\(0))))) # (!\comb_92|Mux1~2_combout\ & (\comb_92|Add1~2_combout\ & ((\comb_89|controle_ula\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux1~2_combout\,
	datab => \comb_92|Add1~2_combout\,
	datac => \comb_92|Add3~2_combout\,
	datad => \comb_89|controle_ula\(0),
	combout => \comb_92|Mux1~3_combout\);

-- Location: LCCOMB_X54_Y49_N8
\comb_92|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux1~4_combout\ = (\comb_89|controle_ula\(2) & (\comb_92|Mux1~1_combout\)) # (!\comb_89|controle_ula\(2) & ((\comb_92|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux1~1_combout\,
	datab => \comb_92|Mux1~3_combout\,
	datac => \comb_89|controle_ula\(2),
	combout => \comb_92|Mux1~4_combout\);

-- Location: LCCOMB_X53_Y46_N4
\comb_92|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux1~5_combout\ = (\comb_89|controle_ula\(3) & (\comb_92|Mux2~0_combout\ & (\comb_90|Mux526~1_combout\))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(3),
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_92|Mux1~4_combout\,
	combout => \comb_92|Mux1~5_combout\);

-- Location: LCCOMB_X53_Y46_N12
\comb_92|ula[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(1) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(1))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(1),
	datab => \comb_92|Mux1~5_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(1));

-- Location: LCCOMB_X53_Y46_N10
\comb_90|Mux510~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux510~0_combout\ = (\comb_90|registradores[0][15]~1_combout\ & ((\entrada[1]~input_o\) # ((\comb_90|registradores[0][15]~0_combout\)))) # (!\comb_90|registradores[0][15]~1_combout\ & (((!\comb_90|registradores[0][15]~0_combout\ & 
-- \comb_92|ula\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datab => \comb_90|registradores[0][15]~1_combout\,
	datac => \comb_90|registradores[0][15]~0_combout\,
	datad => \comb_92|ula\(1),
	combout => \comb_90|Mux510~0_combout\);

-- Location: LCCOMB_X53_Y46_N28
\comb_90|Mux510~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux510~1_combout\ = (\comb_90|registradores[0][15]~0_combout\ & ((\comb_90|Mux510~0_combout\ & (\comb_88|Mux30~1_combout\)) # (!\comb_90|Mux510~0_combout\ & ((\comb_91|memoria~0_combout\))))) # (!\comb_90|registradores[0][15]~0_combout\ & 
-- (((\comb_90|Mux510~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux30~1_combout\,
	datab => \comb_90|registradores[0][15]~0_combout\,
	datac => \comb_91|memoria~0_combout\,
	datad => \comb_90|Mux510~0_combout\,
	combout => \comb_90|Mux510~1_combout\);

-- Location: FF_X57_Y46_N25
\comb_90|registradores[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux510~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][1]~q\);

-- Location: LCCOMB_X54_Y45_N20
\comb_90|Mux526~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux526~0_combout\ = (\comb_88|Mux10~1_combout\ & (((\comb_88|Mux13~1_combout\)))) # (!\comb_88|Mux10~1_combout\ & ((\comb_88|Mux13~1_combout\ & (!\comb_90|registradores[2][1]~q\)) # (!\comb_88|Mux13~1_combout\ & 
-- ((!\comb_90|registradores[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_90|registradores[2][1]~q\,
	datac => \comb_90|registradores[0][1]~q\,
	datad => \comb_88|Mux13~1_combout\,
	combout => \comb_90|Mux526~0_combout\);

-- Location: LCCOMB_X53_Y46_N0
\comb_90|Mux526~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux526~1_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_90|Mux526~0_combout\ & ((!\comb_90|registradores[31][1]~q\))) # (!\comb_90|Mux526~0_combout\ & (!\comb_90|registradores[29][1]~q\)))) # (!\comb_88|Mux10~1_combout\ & 
-- (((\comb_90|Mux526~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[29][1]~q\,
	datab => \comb_88|Mux10~1_combout\,
	datac => \comb_90|registradores[31][1]~q\,
	datad => \comb_90|Mux526~0_combout\,
	combout => \comb_90|Mux526~1_combout\);

-- Location: LCCOMB_X65_Y46_N2
\comb_90|Mux526~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux526~1_wirecell_combout\ = !\comb_90|Mux526~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux526~1_combout\,
	combout => \comb_90|Mux526~1_wirecell_combout\);

-- Location: LCCOMB_X63_Y46_N8
\comb_91|memoria~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_91|memoria~6_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(1))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(1),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \comb_91|memoria~6_combout\);

-- Location: LCCOMB_X53_Y48_N6
\comb_92|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~1_combout\ = (\comb_88|Mux30~1_combout\ & ((\comb_90|Mux526~1_combout\) # ((\comb_88|Mux31~1_combout\ & !\comb_90|Mux527~1_combout\)))) # (!\comb_88|Mux30~1_combout\ & (\comb_88|Mux31~1_combout\ & (!\comb_90|Mux527~1_combout\ & 
-- \comb_90|Mux526~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux30~1_combout\,
	datab => \comb_88|Mux31~1_combout\,
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_90|Mux526~1_combout\,
	combout => \comb_92|LessThan3~1_combout\);

-- Location: LCCOMB_X53_Y48_N24
\comb_92|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~2_combout\ = (\comb_90|Mux525~1_combout\ & ((\comb_88|Mux29~1_combout\) # (\comb_92|LessThan3~1_combout\))) # (!\comb_90|Mux525~1_combout\ & (\comb_88|Mux29~1_combout\ & \comb_92|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux525~1_combout\,
	datac => \comb_88|Mux29~1_combout\,
	datad => \comb_92|LessThan3~1_combout\,
	combout => \comb_92|LessThan3~2_combout\);

-- Location: LCCOMB_X53_Y48_N26
\comb_92|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~3_combout\ = (\comb_90|Mux524~1_combout\ & ((\comb_88|Mux28~0_combout\) # (\comb_92|LessThan3~2_combout\))) # (!\comb_90|Mux524~1_combout\ & (\comb_88|Mux28~0_combout\ & \comb_92|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux524~1_combout\,
	datab => \comb_88|Mux28~0_combout\,
	datad => \comb_92|LessThan3~2_combout\,
	combout => \comb_92|LessThan3~3_combout\);

-- Location: LCCOMB_X57_Y48_N26
\comb_92|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~0_combout\ = (\comb_88|Mux15~1_combout\ & ((\comb_90|Mux514~1_combout\) # ((\comb_90|Mux513~1_combout\) # (\comb_90|Mux512~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datab => \comb_90|Mux514~1_combout\,
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_92|LessThan3~0_combout\);

-- Location: LCCOMB_X57_Y48_N4
\comb_92|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~4_combout\ = (\comb_88|Mux15~1_combout\ & (!\comb_90|Mux513~1_combout\ & !\comb_90|Mux514~1_combout\)) # (!\comb_88|Mux15~1_combout\ & (\comb_90|Mux513~1_combout\ & \comb_90|Mux514~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux15~1_combout\,
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux514~1_combout\,
	combout => \comb_92|LessThan3~4_combout\);

-- Location: LCCOMB_X53_Y48_N22
\comb_92|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~7_combout\ = (\comb_90|Mux516~1_combout\ & (\comb_90|Mux519~1_combout\ & (\comb_90|Mux518~1_combout\ & \comb_90|Mux517~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux516~1_combout\,
	datab => \comb_90|Mux519~1_combout\,
	datac => \comb_90|Mux518~1_combout\,
	datad => \comb_90|Mux517~1_combout\,
	combout => \comb_92|LessThan3~7_combout\);

-- Location: LCCOMB_X53_Y48_N28
\comb_92|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~5_combout\ = \comb_88|Mux15~1_combout\ $ (\comb_90|Mux512~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux15~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_92|LessThan3~5_combout\);

-- Location: LCCOMB_X55_Y46_N16
\comb_92|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~6_combout\ = (\comb_90|Mux520~1_combout\ & (\comb_90|Mux521~1_combout\ & (\comb_90|Mux522~1_combout\ & \comb_90|Mux523~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datab => \comb_90|Mux521~1_combout\,
	datac => \comb_90|Mux522~1_combout\,
	datad => \comb_90|Mux523~1_combout\,
	combout => \comb_92|LessThan3~6_combout\);

-- Location: LCCOMB_X53_Y48_N0
\comb_92|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~8_combout\ = (\comb_92|LessThan3~7_combout\ & (\comb_92|LessThan3~5_combout\ & (\comb_90|Mux515~1_combout\ & \comb_92|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|LessThan3~7_combout\,
	datab => \comb_92|LessThan3~5_combout\,
	datac => \comb_90|Mux515~1_combout\,
	datad => \comb_92|LessThan3~6_combout\,
	combout => \comb_92|LessThan3~8_combout\);

-- Location: LCCOMB_X53_Y48_N10
\comb_92|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan3~9_combout\ = (\comb_92|LessThan3~0_combout\) # ((\comb_92|LessThan3~3_combout\ & (\comb_92|LessThan3~4_combout\ & \comb_92|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|LessThan3~3_combout\,
	datab => \comb_92|LessThan3~0_combout\,
	datac => \comb_92|LessThan3~4_combout\,
	datad => \comb_92|LessThan3~8_combout\,
	combout => \comb_92|LessThan3~9_combout\);

-- Location: LCCOMB_X52_Y46_N4
\comb_92|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~6_combout\ = (\comb_89|controle_ula\(0) & (!\comb_90|Mux527~1_combout\ & ((\comb_89|controle_ula\(1))))) # (!\comb_89|controle_ula\(0) & (((\comb_92|LessThan3~9_combout\ & !\comb_89|controle_ula\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux527~1_combout\,
	datab => \comb_92|LessThan3~9_combout\,
	datac => \comb_89|controle_ula\(0),
	datad => \comb_89|controle_ula\(1),
	combout => \comb_92|Mux0~6_combout\);

-- Location: LCCOMB_X53_Y47_N0
\comb_92|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~1_cout\ = CARRY((\comb_90|Mux575~0_combout\ & !\comb_90|Mux527~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux575~0_combout\,
	datab => \comb_90|Mux527~1_combout\,
	datad => VCC,
	cout => \comb_92|LessThan2~1_cout\);

-- Location: LCCOMB_X53_Y47_N2
\comb_92|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~3_cout\ = CARRY((\comb_90|Mux574~0_combout\ & (!\comb_90|Mux526~1_combout\ & !\comb_92|LessThan2~1_cout\)) # (!\comb_90|Mux574~0_combout\ & ((!\comb_92|LessThan2~1_cout\) # (!\comb_90|Mux526~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux574~0_combout\,
	datab => \comb_90|Mux526~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~1_cout\,
	cout => \comb_92|LessThan2~3_cout\);

-- Location: LCCOMB_X53_Y47_N4
\comb_92|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~5_cout\ = CARRY((\comb_90|Mux573~0_combout\ & ((\comb_90|Mux525~1_combout\) # (!\comb_92|LessThan2~3_cout\))) # (!\comb_90|Mux573~0_combout\ & (\comb_90|Mux525~1_combout\ & !\comb_92|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux573~0_combout\,
	datab => \comb_90|Mux525~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~3_cout\,
	cout => \comb_92|LessThan2~5_cout\);

-- Location: LCCOMB_X53_Y47_N6
\comb_92|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~7_cout\ = CARRY((\comb_90|Mux524~1_combout\ & (!\comb_90|Mux572~0_combout\ & !\comb_92|LessThan2~5_cout\)) # (!\comb_90|Mux524~1_combout\ & ((!\comb_92|LessThan2~5_cout\) # (!\comb_90|Mux572~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux524~1_combout\,
	datab => \comb_90|Mux572~0_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~5_cout\,
	cout => \comb_92|LessThan2~7_cout\);

-- Location: LCCOMB_X53_Y47_N8
\comb_92|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~9_cout\ = CARRY((\comb_90|Mux571~0_combout\ & ((\comb_90|Mux523~1_combout\) # (!\comb_92|LessThan2~7_cout\))) # (!\comb_90|Mux571~0_combout\ & (\comb_90|Mux523~1_combout\ & !\comb_92|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux571~0_combout\,
	datab => \comb_90|Mux523~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~7_cout\,
	cout => \comb_92|LessThan2~9_cout\);

-- Location: LCCOMB_X53_Y47_N10
\comb_92|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~11_cout\ = CARRY((\comb_90|Mux522~1_combout\ & (!\comb_90|Mux570~0_combout\ & !\comb_92|LessThan2~9_cout\)) # (!\comb_90|Mux522~1_combout\ & ((!\comb_92|LessThan2~9_cout\) # (!\comb_90|Mux570~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux522~1_combout\,
	datab => \comb_90|Mux570~0_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~9_cout\,
	cout => \comb_92|LessThan2~11_cout\);

-- Location: LCCOMB_X53_Y47_N12
\comb_92|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~13_cout\ = CARRY((\comb_90|Mux569~0_combout\ & ((\comb_90|Mux521~1_combout\) # (!\comb_92|LessThan2~11_cout\))) # (!\comb_90|Mux569~0_combout\ & (\comb_90|Mux521~1_combout\ & !\comb_92|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux569~0_combout\,
	datab => \comb_90|Mux521~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~11_cout\,
	cout => \comb_92|LessThan2~13_cout\);

-- Location: LCCOMB_X53_Y47_N14
\comb_92|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~15_cout\ = CARRY((\comb_90|Mux520~1_combout\ & (!\comb_90|Mux568~0_combout\ & !\comb_92|LessThan2~13_cout\)) # (!\comb_90|Mux520~1_combout\ & ((!\comb_92|LessThan2~13_cout\) # (!\comb_90|Mux568~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datab => \comb_90|Mux568~0_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~13_cout\,
	cout => \comb_92|LessThan2~15_cout\);

-- Location: LCCOMB_X53_Y47_N16
\comb_92|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~17_cout\ = CARRY((\comb_90|Mux567~0_combout\ & ((\comb_90|Mux519~1_combout\) # (!\comb_92|LessThan2~15_cout\))) # (!\comb_90|Mux567~0_combout\ & (\comb_90|Mux519~1_combout\ & !\comb_92|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux567~0_combout\,
	datab => \comb_90|Mux519~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~15_cout\,
	cout => \comb_92|LessThan2~17_cout\);

-- Location: LCCOMB_X53_Y47_N18
\comb_92|LessThan2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~19_cout\ = CARRY((\comb_90|Mux518~1_combout\ & (!\comb_90|Mux566~0_combout\ & !\comb_92|LessThan2~17_cout\)) # (!\comb_90|Mux518~1_combout\ & ((!\comb_92|LessThan2~17_cout\) # (!\comb_90|Mux566~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux518~1_combout\,
	datab => \comb_90|Mux566~0_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~17_cout\,
	cout => \comb_92|LessThan2~19_cout\);

-- Location: LCCOMB_X53_Y47_N20
\comb_92|LessThan2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~21_cout\ = CARRY((\comb_90|Mux565~0_combout\ & ((\comb_90|Mux517~1_combout\) # (!\comb_92|LessThan2~19_cout\))) # (!\comb_90|Mux565~0_combout\ & (\comb_90|Mux517~1_combout\ & !\comb_92|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux565~0_combout\,
	datab => \comb_90|Mux517~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~19_cout\,
	cout => \comb_92|LessThan2~21_cout\);

-- Location: LCCOMB_X53_Y47_N22
\comb_92|LessThan2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~23_cout\ = CARRY((\comb_90|Mux564~0_combout\ & (!\comb_90|Mux516~1_combout\ & !\comb_92|LessThan2~21_cout\)) # (!\comb_90|Mux564~0_combout\ & ((!\comb_92|LessThan2~21_cout\) # (!\comb_90|Mux516~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux564~0_combout\,
	datab => \comb_90|Mux516~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~21_cout\,
	cout => \comb_92|LessThan2~23_cout\);

-- Location: LCCOMB_X53_Y47_N24
\comb_92|LessThan2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~25_cout\ = CARRY((\comb_90|Mux515~1_combout\ & ((\comb_90|Mux563~0_combout\) # (!\comb_92|LessThan2~23_cout\))) # (!\comb_90|Mux515~1_combout\ & (\comb_90|Mux563~0_combout\ & !\comb_92|LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux515~1_combout\,
	datab => \comb_90|Mux563~0_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~23_cout\,
	cout => \comb_92|LessThan2~25_cout\);

-- Location: LCCOMB_X53_Y47_N26
\comb_92|LessThan2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~27_cout\ = CARRY((\comb_90|Mux514~1_combout\ & (!\comb_90|Mux562~0_combout\ & !\comb_92|LessThan2~25_cout\)) # (!\comb_90|Mux514~1_combout\ & ((!\comb_92|LessThan2~25_cout\) # (!\comb_90|Mux562~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux562~0_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~25_cout\,
	cout => \comb_92|LessThan2~27_cout\);

-- Location: LCCOMB_X53_Y47_N28
\comb_92|LessThan2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~29_cout\ = CARRY((\comb_90|Mux561~0_combout\ & ((\comb_90|Mux513~1_combout\) # (!\comb_92|LessThan2~27_cout\))) # (!\comb_90|Mux561~0_combout\ & (\comb_90|Mux513~1_combout\ & !\comb_92|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux561~0_combout\,
	datab => \comb_90|Mux513~1_combout\,
	datad => VCC,
	cin => \comb_92|LessThan2~27_cout\,
	cout => \comb_92|LessThan2~29_cout\);

-- Location: LCCOMB_X53_Y47_N30
\comb_92|LessThan2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|LessThan2~30_combout\ = (\comb_90|Mux512~1_combout\ & ((\comb_92|LessThan2~29_cout\) # (\comb_90|Mux560~0_combout\))) # (!\comb_90|Mux512~1_combout\ & (\comb_92|LessThan2~29_cout\ & \comb_90|Mux560~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux512~1_combout\,
	datad => \comb_90|Mux560~0_combout\,
	cin => \comb_92|LessThan2~29_cout\,
	combout => \comb_92|LessThan2~30_combout\);

-- Location: LCCOMB_X52_Y46_N22
\comb_92|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~2_combout\ = (\comb_89|controle_ula\(1) & (\comb_92|LessThan2~30_combout\ & \comb_89|controle_ula\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|LessThan2~30_combout\,
	datad => \comb_89|controle_ula\(0),
	combout => \comb_92|Mux0~2_combout\);

-- Location: LCCOMB_X56_Y49_N4
\comb_92|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~3_combout\ = (\comb_89|controle_ula\(0) & (\comb_89|controle_ula\(1))) # (!\comb_89|controle_ula\(0) & ((\comb_89|controle_ula\(1) & (\comb_92|Add2~0_combout\)) # (!\comb_89|controle_ula\(1) & ((\comb_92|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|Add2~0_combout\,
	datad => \comb_92|Add0~0_combout\,
	combout => \comb_92|Mux0~3_combout\);

-- Location: LCCOMB_X52_Y46_N16
\comb_92|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~4_combout\ = (\comb_89|controle_ula\(0) & ((\comb_92|Mux0~3_combout\ & ((\comb_92|Add3~0_combout\))) # (!\comb_92|Mux0~3_combout\ & (\comb_92|Add1~0_combout\)))) # (!\comb_89|controle_ula\(0) & (((\comb_92|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(0),
	datab => \comb_92|Add1~0_combout\,
	datac => \comb_92|Add3~0_combout\,
	datad => \comb_92|Mux0~3_combout\,
	combout => \comb_92|Mux0~4_combout\);

-- Location: LCCOMB_X52_Y46_N18
\comb_92|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~5_combout\ = (\comb_89|controle_ula\(2) & (((\comb_89|controle_ula\(3))))) # (!\comb_89|controle_ula\(2) & ((\comb_89|controle_ula\(3) & (\comb_92|Mux0~2_combout\)) # (!\comb_89|controle_ula\(3) & ((\comb_92|Mux0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(2),
	datab => \comb_92|Mux0~2_combout\,
	datac => \comb_89|controle_ula\(3),
	datad => \comb_92|Mux0~4_combout\,
	combout => \comb_92|Mux0~5_combout\);

-- Location: LCCOMB_X52_Y46_N10
\comb_92|ula~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~33_combout\ = (\comb_90|Mux575~0_combout\) # (\comb_90|Mux527~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux575~0_combout\,
	datad => \comb_90|Mux527~1_combout\,
	combout => \comb_92|ula~33_combout\);

-- Location: LCCOMB_X52_Y46_N26
\comb_92|ula~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~36_combout\ = (\comb_88|Mux31~1_combout\) # (\comb_90|Mux527~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux31~1_combout\,
	datad => \comb_90|Mux527~1_combout\,
	combout => \comb_92|ula~36_combout\);

-- Location: LCCOMB_X52_Y46_N6
\comb_92|ula~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~35_combout\ = (\comb_90|Mux575~0_combout\ & \comb_90|Mux527~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux575~0_combout\,
	datac => \comb_90|Mux527~1_combout\,
	combout => \comb_92|ula~35_combout\);

-- Location: LCCOMB_X52_Y46_N12
\comb_92|ula~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~34_combout\ = (\comb_90|Mux527~1_combout\ & \comb_88|Mux31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_88|Mux31~1_combout\,
	combout => \comb_92|ula~34_combout\);

-- Location: LCCOMB_X52_Y46_N0
\comb_92|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0))))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & ((\comb_92|ula~34_combout\))) # (!\comb_89|controle_ula\(0) & (\comb_92|ula~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~35_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|ula~34_combout\,
	combout => \comb_92|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y46_N20
\comb_92|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~1_combout\ = (\comb_89|controle_ula\(1) & ((\comb_92|Mux0~0_combout\ & ((\comb_92|ula~36_combout\))) # (!\comb_92|Mux0~0_combout\ & (\comb_92|ula~33_combout\)))) # (!\comb_89|controle_ula\(1) & (((\comb_92|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~33_combout\,
	datab => \comb_89|controle_ula\(1),
	datac => \comb_92|ula~36_combout\,
	datad => \comb_92|Mux0~0_combout\,
	combout => \comb_92|Mux0~1_combout\);

-- Location: LCCOMB_X52_Y46_N30
\comb_92|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux0~7_combout\ = (\comb_92|Mux0~5_combout\ & ((\comb_92|Mux0~6_combout\) # ((!\comb_89|controle_ula\(2))))) # (!\comb_92|Mux0~5_combout\ & (((\comb_92|Mux0~1_combout\ & \comb_89|controle_ula\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux0~6_combout\,
	datab => \comb_92|Mux0~5_combout\,
	datac => \comb_92|Mux0~1_combout\,
	datad => \comb_89|controle_ula\(2),
	combout => \comb_92|Mux0~7_combout\);

-- Location: LCCOMB_X53_Y46_N22
\comb_92|ula[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(0) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(0))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula\(0),
	datab => \comb_92|Mux0~7_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(0));

-- Location: LCCOMB_X53_Y46_N6
\comb_90|Mux511~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux511~0_combout\ = (\comb_90|registradores[0][15]~0_combout\ & ((\comb_91|memoria~6_combout\) # ((\comb_90|registradores[0][15]~1_combout\)))) # (!\comb_90|registradores[0][15]~0_combout\ & (((\comb_92|ula\(0) & 
-- !\comb_90|registradores[0][15]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria~6_combout\,
	datab => \comb_90|registradores[0][15]~0_combout\,
	datac => \comb_92|ula\(0),
	datad => \comb_90|registradores[0][15]~1_combout\,
	combout => \comb_90|Mux511~0_combout\);

-- Location: LCCOMB_X53_Y46_N24
\comb_90|Mux511~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux511~1_combout\ = (\comb_90|registradores[0][15]~1_combout\ & ((\comb_90|Mux511~0_combout\ & (\comb_88|Mux31~1_combout\)) # (!\comb_90|Mux511~0_combout\ & ((\entrada[0]~input_o\))))) # (!\comb_90|registradores[0][15]~1_combout\ & 
-- (((\comb_90|Mux511~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux31~1_combout\,
	datab => \comb_90|registradores[0][15]~1_combout\,
	datac => \entrada[0]~input_o\,
	datad => \comb_90|Mux511~0_combout\,
	combout => \comb_90|Mux511~1_combout\);

-- Location: LCCOMB_X52_Y46_N8
\comb_90|registradores[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|registradores[2][0]~feeder_combout\ = \comb_90|Mux511~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_90|Mux511~1_combout\,
	combout => \comb_90|registradores[2][0]~feeder_combout\);

-- Location: FF_X52_Y46_N9
\comb_90|registradores[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|registradores[2][0]~feeder_combout\,
	ena => \comb_90|registradores[2][13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[2][0]~q\);

-- Location: FF_X57_Y45_N7
\comb_90|registradores[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux511~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][0]~q\);

-- Location: FF_X57_Y45_N29
\comb_90|registradores[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux511~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][0]~q\);

-- Location: LCCOMB_X57_Y45_N28
\comb_90|Mux543~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux543~2_combout\ = (\comb_88|Mux8~1_combout\ & (\comb_88|Mux9~1_combout\)) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & (\comb_90|registradores[1][0]~q\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[1][0]~q\,
	datad => \comb_90|registradores[0][0]~q\,
	combout => \comb_90|Mux543~2_combout\);

-- Location: LCCOMB_X57_Y45_N6
\comb_90|Mux543~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux543~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux543~2_combout\ & ((\comb_90|registradores[3][0]~q\))) # (!\comb_90|Mux543~2_combout\ & (\comb_90|registradores[2][0]~q\)))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux543~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[2][0]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[3][0]~q\,
	datad => \comb_90|Mux543~2_combout\,
	combout => \comb_90|Mux543~3_combout\);

-- Location: FF_X53_Y46_N31
\comb_90|registradores[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux511~1_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][0]~q\);

-- Location: LCCOMB_X53_Y46_N30
\comb_90|Mux543~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux543~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][0]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][0]~q\,
	datad => \comb_90|registradores[30][0]~q\,
	combout => \comb_90|Mux543~0_combout\);

-- Location: LCCOMB_X53_Y46_N20
\comb_90|Mux543~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux543~1_combout\ = (\comb_90|Mux543~0_combout\ & (((\comb_90|registradores[31][0]~q\) # (!\comb_88|Mux9~1_combout\)))) # (!\comb_90|Mux543~0_combout\ & (\comb_90|registradores[29][0]~q\ & ((\comb_88|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[29][0]~q\,
	datab => \comb_90|Mux543~0_combout\,
	datac => \comb_90|registradores[31][0]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux543~1_combout\);

-- Location: LCCOMB_X53_Y46_N8
\comb_90|Mux543~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux543~4_combout\ = (\comb_88|Mux5~1_combout\ & ((\comb_90|Mux543~1_combout\))) # (!\comb_88|Mux5~1_combout\ & (\comb_90|Mux543~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux543~3_combout\,
	datac => \comb_90|Mux543~1_combout\,
	datad => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux543~4_combout\);

-- Location: LCCOMB_X63_Y46_N16
\comb_90|Mux506~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux506~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0_bypass\(6))) # (!\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0_bypass\(0),
	datac => \comb_91|memoria_rtl_0_bypass\(6),
	datad => \comb_91|memoria_rtl_0|auto_generated|ram_block1a5\,
	combout => \comb_90|Mux506~0_combout\);

-- Location: LCCOMB_X58_Y48_N4
\comb_92|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux5~2_combout\ = (\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0)) # ((\comb_92|Add2~10_combout\)))) # (!\comb_89|controle_ula\(1) & (!\comb_89|controle_ula\(0) & ((\comb_92|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|Add2~10_combout\,
	datad => \comb_92|Add0~10_combout\,
	combout => \comb_92|Mux5~2_combout\);

-- Location: LCCOMB_X58_Y49_N10
\comb_92|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add3~10_combout\ = (\comb_90|Mux522~1_combout\ & (!\comb_92|Add3~9\)) # (!\comb_90|Mux522~1_combout\ & (\comb_92|Add3~9\ & VCC))
-- \comb_92|Add3~11\ = CARRY((\comb_90|Mux522~1_combout\ & !\comb_92|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux522~1_combout\,
	datad => VCC,
	cin => \comb_92|Add3~9\,
	combout => \comb_92|Add3~10_combout\,
	cout => \comb_92|Add3~11\);

-- Location: LCCOMB_X58_Y48_N14
\comb_92|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux5~3_combout\ = (\comb_92|Mux5~2_combout\ & (((\comb_92|Add3~10_combout\) # (!\comb_89|controle_ula\(0))))) # (!\comb_92|Mux5~2_combout\ & (\comb_92|Add1~10_combout\ & (\comb_89|controle_ula\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add1~10_combout\,
	datab => \comb_92|Mux5~2_combout\,
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|Add3~10_combout\,
	combout => \comb_92|Mux5~3_combout\);

-- Location: LCCOMB_X55_Y45_N4
\comb_92|ula~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula~23_combout\ = (!\comb_90|Mux522~1_combout\ & \comb_90|Mux570~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux522~1_combout\,
	datad => \comb_90|Mux570~0_combout\,
	combout => \comb_92|ula~23_combout\);

-- Location: LCCOMB_X58_Y48_N0
\comb_92|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux5~4_combout\ = (\comb_92|Mux5~0_combout\ & ((\comb_92|Mux5~1_combout\ & ((\comb_92|ula~23_combout\))) # (!\comb_92|Mux5~1_combout\ & (\comb_92|Mux5~3_combout\)))) # (!\comb_92|Mux5~0_combout\ & (((!\comb_92|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux5~0_combout\,
	datab => \comb_92|Mux5~3_combout\,
	datac => \comb_92|Mux5~1_combout\,
	datad => \comb_92|ula~23_combout\,
	combout => \comb_92|Mux5~4_combout\);

-- Location: LCCOMB_X58_Y48_N10
\comb_92|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux5~5_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_90|Mux570~0_combout\ & \comb_92|Mux5~4_combout\)) # (!\comb_90|Mux522~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (((\comb_92|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux570~0_combout\,
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_90|Mux522~1_combout\,
	datad => \comb_92|Mux5~4_combout\,
	combout => \comb_92|Mux5~5_combout\);

-- Location: LCCOMB_X58_Y48_N12
\comb_92|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux5~6_combout\ = (\comb_89|controle_ula\(3) & (((\comb_92|Mux2~0_combout\ & \comb_90|Mux522~1_combout\)))) # (!\comb_89|controle_ula\(3) & (\comb_92|Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux5~5_combout\,
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_90|Mux522~1_combout\,
	datad => \comb_89|controle_ula\(3),
	combout => \comb_92|Mux5~6_combout\);

-- Location: LCCOMB_X58_Y48_N6
\comb_92|ula[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(5) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|ula\(5)))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Mux5~6_combout\,
	datab => \comb_92|ula\(5),
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(5));

-- Location: LCCOMB_X58_Y48_N2
\comb_90|Mux506~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux506~1_combout\ = (\comb_89|controle_registradores\(1) & (\comb_90|Mux506~0_combout\)) # (!\comb_89|controle_registradores\(1) & ((\comb_92|ula\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_registradores\(1),
	datac => \comb_90|Mux506~0_combout\,
	datad => \comb_92|ula\(5),
	combout => \comb_90|Mux506~1_combout\);

-- Location: LCCOMB_X58_Y48_N8
\comb_90|Mux506~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux506~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[5]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux506~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datac => \comb_89|controle_registradores\(2),
	datad => \comb_90|Mux506~1_combout\,
	combout => \comb_90|Mux506~2_combout\);

-- Location: FF_X56_Y46_N25
\comb_90|registradores[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux506~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[29][2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[29][5]~q\);

-- Location: LCCOMB_X55_Y45_N20
\comb_90|Mux522~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux522~0_combout\ = (\comb_88|Mux13~1_combout\ & (((\comb_88|Mux10~1_combout\)) # (!\comb_90|registradores[2][5]~q\))) # (!\comb_88|Mux13~1_combout\ & (((!\comb_88|Mux10~1_combout\ & !\comb_90|registradores[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[2][5]~q\,
	datab => \comb_88|Mux13~1_combout\,
	datac => \comb_88|Mux10~1_combout\,
	datad => \comb_90|registradores[0][5]~q\,
	combout => \comb_90|Mux522~0_combout\);

-- Location: LCCOMB_X55_Y45_N30
\comb_90|Mux522~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux522~1_combout\ = (\comb_90|Mux522~0_combout\ & (((!\comb_90|registradores[31][5]~q\) # (!\comb_88|Mux10~1_combout\)))) # (!\comb_90|Mux522~0_combout\ & (!\comb_90|registradores[29][5]~q\ & (\comb_88|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[29][5]~q\,
	datab => \comb_90|Mux522~0_combout\,
	datac => \comb_88|Mux10~1_combout\,
	datad => \comb_90|registradores[31][5]~q\,
	combout => \comb_90|Mux522~1_combout\);

-- Location: LCCOMB_X55_Y48_N14
\comb_92|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux6~0_combout\ = (\comb_89|controle_ula\(1) & (\comb_89|controle_ula\(0))) # (!\comb_89|controle_ula\(1) & ((\comb_89|controle_ula\(0) & (\comb_92|Add1~12_combout\)) # (!\comb_89|controle_ula\(0) & ((\comb_92|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|Add1~12_combout\,
	datad => \comb_92|Add0~12_combout\,
	combout => \comb_92|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y46_N20
\comb_92|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux6~1_combout\ = (\comb_92|Mux6~0_combout\ & ((\comb_92|Add3~12_combout\) # ((!\comb_89|controle_ula\(1))))) # (!\comb_92|Mux6~0_combout\ & (((\comb_89|controle_ula\(1) & \comb_92|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Add3~12_combout\,
	datab => \comb_92|Mux6~0_combout\,
	datac => \comb_89|controle_ula\(1),
	datad => \comb_92|Add2~12_combout\,
	combout => \comb_92|Mux6~1_combout\);

-- Location: LCCOMB_X59_Y46_N22
\comb_92|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux6~2_combout\ = (\comb_92|Mux5~0_combout\ & ((\comb_92|Mux5~1_combout\ & (\comb_92|ula~22_combout\)) # (!\comb_92|Mux5~1_combout\ & ((\comb_92|Mux6~1_combout\))))) # (!\comb_92|Mux5~0_combout\ & (((!\comb_92|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|ula~22_combout\,
	datab => \comb_92|Mux5~0_combout\,
	datac => \comb_92|Mux6~1_combout\,
	datad => \comb_92|Mux5~1_combout\,
	combout => \comb_92|Mux6~2_combout\);

-- Location: LCCOMB_X59_Y46_N24
\comb_92|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux6~3_combout\ = (\comb_92|Mux2~0_combout\ & (((\comb_90|Mux569~0_combout\ & \comb_92|Mux6~2_combout\)) # (!\comb_90|Mux521~1_combout\))) # (!\comb_92|Mux2~0_combout\ & (((\comb_92|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux569~0_combout\,
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_92|Mux6~2_combout\,
	datad => \comb_90|Mux521~1_combout\,
	combout => \comb_92|Mux6~3_combout\);

-- Location: LCCOMB_X59_Y46_N2
\comb_92|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Mux6~4_combout\ = (\comb_89|controle_ula\(3) & (\comb_90|Mux521~1_combout\ & (\comb_92|Mux2~0_combout\))) # (!\comb_89|controle_ula\(3) & (((\comb_92|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux521~1_combout\,
	datab => \comb_92|Mux2~0_combout\,
	datac => \comb_89|controle_ula\(3),
	datad => \comb_92|Mux6~3_combout\,
	combout => \comb_92|Mux6~4_combout\);

-- Location: LCCOMB_X59_Y46_N14
\comb_92|ula[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|ula\(6) = (GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & (\comb_92|ula\(6))) # (!GLOBAL(\comb_92|Mux16~0clkctrl_outclk\) & ((\comb_92|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|ula\(6),
	datac => \comb_92|Mux6~4_combout\,
	datad => \comb_92|Mux16~0clkctrl_outclk\,
	combout => \comb_92|ula\(6));

-- Location: FF_X63_Y46_N15
\comb_91|memoria_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux537~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_91|memoria_rtl_0_bypass\(7));

-- Location: LCCOMB_X63_Y46_N14
\comb_90|Mux505~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux505~0_combout\ = (\comb_91|memoria_rtl_0_bypass\(0) & ((\comb_91|memoria_rtl_0_bypass\(7)))) # (!\comb_91|memoria_rtl_0_bypass\(0) & (\comb_91|memoria_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_91|memoria_rtl_0_bypass\(0),
	datab => \comb_91|memoria_rtl_0|auto_generated|ram_block1a6\,
	datac => \comb_91|memoria_rtl_0_bypass\(7),
	combout => \comb_90|Mux505~0_combout\);

-- Location: LCCOMB_X59_Y46_N6
\comb_90|Mux505~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux505~1_combout\ = (\comb_89|controle_registradores\(1) & ((\comb_90|Mux505~0_combout\))) # (!\comb_89|controle_registradores\(1) & (\comb_92|ula\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_registradores\(1),
	datac => \comb_92|ula\(6),
	datad => \comb_90|Mux505~0_combout\,
	combout => \comb_90|Mux505~1_combout\);

-- Location: LCCOMB_X59_Y46_N18
\comb_90|Mux505~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux505~2_combout\ = (\comb_89|controle_registradores\(2) & (\entrada[6]~input_o\)) # (!\comb_89|controle_registradores\(2) & ((\comb_90|Mux505~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_registradores\(2),
	datac => \entrada[6]~input_o\,
	datad => \comb_90|Mux505~1_combout\,
	combout => \comb_90|Mux505~2_combout\);

-- Location: FF_X56_Y48_N25
\comb_90|registradores[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[0][15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[0][6]~q\);

-- Location: FF_X55_Y46_N7
\comb_90|registradores[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][6]~q\);

-- Location: LCCOMB_X55_Y46_N6
\comb_90|Mux537~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux537~2_combout\ = (\comb_88|Mux8~1_combout\ & (((\comb_88|Mux9~1_combout\)))) # (!\comb_88|Mux8~1_combout\ & ((\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[1][6]~q\))) # (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|registradores[0][6]~q\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[1][6]~q\,
	datad => \comb_88|Mux9~1_combout\,
	combout => \comb_90|Mux537~2_combout\);

-- Location: FF_X59_Y46_N19
\comb_90|registradores[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][6]~q\);

-- Location: LCCOMB_X55_Y46_N28
\comb_90|Mux537~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux537~3_combout\ = (\comb_90|Mux537~2_combout\ & (((\comb_90|registradores[3][6]~q\)) # (!\comb_88|Mux8~1_combout\))) # (!\comb_90|Mux537~2_combout\ & (\comb_88|Mux8~1_combout\ & (\comb_90|registradores[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux537~2_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[2][6]~q\,
	datad => \comb_90|registradores[3][6]~q\,
	combout => \comb_90|Mux537~3_combout\);

-- Location: FF_X56_Y47_N31
\comb_90|registradores[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux505~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][6]~q\);

-- Location: LCCOMB_X56_Y47_N30
\comb_90|Mux537~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux537~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][6]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][6]~q\,
	datad => \comb_90|registradores[30][6]~q\,
	combout => \comb_90|Mux537~0_combout\);

-- Location: LCCOMB_X56_Y46_N30
\comb_90|Mux537~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux537~1_combout\ = (\comb_88|Mux9~1_combout\ & ((\comb_90|Mux537~0_combout\ & (\comb_90|registradores[31][6]~q\)) # (!\comb_90|Mux537~0_combout\ & ((\comb_90|registradores[29][6]~q\))))) # (!\comb_88|Mux9~1_combout\ & 
-- (((\comb_90|Mux537~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_90|registradores[31][6]~q\,
	datac => \comb_90|registradores[29][6]~q\,
	datad => \comb_90|Mux537~0_combout\,
	combout => \comb_90|Mux537~1_combout\);

-- Location: LCCOMB_X55_Y46_N14
\comb_90|Mux537~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux537~4_combout\ = (\comb_88|Mux5~1_combout\ & ((\comb_90|Mux537~1_combout\))) # (!\comb_88|Mux5~1_combout\ & (\comb_90|Mux537~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux537~3_combout\,
	datac => \comb_90|Mux537~1_combout\,
	datad => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux537~4_combout\);

-- Location: LCCOMB_X54_Y46_N26
\comb_92|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~3_combout\ = (\comb_90|Mux537~4_combout\ & (!\comb_90|Mux521~1_combout\ & (\comb_90|Mux536~4_combout\ $ (\comb_90|Mux520~1_combout\)))) # (!\comb_90|Mux537~4_combout\ & (\comb_90|Mux521~1_combout\ & (\comb_90|Mux536~4_combout\ $ 
-- (\comb_90|Mux520~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux537~4_combout\,
	datab => \comb_90|Mux536~4_combout\,
	datac => \comb_90|Mux520~1_combout\,
	datad => \comb_90|Mux521~1_combout\,
	combout => \comb_92|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y46_N8
\comb_92|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~2_combout\ = (\comb_90|Mux538~4_combout\ & (!\comb_90|Mux522~1_combout\ & (\comb_90|Mux539~4_combout\ $ (\comb_90|Mux523~1_combout\)))) # (!\comb_90|Mux538~4_combout\ & (\comb_90|Mux522~1_combout\ & (\comb_90|Mux539~4_combout\ $ 
-- (\comb_90|Mux523~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux538~4_combout\,
	datab => \comb_90|Mux539~4_combout\,
	datac => \comb_90|Mux522~1_combout\,
	datad => \comb_90|Mux523~1_combout\,
	combout => \comb_92|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y46_N26
\comb_92|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~0_combout\ = (\comb_90|Mux526~1_combout\ & (!\comb_90|Mux542~4_combout\ & (\comb_90|Mux543~4_combout\ $ (!\comb_90|Mux527~1_combout\)))) # (!\comb_90|Mux526~1_combout\ & (\comb_90|Mux542~4_combout\ & (\comb_90|Mux543~4_combout\ $ 
-- (!\comb_90|Mux527~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux526~1_combout\,
	datab => \comb_90|Mux542~4_combout\,
	datac => \comb_90|Mux543~4_combout\,
	datad => \comb_90|Mux527~1_combout\,
	combout => \comb_92|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y46_N2
\comb_92|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~1_combout\ = (\comb_90|Mux525~1_combout\ & (!\comb_90|Mux541~4_combout\ & (\comb_90|Mux540~4_combout\ $ (\comb_90|Mux524~1_combout\)))) # (!\comb_90|Mux525~1_combout\ & (\comb_90|Mux541~4_combout\ & (\comb_90|Mux540~4_combout\ $ 
-- (\comb_90|Mux524~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux525~1_combout\,
	datab => \comb_90|Mux540~4_combout\,
	datac => \comb_90|Mux541~4_combout\,
	datad => \comb_90|Mux524~1_combout\,
	combout => \comb_92|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y46_N4
\comb_92|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~4_combout\ = (\comb_92|Equal0~3_combout\ & (\comb_92|Equal0~2_combout\ & (\comb_92|Equal0~0_combout\ & \comb_92|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Equal0~3_combout\,
	datab => \comb_92|Equal0~2_combout\,
	datac => \comb_92|Equal0~0_combout\,
	datad => \comb_92|Equal0~1_combout\,
	combout => \comb_92|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y46_N12
\comb_92|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector12~0_combout\ = \comb_92|Decoder0~0_combout\ $ (((\comb_92|Equal0~4_combout\ & \comb_92|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|Decoder0~0_combout\,
	datac => \comb_92|Equal0~4_combout\,
	datad => \comb_92|Equal0~9_combout\,
	combout => \comb_92|Selector12~0_combout\);

-- Location: LCCOMB_X54_Y46_N22
\comb_92|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector5~0_combout\ = (\comb_92|Selector12~0_combout\ & ((\comb_93|Add0~0_combout\))) # (!\comb_92|Selector12~0_combout\ & (\comb_88|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|Selector12~0_combout\,
	datac => \comb_88|Mux31~1_combout\,
	datad => \comb_93|Add0~0_combout\,
	combout => \comb_92|Selector5~0_combout\);

-- Location: LCCOMB_X54_Y46_N16
\comb_92|branch[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|branch\(0) = (GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & ((\comb_92|Selector5~0_combout\))) # (!GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & (\comb_92|branch\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|branch\(0),
	datab => \comb_92|WideOr0~0clkctrl_outclk\,
	datad => \comb_92|Selector5~0_combout\,
	combout => \comb_92|branch\(0));

-- Location: LCCOMB_X55_Y47_N8
\comb_93|endereco_atual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~1_combout\ = (\reset~input_o\) # ((\comb_89|controle_pc\(1) & ((\comb_92|branch\(0)))) # (!\comb_89|controle_pc\(1) & (\comb_93|endereco_atual~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_pc\(1),
	datab => \reset~input_o\,
	datac => \comb_93|endereco_atual~0_combout\,
	datad => \comb_92|branch\(0),
	combout => \comb_93|endereco_atual~1_combout\);

-- Location: LCCOMB_X54_Y47_N16
\comb_92|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add0~32_combout\ = !\comb_92|Add0~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_92|Add0~31\,
	combout => \comb_92|Add0~32_combout\);

-- Location: LCCOMB_X54_Y47_N26
\comb_92|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector6~0_combout\ = (\comb_89|controle_ula\(1) & (((\comb_89|controle_ula\(0)) # (\comb_92|LessThan2~30_combout\)))) # (!\comb_89|controle_ula\(1) & (\comb_92|Add0~32_combout\ & (!\comb_89|controle_ula\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_ula\(1),
	datab => \comb_92|Add0~32_combout\,
	datac => \comb_89|controle_ula\(0),
	datad => \comb_92|LessThan2~30_combout\,
	combout => \comb_92|Selector6~0_combout\);

-- Location: LCCOMB_X58_Y47_N16
\comb_92|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Add1~32_combout\ = !\comb_92|Add1~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \comb_92|Add1~31\,
	combout => \comb_92|Add1~32_combout\);

-- Location: LCCOMB_X54_Y47_N20
\comb_92|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector6~1_combout\ = (\comb_89|controle_ula\(0) & ((\comb_92|Selector6~0_combout\ & (\comb_92|LessThan3~9_combout\)) # (!\comb_92|Selector6~0_combout\ & ((\comb_92|Add1~32_combout\))))) # (!\comb_89|controle_ula\(0) & 
-- (((\comb_92|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|LessThan3~9_combout\,
	datab => \comb_89|controle_ula\(0),
	datac => \comb_92|Selector6~0_combout\,
	datad => \comb_92|Add1~32_combout\,
	combout => \comb_92|Selector6~1_combout\);

-- Location: LCCOMB_X54_Y47_N24
\comb_92|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector6~2_combout\ = (!\comb_89|controle_ula\(3) & (!\comb_89|controle_ula\(2) & \comb_92|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|controle_ula\(3),
	datac => \comb_89|controle_ula\(2),
	datad => \comb_92|Selector6~1_combout\,
	combout => \comb_92|Selector6~2_combout\);

-- Location: LCCOMB_X54_Y47_N30
\comb_93|endereco_atual[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual[4]~2_combout\ = (\reset~input_o\) # ((\comb_89|controle_pc\(0) & (!\comb_89|controle_pc\(1))) # (!\comb_89|controle_pc\(0) & ((\comb_89|controle_pc\(1)) # (!\comb_92|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_pc\(0),
	datab => \reset~input_o\,
	datac => \comb_89|controle_pc\(1),
	datad => \comb_92|Selector6~2_combout\,
	combout => \comb_93|endereco_atual[4]~2_combout\);

-- Location: FF_X55_Y47_N9
\comb_93|endereco_atual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_93|endereco_atual~1_combout\,
	ena => \comb_93|endereco_atual[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_93|endereco_atual\(0));

-- Location: LCCOMB_X54_Y50_N22
\comb_88|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux30~0_combout\ = (\comb_93|endereco_atual\(3) & (!\comb_93|endereco_atual\(2) & (!\comb_93|endereco_atual\(0) & !\comb_93|endereco_atual\(1)))) # (!\comb_93|endereco_atual\(3) & (\comb_93|endereco_atual\(1) & ((!\comb_93|endereco_atual\(0)) # 
-- (!\comb_93|endereco_atual\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(3),
	datab => \comb_93|endereco_atual\(2),
	datac => \comb_93|endereco_atual\(0),
	datad => \comb_93|endereco_atual\(1),
	combout => \comb_88|Mux30~0_combout\);

-- Location: LCCOMB_X54_Y50_N14
\comb_88|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux30~1_combout\ = (\comb_88|Mux30~0_combout\ & (!\comb_93|endereco_atual\(4) & !\comb_93|endereco_atual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_88|Mux30~0_combout\,
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_93|endereco_atual\(5),
	combout => \comb_88|Mux30~1_combout\);

-- Location: LCCOMB_X56_Y50_N14
\comb_93|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|Add0~2_combout\ = (\comb_93|endereco_atual\(1) & (!\comb_93|Add0~1\)) # (!\comb_93|endereco_atual\(1) & ((\comb_93|Add0~1\) # (GND)))
-- \comb_93|Add0~3\ = CARRY((!\comb_93|Add0~1\) # (!\comb_93|endereco_atual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(1),
	datad => VCC,
	cin => \comb_93|Add0~1\,
	combout => \comb_93|Add0~2_combout\,
	cout => \comb_93|Add0~3\);

-- Location: LCCOMB_X54_Y46_N24
\comb_92|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector4~0_combout\ = (\comb_92|Selector12~0_combout\ & ((\comb_93|Add0~2_combout\))) # (!\comb_92|Selector12~0_combout\ & (\comb_88|Mux30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux30~1_combout\,
	datab => \comb_92|Selector12~0_combout\,
	datac => \comb_93|Add0~2_combout\,
	combout => \comb_92|Selector4~0_combout\);

-- Location: LCCOMB_X54_Y46_N0
\comb_92|branch[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|branch\(1) = (GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & (\comb_92|Selector4~0_combout\)) # (!GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & ((\comb_92|branch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Selector4~0_combout\,
	datab => \comb_92|branch\(1),
	datad => \comb_92|WideOr0~0clkctrl_outclk\,
	combout => \comb_92|branch\(1));

-- Location: LCCOMB_X55_Y47_N12
\comb_93|endereco_atual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~3_combout\ = (\comb_89|controle_pc\(0) & (\comb_88|Mux30~1_combout\)) # (!\comb_89|controle_pc\(0) & ((\comb_93|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux30~1_combout\,
	datac => \comb_93|Add0~2_combout\,
	datad => \comb_89|controle_pc\(0),
	combout => \comb_93|endereco_atual~3_combout\);

-- Location: LCCOMB_X55_Y47_N6
\comb_93|endereco_atual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~4_combout\ = (!\reset~input_o\ & ((\comb_89|controle_pc\(1) & (\comb_92|branch\(1))) # (!\comb_89|controle_pc\(1) & ((\comb_93|endereco_atual~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_pc\(1),
	datab => \reset~input_o\,
	datac => \comb_92|branch\(1),
	datad => \comb_93|endereco_atual~3_combout\,
	combout => \comb_93|endereco_atual~4_combout\);

-- Location: FF_X55_Y47_N7
\comb_93|endereco_atual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~q\,
	d => \comb_93|endereco_atual~4_combout\,
	ena => \comb_93|endereco_atual[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_93|endereco_atual\(1));

-- Location: LCCOMB_X54_Y50_N18
\comb_88|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux29~0_combout\ = (!\comb_93|endereco_atual\(1) & (!\comb_93|endereco_atual\(2) & (\comb_93|endereco_atual\(0) $ (\comb_93|endereco_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(1),
	datab => \comb_93|endereco_atual\(0),
	datac => \comb_93|endereco_atual\(3),
	datad => \comb_93|endereco_atual\(2),
	combout => \comb_88|Mux29~0_combout\);

-- Location: LCCOMB_X54_Y50_N4
\comb_88|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux29~1_combout\ = (!\comb_93|endereco_atual\(4) & (\comb_88|Mux29~0_combout\ & !\comb_93|endereco_atual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(4),
	datac => \comb_88|Mux29~0_combout\,
	datad => \comb_93|endereco_atual\(5),
	combout => \comb_88|Mux29~1_combout\);

-- Location: LCCOMB_X56_Y50_N16
\comb_93|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|Add0~4_combout\ = (\comb_93|endereco_atual\(2) & (\comb_93|Add0~3\ $ (GND))) # (!\comb_93|endereco_atual\(2) & (!\comb_93|Add0~3\ & VCC))
-- \comb_93|Add0~5\ = CARRY((\comb_93|endereco_atual\(2) & !\comb_93|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(2),
	datad => VCC,
	cin => \comb_93|Add0~3\,
	combout => \comb_93|Add0~4_combout\,
	cout => \comb_93|Add0~5\);

-- Location: LCCOMB_X56_Y47_N6
\comb_93|endereco_atual~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~5_combout\ = (\comb_89|controle_pc\(0) & (\comb_88|Mux29~1_combout\)) # (!\comb_89|controle_pc\(0) & ((\comb_93|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux29~1_combout\,
	datab => \comb_89|controle_pc\(0),
	datad => \comb_93|Add0~4_combout\,
	combout => \comb_93|endereco_atual~5_combout\);

-- Location: LCCOMB_X54_Y46_N2
\comb_92|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector3~0_combout\ = (\comb_92|Selector12~0_combout\ & ((\comb_93|Add0~4_combout\))) # (!\comb_92|Selector12~0_combout\ & (\comb_88|Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux29~1_combout\,
	datab => \comb_92|Selector12~0_combout\,
	datad => \comb_93|Add0~4_combout\,
	combout => \comb_92|Selector3~0_combout\);

-- Location: LCCOMB_X54_Y46_N10
\comb_92|branch[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|branch\(2) = (GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & ((\comb_92|Selector3~0_combout\))) # (!GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & (\comb_92|branch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|branch\(2),
	datab => \comb_92|Selector3~0_combout\,
	datad => \comb_92|WideOr0~0clkctrl_outclk\,
	combout => \comb_92|branch\(2));

-- Location: LCCOMB_X55_Y47_N22
\comb_93|endereco_atual~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~6_combout\ = (!\reset~input_o\ & ((\comb_89|controle_pc\(1) & ((\comb_92|branch\(2)))) # (!\comb_89|controle_pc\(1) & (\comb_93|endereco_atual~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual~5_combout\,
	datab => \reset~input_o\,
	datac => \comb_92|branch\(2),
	datad => \comb_89|controle_pc\(1),
	combout => \comb_93|endereco_atual~6_combout\);

-- Location: FF_X55_Y47_N23
\comb_93|endereco_atual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~q\,
	d => \comb_93|endereco_atual~6_combout\,
	ena => \comb_93|endereco_atual[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_93|endereco_atual\(2));

-- Location: LCCOMB_X55_Y47_N4
\comb_88|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux9~0_combout\ = (\comb_93|endereco_atual\(1) & (((!\comb_93|endereco_atual\(3))))) # (!\comb_93|endereco_atual\(1) & ((\comb_93|endereco_atual\(0) & ((!\comb_93|endereco_atual\(3)))) # (!\comb_93|endereco_atual\(0) & 
-- (!\comb_93|endereco_atual\(2) & \comb_93|endereco_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(2),
	datab => \comb_93|endereco_atual\(1),
	datac => \comb_93|endereco_atual\(0),
	datad => \comb_93|endereco_atual\(3),
	combout => \comb_88|Mux9~0_combout\);

-- Location: LCCOMB_X55_Y47_N14
\comb_88|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux9~1_combout\ = (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & \comb_88|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(5),
	datab => \comb_93|endereco_atual\(4),
	datac => \comb_88|Mux9~0_combout\,
	combout => \comb_88|Mux9~1_combout\);

-- Location: FF_X56_Y47_N27
\comb_90|registradores[28][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[28][14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[28][8]~q\);

-- Location: LCCOMB_X56_Y47_N26
\comb_90|Mux535~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux535~0_combout\ = (\comb_88|Mux9~1_combout\ & (\comb_88|Mux8~1_combout\)) # (!\comb_88|Mux9~1_combout\ & ((\comb_88|Mux8~1_combout\ & ((\comb_90|registradores[30][8]~q\))) # (!\comb_88|Mux8~1_combout\ & (\comb_90|registradores[28][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_88|Mux8~1_combout\,
	datac => \comb_90|registradores[28][8]~q\,
	datad => \comb_90|registradores[30][8]~q\,
	combout => \comb_90|Mux535~0_combout\);

-- Location: LCCOMB_X53_Y48_N4
\comb_90|Mux535~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux535~1_combout\ = (\comb_90|Mux535~0_combout\ & (((\comb_90|registradores[31][8]~q\)) # (!\comb_88|Mux9~1_combout\))) # (!\comb_90|Mux535~0_combout\ & (\comb_88|Mux9~1_combout\ & ((\comb_90|registradores[29][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux535~0_combout\,
	datab => \comb_88|Mux9~1_combout\,
	datac => \comb_90|registradores[31][8]~q\,
	datad => \comb_90|registradores[29][8]~q\,
	combout => \comb_90|Mux535~1_combout\);

-- Location: FF_X56_Y48_N1
\comb_90|registradores[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	asdata => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	sload => VCC,
	ena => \comb_90|registradores[1][14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[1][8]~q\);

-- Location: LCCOMB_X56_Y48_N0
\comb_90|Mux535~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux535~2_combout\ = (\comb_88|Mux9~1_combout\ & (((\comb_90|registradores[1][8]~q\) # (\comb_88|Mux8~1_combout\)))) # (!\comb_88|Mux9~1_combout\ & (\comb_90|registradores[0][8]~q\ & ((!\comb_88|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux9~1_combout\,
	datab => \comb_90|registradores[0][8]~q\,
	datac => \comb_90|registradores[1][8]~q\,
	datad => \comb_88|Mux8~1_combout\,
	combout => \comb_90|Mux535~2_combout\);

-- Location: FF_X59_Y47_N19
\comb_90|registradores[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~clkctrl_outclk\,
	d => \comb_90|Mux503~2_combout\,
	sclr => \comb_90|registradores[0][6]~7_combout\,
	ena => \comb_90|registradores[3][3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_90|registradores[3][8]~q\);

-- Location: LCCOMB_X53_Y48_N2
\comb_90|Mux535~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux535~3_combout\ = (\comb_88|Mux8~1_combout\ & ((\comb_90|Mux535~2_combout\ & ((\comb_90|registradores[3][8]~q\))) # (!\comb_90|Mux535~2_combout\ & (\comb_90|registradores[2][8]~q\)))) # (!\comb_88|Mux8~1_combout\ & 
-- (((\comb_90|Mux535~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux8~1_combout\,
	datab => \comb_90|registradores[2][8]~q\,
	datac => \comb_90|Mux535~2_combout\,
	datad => \comb_90|registradores[3][8]~q\,
	combout => \comb_90|Mux535~3_combout\);

-- Location: LCCOMB_X53_Y48_N12
\comb_90|Mux535~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux535~4_combout\ = (\comb_88|Mux5~1_combout\ & (\comb_90|Mux535~1_combout\)) # (!\comb_88|Mux5~1_combout\ & ((\comb_90|Mux535~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux535~1_combout\,
	datab => \comb_90|Mux535~3_combout\,
	datac => \comb_88|Mux5~1_combout\,
	combout => \comb_90|Mux535~4_combout\);

-- Location: LCCOMB_X53_Y48_N30
\comb_92|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~5_combout\ = (\comb_90|Mux535~4_combout\ & (!\comb_90|Mux519~1_combout\ & (\comb_90|Mux534~4_combout\ $ (\comb_90|Mux518~1_combout\)))) # (!\comb_90|Mux535~4_combout\ & (\comb_90|Mux519~1_combout\ & (\comb_90|Mux534~4_combout\ $ 
-- (\comb_90|Mux518~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux535~4_combout\,
	datab => \comb_90|Mux534~4_combout\,
	datac => \comb_90|Mux518~1_combout\,
	datad => \comb_90|Mux519~1_combout\,
	combout => \comb_92|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y46_N26
\comb_92|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~8_combout\ = (\comb_90|Mux528~4_combout\ & (!\comb_90|Mux512~1_combout\ & (\comb_90|Mux529~4_combout\ $ (\comb_90|Mux513~1_combout\)))) # (!\comb_90|Mux528~4_combout\ & (\comb_90|Mux512~1_combout\ & (\comb_90|Mux529~4_combout\ $ 
-- (\comb_90|Mux513~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux528~4_combout\,
	datab => \comb_90|Mux529~4_combout\,
	datac => \comb_90|Mux512~1_combout\,
	datad => \comb_90|Mux513~1_combout\,
	combout => \comb_92|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y45_N22
\comb_92|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~7_combout\ = (\comb_90|Mux531~4_combout\ & (!\comb_90|Mux515~1_combout\ & (\comb_90|Mux530~4_combout\ $ (\comb_90|Mux514~1_combout\)))) # (!\comb_90|Mux531~4_combout\ & (\comb_90|Mux515~1_combout\ & (\comb_90|Mux530~4_combout\ $ 
-- (\comb_90|Mux514~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux531~4_combout\,
	datab => \comb_90|Mux515~1_combout\,
	datac => \comb_90|Mux530~4_combout\,
	datad => \comb_90|Mux514~1_combout\,
	combout => \comb_92|Equal0~7_combout\);

-- Location: LCCOMB_X54_Y46_N8
\comb_92|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~6_combout\ = (\comb_90|Mux532~4_combout\ & (!\comb_90|Mux516~1_combout\ & (\comb_90|Mux533~4_combout\ $ (\comb_90|Mux517~1_combout\)))) # (!\comb_90|Mux532~4_combout\ & (\comb_90|Mux516~1_combout\ & (\comb_90|Mux533~4_combout\ $ 
-- (\comb_90|Mux517~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux532~4_combout\,
	datab => \comb_90|Mux516~1_combout\,
	datac => \comb_90|Mux533~4_combout\,
	datad => \comb_90|Mux517~1_combout\,
	combout => \comb_92|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y46_N18
\comb_92|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Equal0~9_combout\ = (\comb_92|Equal0~5_combout\ & (\comb_92|Equal0~8_combout\ & (\comb_92|Equal0~7_combout\ & \comb_92|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Equal0~5_combout\,
	datab => \comb_92|Equal0~8_combout\,
	datac => \comb_92|Equal0~7_combout\,
	datad => \comb_92|Equal0~6_combout\,
	combout => \comb_92|Equal0~9_combout\);

-- Location: LCCOMB_X54_Y46_N14
\comb_92|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector0~0_combout\ = (\comb_93|Add0~10_combout\ & (\comb_92|Decoder0~0_combout\ $ (((\comb_92|Equal0~9_combout\ & \comb_92|Equal0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Equal0~9_combout\,
	datab => \comb_92|Equal0~4_combout\,
	datac => \comb_92|Decoder0~0_combout\,
	datad => \comb_93|Add0~10_combout\,
	combout => \comb_92|Selector0~0_combout\);

-- Location: LCCOMB_X54_Y46_N6
\comb_92|branch[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|branch\(5) = (GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & ((\comb_92|Selector0~0_combout\))) # (!GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & (\comb_92|branch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|branch\(5),
	datac => \comb_92|Selector0~0_combout\,
	datad => \comb_92|WideOr0~0clkctrl_outclk\,
	combout => \comb_92|branch\(5));

-- Location: LCCOMB_X54_Y47_N22
\comb_93|endereco_atual~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~11_combout\ = (\comb_89|controle_pc\(1) & ((\comb_92|branch\(5)))) # (!\comb_89|controle_pc\(1) & (\comb_93|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|Add0~10_combout\,
	datac => \comb_89|controle_pc\(1),
	datad => \comb_92|branch\(5),
	combout => \comb_93|endereco_atual~11_combout\);

-- Location: LCCOMB_X55_Y47_N20
\comb_93|endereco_atual[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual[4]~10_combout\ = (\reset~input_o\) # ((\comb_89|controle_pc\(0) & !\comb_89|controle_pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \comb_89|controle_pc\(0),
	datad => \comb_89|controle_pc\(1),
	combout => \comb_93|endereco_atual[4]~10_combout\);

-- Location: FF_X54_Y47_N23
\comb_93|endereco_atual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~q\,
	d => \comb_93|endereco_atual~11_combout\,
	sclr => \comb_93|endereco_atual[4]~10_combout\,
	ena => \comb_93|endereco_atual[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_93|endereco_atual\(5));

-- Location: LCCOMB_X54_Y50_N26
\comb_88|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux3~1_combout\ = (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & \comb_88|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(5),
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_88|Mux3~0_combout\,
	combout => \comb_88|Mux3~1_combout\);

-- Location: LCCOMB_X55_Y51_N8
\comb_89|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr5~0_combout\ = (\comb_88|Mux4~1_combout\ & ((\comb_88|Mux3~1_combout\ & ((!\comb_88|Mux1~1_combout\) # (!\comb_88|Mux2~1_combout\))) # (!\comb_88|Mux3~1_combout\ & ((\comb_88|Mux1~1_combout\))))) # (!\comb_88|Mux4~1_combout\ & 
-- ((\comb_88|Mux2~1_combout\) # ((\comb_88|Mux3~1_combout\ & \comb_88|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux3~1_combout\,
	datab => \comb_88|Mux2~1_combout\,
	datac => \comb_88|Mux4~1_combout\,
	datad => \comb_88|Mux1~1_combout\,
	combout => \comb_89|WideOr5~0_combout\);

-- Location: LCCOMB_X55_Y51_N14
\comb_89|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr5~1_combout\ = (\comb_89|WideOr5~0_combout\ & \comb_88|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_89|WideOr5~0_combout\,
	datad => \comb_88|Mux0~1_combout\,
	combout => \comb_89|WideOr5~1_combout\);

-- Location: CLKCTRL_G12
\comb_89|WideOr5~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_89|WideOr5~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_89|WideOr5~1clkctrl_outclk\);

-- Location: LCCOMB_X55_Y51_N22
\comb_89|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr1~0_combout\ = (\comb_88|Mux1~1_combout\ & (!\comb_88|Mux2~1_combout\ & (\comb_88|Mux4~1_combout\ $ (\comb_88|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux4~1_combout\,
	datab => \comb_88|Mux3~1_combout\,
	datac => \comb_88|Mux1~1_combout\,
	datad => \comb_88|Mux2~1_combout\,
	combout => \comb_89|WideOr1~0_combout\);

-- Location: LCCOMB_X55_Y51_N12
\comb_89|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|WideOr1~1_combout\ = (\comb_88|Mux0~1_combout\ & (\comb_89|WideOr2~2_combout\)) # (!\comb_88|Mux0~1_combout\ & ((\comb_89|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|WideOr2~2_combout\,
	datab => \comb_88|Mux0~1_combout\,
	datad => \comb_89|WideOr1~0_combout\,
	combout => \comb_89|WideOr1~1_combout\);

-- Location: LCCOMB_X55_Y51_N0
\comb_89|controle_pc[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_pc\(1) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (\comb_89|controle_pc\(1))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|WideOr5~1clkctrl_outclk\,
	datab => \comb_89|controle_pc\(1),
	datac => \comb_89|WideOr1~1_combout\,
	combout => \comb_89|controle_pc\(1));

-- Location: LCCOMB_X56_Y50_N18
\comb_93|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|Add0~6_combout\ = (\comb_93|endereco_atual\(3) & (!\comb_93|Add0~5\)) # (!\comb_93|endereco_atual\(3) & ((\comb_93|Add0~5\) # (GND)))
-- \comb_93|Add0~7\ = CARRY((!\comb_93|Add0~5\) # (!\comb_93|endereco_atual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(3),
	datad => VCC,
	cin => \comb_93|Add0~5\,
	combout => \comb_93|Add0~6_combout\,
	cout => \comb_93|Add0~7\);

-- Location: LCCOMB_X54_Y46_N20
\comb_92|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector2~0_combout\ = (\comb_92|Selector12~0_combout\ & ((\comb_93|Add0~6_combout\))) # (!\comb_92|Selector12~0_combout\ & (\comb_88|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux28~0_combout\,
	datab => \comb_92|Selector12~0_combout\,
	datad => \comb_93|Add0~6_combout\,
	combout => \comb_92|Selector2~0_combout\);

-- Location: LCCOMB_X54_Y46_N28
\comb_92|branch[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|branch\(3) = (GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & (\comb_92|Selector2~0_combout\)) # (!GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & ((\comb_92|branch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Selector2~0_combout\,
	datab => \comb_92|branch\(3),
	datad => \comb_92|WideOr0~0clkctrl_outclk\,
	combout => \comb_92|branch\(3));

-- Location: LCCOMB_X56_Y50_N0
\comb_93|endereco_atual~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~7_combout\ = (\comb_89|controle_pc\(0) & (\comb_88|Mux28~0_combout\)) # (!\comb_89|controle_pc\(0) & ((\comb_93|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux28~0_combout\,
	datab => \comb_93|Add0~6_combout\,
	datad => \comb_89|controle_pc\(0),
	combout => \comb_93|endereco_atual~7_combout\);

-- Location: LCCOMB_X54_Y47_N28
\comb_93|endereco_atual~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~8_combout\ = (!\reset~input_o\ & ((\comb_89|controle_pc\(1) & (\comb_92|branch\(3))) # (!\comb_89|controle_pc\(1) & ((\comb_93|endereco_atual~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \comb_89|controle_pc\(1),
	datac => \comb_92|branch\(3),
	datad => \comb_93|endereco_atual~7_combout\,
	combout => \comb_93|endereco_atual~8_combout\);

-- Location: FF_X54_Y47_N29
\comb_93|endereco_atual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~q\,
	d => \comb_93|endereco_atual~8_combout\,
	ena => \comb_93|endereco_atual[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_93|endereco_atual\(3));

-- Location: LCCOMB_X50_Y46_N24
\comb_92|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|Selector1~0_combout\ = (\comb_93|Add0~8_combout\ & (\comb_92|Decoder0~0_combout\ $ (((\comb_92|Equal0~4_combout\ & \comb_92|Equal0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Decoder0~0_combout\,
	datab => \comb_93|Add0~8_combout\,
	datac => \comb_92|Equal0~4_combout\,
	datad => \comb_92|Equal0~9_combout\,
	combout => \comb_92|Selector1~0_combout\);

-- Location: LCCOMB_X50_Y46_N18
\comb_92|branch[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|branch\(4) = (GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & (\comb_92|Selector1~0_combout\)) # (!GLOBAL(\comb_92|WideOr0~0clkctrl_outclk\) & ((\comb_92|branch\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Selector1~0_combout\,
	datab => \comb_92|branch\(4),
	datad => \comb_92|WideOr0~0clkctrl_outclk\,
	combout => \comb_92|branch\(4));

-- Location: LCCOMB_X54_Y47_N18
\comb_93|endereco_atual~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_93|endereco_atual~9_combout\ = (\comb_89|controle_pc\(1) & ((\comb_92|branch\(4)))) # (!\comb_89|controle_pc\(1) & (\comb_93|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|Add0~8_combout\,
	datac => \comb_89|controle_pc\(1),
	datad => \comb_92|branch\(4),
	combout => \comb_93|endereco_atual~9_combout\);

-- Location: FF_X54_Y47_N19
\comb_93|endereco_atual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_96|DB_out~q\,
	d => \comb_93|endereco_atual~9_combout\,
	sclr => \comb_93|endereco_atual[4]~10_combout\,
	ena => \comb_93|endereco_atual[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_93|endereco_atual\(4));

-- Location: LCCOMB_X55_Y47_N16
\comb_88|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux13~0_combout\ = (!\comb_93|endereco_atual\(1) & (\comb_93|endereco_atual\(0) & (\comb_93|endereco_atual\(2) $ (\comb_93|endereco_atual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_93|endereco_atual\(1),
	datab => \comb_93|endereco_atual\(2),
	datac => \comb_93|endereco_atual\(0),
	datad => \comb_93|endereco_atual\(3),
	combout => \comb_88|Mux13~0_combout\);

-- Location: LCCOMB_X56_Y48_N8
\comb_88|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_88|Mux13~1_combout\ = (!\comb_93|endereco_atual\(4) & (!\comb_93|endereco_atual\(5) & \comb_88|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_93|endereco_atual\(4),
	datac => \comb_93|endereco_atual\(5),
	datad => \comb_88|Mux13~0_combout\,
	combout => \comb_88|Mux13~1_combout\);

-- Location: LCCOMB_X57_Y47_N20
\comb_90|Mux525~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux525~0_combout\ = (\comb_88|Mux10~1_combout\ & ((\comb_88|Mux13~1_combout\) # ((!\comb_90|registradores[29][2]~q\)))) # (!\comb_88|Mux10~1_combout\ & (!\comb_88|Mux13~1_combout\ & (!\comb_90|registradores[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux10~1_combout\,
	datab => \comb_88|Mux13~1_combout\,
	datac => \comb_90|registradores[0][2]~q\,
	datad => \comb_90|registradores[29][2]~q\,
	combout => \comb_90|Mux525~0_combout\);

-- Location: LCCOMB_X57_Y47_N16
\comb_90|Mux525~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_90|Mux525~1_combout\ = (\comb_88|Mux13~1_combout\ & ((\comb_90|Mux525~0_combout\ & ((!\comb_90|registradores[31][2]~q\))) # (!\comb_90|Mux525~0_combout\ & (!\comb_90|registradores[2][2]~q\)))) # (!\comb_88|Mux13~1_combout\ & 
-- (\comb_90|Mux525~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux13~1_combout\,
	datab => \comb_90|Mux525~0_combout\,
	datac => \comb_90|registradores[2][2]~q\,
	datad => \comb_90|registradores[31][2]~q\,
	combout => \comb_90|Mux525~1_combout\);

-- Location: LCCOMB_X61_Y42_N10
\comb_94|comb_19|unidade~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~1_combout\ = (\comb_90|Mux515~1_combout\ & ((\comb_90|Mux513~1_combout\) # (\comb_90|Mux514~1_combout\ $ (\comb_90|Mux512~1_combout\)))) # (!\comb_90|Mux515~1_combout\ & (((\comb_90|Mux512~1_combout\) # 
-- (!\comb_90|Mux513~1_combout\)) # (!\comb_90|Mux514~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux515~1_combout\,
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_94|comb_19|unidade~1_combout\);

-- Location: LCCOMB_X61_Y42_N16
\comb_94|comb_19|unidade~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~0_combout\ = (\comb_90|Mux514~1_combout\ & (!\comb_90|Mux512~1_combout\ & ((\comb_90|Mux515~1_combout\) # (!\comb_90|Mux513~1_combout\)))) # (!\comb_90|Mux514~1_combout\ & (\comb_90|Mux512~1_combout\ & 
-- ((\comb_90|Mux513~1_combout\) # (!\comb_90|Mux515~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux515~1_combout\,
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_94|comb_19|unidade~0_combout\);

-- Location: LCCOMB_X61_Y42_N28
\comb_94|comb_19|unidade~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~2_combout\ = (\comb_90|Mux515~1_combout\ & ((\comb_90|Mux514~1_combout\ & (\comb_90|Mux513~1_combout\ & !\comb_90|Mux512~1_combout\)) # (!\comb_90|Mux514~1_combout\ & (!\comb_90|Mux513~1_combout\ & \comb_90|Mux512~1_combout\)))) # 
-- (!\comb_90|Mux515~1_combout\ & (\comb_90|Mux513~1_combout\ $ (((\comb_90|Mux514~1_combout\ & !\comb_90|Mux512~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux515~1_combout\,
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_94|comb_19|unidade~2_combout\);

-- Location: LCCOMB_X61_Y42_N18
\comb_94|comb_19|unidade~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~5_combout\ = (\comb_94|comb_19|unidade~1_combout\ & ((\comb_94|comb_19|unidade~0_combout\ & (\comb_90|Mux516~1_combout\ & \comb_94|comb_19|unidade~2_combout\)) # (!\comb_94|comb_19|unidade~0_combout\ & 
-- (!\comb_90|Mux516~1_combout\)))) # (!\comb_94|comb_19|unidade~1_combout\ & (((\comb_90|Mux516~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~1_combout\,
	datab => \comb_94|comb_19|unidade~0_combout\,
	datac => \comb_90|Mux516~1_combout\,
	datad => \comb_94|comb_19|unidade~2_combout\,
	combout => \comb_94|comb_19|unidade~5_combout\);

-- Location: LCCOMB_X61_Y42_N24
\comb_94|comb_19|unidade~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~4_combout\ = (\comb_94|comb_19|unidade~1_combout\ & (\comb_94|comb_19|unidade~2_combout\ & ((!\comb_90|Mux516~1_combout\) # (!\comb_94|comb_19|unidade~0_combout\)))) # (!\comb_94|comb_19|unidade~1_combout\ & 
-- ((\comb_90|Mux516~1_combout\ $ (\comb_94|comb_19|unidade~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~1_combout\,
	datab => \comb_94|comb_19|unidade~0_combout\,
	datac => \comb_90|Mux516~1_combout\,
	datad => \comb_94|comb_19|unidade~2_combout\,
	combout => \comb_94|comb_19|unidade~4_combout\);

-- Location: LCCOMB_X61_Y42_N22
\comb_94|comb_19|unidade~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~3_combout\ = (\comb_94|comb_19|unidade~0_combout\ & (((\comb_90|Mux516~1_combout\ & !\comb_94|comb_19|unidade~2_combout\)))) # (!\comb_94|comb_19|unidade~0_combout\ & (!\comb_94|comb_19|unidade~1_combout\ & 
-- ((\comb_94|comb_19|unidade~2_combout\) # (!\comb_90|Mux516~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~1_combout\,
	datab => \comb_94|comb_19|unidade~0_combout\,
	datac => \comb_90|Mux516~1_combout\,
	datad => \comb_94|comb_19|unidade~2_combout\,
	combout => \comb_94|comb_19|unidade~3_combout\);

-- Location: LCCOMB_X60_Y42_N10
\comb_94|comb_19|unidade~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~7_combout\ = (\comb_94|comb_19|unidade~5_combout\ & (((!\comb_94|comb_19|unidade~4_combout\ & !\comb_94|comb_19|unidade~3_combout\)) # (!\comb_90|Mux517~1_combout\))) # (!\comb_94|comb_19|unidade~5_combout\ & 
-- (((\comb_90|Mux517~1_combout\ & \comb_94|comb_19|unidade~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~5_combout\,
	datab => \comb_94|comb_19|unidade~4_combout\,
	datac => \comb_90|Mux517~1_combout\,
	datad => \comb_94|comb_19|unidade~3_combout\,
	combout => \comb_94|comb_19|unidade~7_combout\);

-- Location: LCCOMB_X60_Y42_N4
\comb_94|comb_19|unidade~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~8_combout\ = (\comb_94|comb_19|unidade~4_combout\ & (\comb_90|Mux517~1_combout\ & ((\comb_94|comb_19|unidade~5_combout\) # (\comb_94|comb_19|unidade~3_combout\)))) # (!\comb_94|comb_19|unidade~4_combout\ & 
-- ((\comb_90|Mux517~1_combout\ $ (!\comb_94|comb_19|unidade~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~5_combout\,
	datab => \comb_94|comb_19|unidade~4_combout\,
	datac => \comb_90|Mux517~1_combout\,
	datad => \comb_94|comb_19|unidade~3_combout\,
	combout => \comb_94|comb_19|unidade~8_combout\);

-- Location: LCCOMB_X60_Y42_N24
\comb_94|comb_19|unidade~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~6_combout\ = (\comb_94|comb_19|unidade~4_combout\ & (!\comb_94|comb_19|unidade~5_combout\ & (\comb_90|Mux517~1_combout\))) # (!\comb_94|comb_19|unidade~4_combout\ & (\comb_94|comb_19|unidade~3_combout\ & 
-- ((\comb_94|comb_19|unidade~5_combout\) # (!\comb_90|Mux517~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~5_combout\,
	datab => \comb_94|comb_19|unidade~4_combout\,
	datac => \comb_90|Mux517~1_combout\,
	datad => \comb_94|comb_19|unidade~3_combout\,
	combout => \comb_94|comb_19|unidade~6_combout\);

-- Location: LCCOMB_X60_Y42_N22
\comb_94|comb_19|unidade~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~9_combout\ = (\comb_94|comb_19|unidade~7_combout\ & (\comb_90|Mux518~1_combout\ & (!\comb_94|comb_19|unidade~8_combout\))) # (!\comb_94|comb_19|unidade~7_combout\ & (\comb_94|comb_19|unidade~6_combout\ & 
-- ((\comb_94|comb_19|unidade~8_combout\) # (!\comb_90|Mux518~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~7_combout\,
	datab => \comb_90|Mux518~1_combout\,
	datac => \comb_94|comb_19|unidade~8_combout\,
	datad => \comb_94|comb_19|unidade~6_combout\,
	combout => \comb_94|comb_19|unidade~9_combout\);

-- Location: LCCOMB_X60_Y42_N26
\comb_94|comb_19|unidade~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~11_combout\ = (\comb_94|comb_19|unidade~7_combout\ & (\comb_90|Mux518~1_combout\ & ((\comb_94|comb_19|unidade~8_combout\) # (\comb_94|comb_19|unidade~6_combout\)))) # (!\comb_94|comb_19|unidade~7_combout\ & 
-- (\comb_90|Mux518~1_combout\ $ (((!\comb_94|comb_19|unidade~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~7_combout\,
	datab => \comb_90|Mux518~1_combout\,
	datac => \comb_94|comb_19|unidade~8_combout\,
	datad => \comb_94|comb_19|unidade~6_combout\,
	combout => \comb_94|comb_19|unidade~11_combout\);

-- Location: LCCOMB_X60_Y42_N16
\comb_94|comb_19|unidade~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~10_combout\ = (\comb_90|Mux518~1_combout\ & ((\comb_94|comb_19|unidade~8_combout\ & (!\comb_94|comb_19|unidade~7_combout\ & !\comb_94|comb_19|unidade~6_combout\)) # (!\comb_94|comb_19|unidade~8_combout\ & 
-- ((\comb_94|comb_19|unidade~6_combout\))))) # (!\comb_90|Mux518~1_combout\ & (((\comb_94|comb_19|unidade~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~7_combout\,
	datab => \comb_90|Mux518~1_combout\,
	datac => \comb_94|comb_19|unidade~8_combout\,
	datad => \comb_94|comb_19|unidade~6_combout\,
	combout => \comb_94|comb_19|unidade~10_combout\);

-- Location: LCCOMB_X60_Y42_N0
\comb_94|comb_19|unidade~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~14_combout\ = (\comb_94|comb_19|unidade~9_combout\ & (\comb_90|Mux519~1_combout\)) # (!\comb_94|comb_19|unidade~9_combout\ & ((\comb_90|Mux519~1_combout\ & (\comb_94|comb_19|unidade~11_combout\ & 
-- \comb_94|comb_19|unidade~10_combout\)) # (!\comb_90|Mux519~1_combout\ & ((!\comb_94|comb_19|unidade~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~9_combout\,
	datab => \comb_90|Mux519~1_combout\,
	datac => \comb_94|comb_19|unidade~11_combout\,
	datad => \comb_94|comb_19|unidade~10_combout\,
	combout => \comb_94|comb_19|unidade~14_combout\);

-- Location: LCCOMB_X60_Y42_N30
\comb_94|comb_19|unidade~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~13_combout\ = (\comb_94|comb_19|unidade~9_combout\ & (\comb_90|Mux519~1_combout\ $ ((\comb_94|comb_19|unidade~11_combout\)))) # (!\comb_94|comb_19|unidade~9_combout\ & (\comb_94|comb_19|unidade~11_combout\ & 
-- ((!\comb_94|comb_19|unidade~10_combout\) # (!\comb_90|Mux519~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~9_combout\,
	datab => \comb_90|Mux519~1_combout\,
	datac => \comb_94|comb_19|unidade~11_combout\,
	datad => \comb_94|comb_19|unidade~10_combout\,
	combout => \comb_94|comb_19|unidade~13_combout\);

-- Location: LCCOMB_X60_Y42_N28
\comb_94|comb_19|unidade~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~12_combout\ = (\comb_94|comb_19|unidade~10_combout\ & (((\comb_90|Mux519~1_combout\ & !\comb_94|comb_19|unidade~11_combout\)))) # (!\comb_94|comb_19|unidade~10_combout\ & (\comb_94|comb_19|unidade~9_combout\ & 
-- ((\comb_94|comb_19|unidade~11_combout\) # (!\comb_90|Mux519~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~9_combout\,
	datab => \comb_90|Mux519~1_combout\,
	datac => \comb_94|comb_19|unidade~11_combout\,
	datad => \comb_94|comb_19|unidade~10_combout\,
	combout => \comb_94|comb_19|unidade~12_combout\);

-- Location: LCCOMB_X60_Y42_N20
\comb_94|comb_19|unidade~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~16_combout\ = (\comb_90|Mux520~1_combout\ & ((\comb_94|comb_19|unidade~14_combout\ & (!\comb_94|comb_19|unidade~13_combout\ & !\comb_94|comb_19|unidade~12_combout\)) # (!\comb_94|comb_19|unidade~14_combout\ & 
-- ((\comb_94|comb_19|unidade~12_combout\))))) # (!\comb_90|Mux520~1_combout\ & (\comb_94|comb_19|unidade~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datab => \comb_94|comb_19|unidade~14_combout\,
	datac => \comb_94|comb_19|unidade~13_combout\,
	datad => \comb_94|comb_19|unidade~12_combout\,
	combout => \comb_94|comb_19|unidade~16_combout\);

-- Location: LCCOMB_X60_Y42_N6
\comb_94|comb_19|unidade~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~17_combout\ = (\comb_90|Mux520~1_combout\ & ((\comb_94|comb_19|unidade~12_combout\) # ((\comb_94|comb_19|unidade~14_combout\ & \comb_94|comb_19|unidade~13_combout\)))) # (!\comb_90|Mux520~1_combout\ & 
-- (((!\comb_94|comb_19|unidade~13_combout\ & !\comb_94|comb_19|unidade~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datab => \comb_94|comb_19|unidade~14_combout\,
	datac => \comb_94|comb_19|unidade~13_combout\,
	datad => \comb_94|comb_19|unidade~12_combout\,
	combout => \comb_94|comb_19|unidade~17_combout\);

-- Location: LCCOMB_X60_Y42_N18
\comb_94|comb_19|unidade~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~15_combout\ = (\comb_94|comb_19|unidade~13_combout\ & (\comb_90|Mux520~1_combout\ & (!\comb_94|comb_19|unidade~14_combout\))) # (!\comb_94|comb_19|unidade~13_combout\ & (\comb_94|comb_19|unidade~12_combout\ & 
-- ((\comb_94|comb_19|unidade~14_combout\) # (!\comb_90|Mux520~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datab => \comb_94|comb_19|unidade~14_combout\,
	datac => \comb_94|comb_19|unidade~13_combout\,
	datad => \comb_94|comb_19|unidade~12_combout\,
	combout => \comb_94|comb_19|unidade~15_combout\);

-- Location: LCCOMB_X66_Y42_N12
\comb_94|comb_19|unidade~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~20_combout\ = (\comb_94|comb_19|unidade~16_combout\ & (\comb_90|Mux521~1_combout\ & ((\comb_94|comb_19|unidade~17_combout\) # (\comb_94|comb_19|unidade~15_combout\)))) # (!\comb_94|comb_19|unidade~16_combout\ & 
-- (\comb_90|Mux521~1_combout\ $ (((!\comb_94|comb_19|unidade~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~16_combout\,
	datab => \comb_90|Mux521~1_combout\,
	datac => \comb_94|comb_19|unidade~17_combout\,
	datad => \comb_94|comb_19|unidade~15_combout\,
	combout => \comb_94|comb_19|unidade~20_combout\);

-- Location: LCCOMB_X66_Y42_N0
\comb_94|comb_19|unidade~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~18_combout\ = (\comb_94|comb_19|unidade~16_combout\ & (\comb_90|Mux521~1_combout\ & (!\comb_94|comb_19|unidade~17_combout\))) # (!\comb_94|comb_19|unidade~16_combout\ & (\comb_94|comb_19|unidade~15_combout\ & 
-- ((\comb_94|comb_19|unidade~17_combout\) # (!\comb_90|Mux521~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~16_combout\,
	datab => \comb_90|Mux521~1_combout\,
	datac => \comb_94|comb_19|unidade~17_combout\,
	datad => \comb_94|comb_19|unidade~15_combout\,
	combout => \comb_94|comb_19|unidade~18_combout\);

-- Location: LCCOMB_X66_Y42_N10
\comb_94|comb_19|unidade~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~19_combout\ = (\comb_90|Mux521~1_combout\ & ((\comb_94|comb_19|unidade~17_combout\ & (!\comb_94|comb_19|unidade~16_combout\ & !\comb_94|comb_19|unidade~15_combout\)) # (!\comb_94|comb_19|unidade~17_combout\ & 
-- ((\comb_94|comb_19|unidade~15_combout\))))) # (!\comb_90|Mux521~1_combout\ & (((\comb_94|comb_19|unidade~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~16_combout\,
	datab => \comb_90|Mux521~1_combout\,
	datac => \comb_94|comb_19|unidade~17_combout\,
	datad => \comb_94|comb_19|unidade~15_combout\,
	combout => \comb_94|comb_19|unidade~19_combout\);

-- Location: LCCOMB_X66_Y42_N6
\comb_94|comb_19|unidade~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~21_combout\ = (\comb_94|comb_19|unidade~19_combout\ & (!\comb_94|comb_19|unidade~20_combout\ & (\comb_90|Mux522~1_combout\))) # (!\comb_94|comb_19|unidade~19_combout\ & (\comb_94|comb_19|unidade~18_combout\ & 
-- ((\comb_94|comb_19|unidade~20_combout\) # (!\comb_90|Mux522~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~20_combout\,
	datab => \comb_90|Mux522~1_combout\,
	datac => \comb_94|comb_19|unidade~18_combout\,
	datad => \comb_94|comb_19|unidade~19_combout\,
	combout => \comb_94|comb_19|unidade~21_combout\);

-- Location: LCCOMB_X66_Y42_N18
\comb_94|comb_19|unidade~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~23_combout\ = (\comb_90|Mux522~1_combout\ & ((\comb_94|comb_19|unidade~18_combout\) # ((\comb_94|comb_19|unidade~20_combout\ & \comb_94|comb_19|unidade~19_combout\)))) # (!\comb_90|Mux522~1_combout\ & 
-- (((!\comb_94|comb_19|unidade~18_combout\ & !\comb_94|comb_19|unidade~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~20_combout\,
	datab => \comb_90|Mux522~1_combout\,
	datac => \comb_94|comb_19|unidade~18_combout\,
	datad => \comb_94|comb_19|unidade~19_combout\,
	combout => \comb_94|comb_19|unidade~23_combout\);

-- Location: LCCOMB_X66_Y42_N24
\comb_94|comb_19|unidade~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~22_combout\ = (\comb_94|comb_19|unidade~20_combout\ & (((!\comb_94|comb_19|unidade~18_combout\ & !\comb_94|comb_19|unidade~19_combout\)) # (!\comb_90|Mux522~1_combout\))) # (!\comb_94|comb_19|unidade~20_combout\ & 
-- (\comb_90|Mux522~1_combout\ & (\comb_94|comb_19|unidade~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~20_combout\,
	datab => \comb_90|Mux522~1_combout\,
	datac => \comb_94|comb_19|unidade~18_combout\,
	datad => \comb_94|comb_19|unidade~19_combout\,
	combout => \comb_94|comb_19|unidade~22_combout\);

-- Location: LCCOMB_X66_Y42_N28
\comb_94|comb_19|unidade~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~24_combout\ = (\comb_94|comb_19|unidade~22_combout\ & (((!\comb_94|comb_19|unidade~23_combout\ & \comb_90|Mux523~1_combout\)))) # (!\comb_94|comb_19|unidade~22_combout\ & (\comb_94|comb_19|unidade~21_combout\ & 
-- ((\comb_94|comb_19|unidade~23_combout\) # (!\comb_90|Mux523~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~21_combout\,
	datab => \comb_94|comb_19|unidade~23_combout\,
	datac => \comb_90|Mux523~1_combout\,
	datad => \comb_94|comb_19|unidade~22_combout\,
	combout => \comb_94|comb_19|unidade~24_combout\);

-- Location: LCCOMB_X66_Y42_N22
\comb_94|comb_19|unidade~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~25_combout\ = (\comb_94|comb_19|unidade~21_combout\ & (\comb_94|comb_19|unidade~23_combout\ $ ((\comb_90|Mux523~1_combout\)))) # (!\comb_94|comb_19|unidade~21_combout\ & (\comb_94|comb_19|unidade~23_combout\ & 
-- ((!\comb_94|comb_19|unidade~22_combout\) # (!\comb_90|Mux523~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~21_combout\,
	datab => \comb_94|comb_19|unidade~23_combout\,
	datac => \comb_90|Mux523~1_combout\,
	datad => \comb_94|comb_19|unidade~22_combout\,
	combout => \comb_94|comb_19|unidade~25_combout\);

-- Location: LCCOMB_X66_Y42_N8
\comb_94|comb_19|unidade~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~26_combout\ = (\comb_94|comb_19|unidade~21_combout\ & (((\comb_90|Mux523~1_combout\)))) # (!\comb_94|comb_19|unidade~21_combout\ & ((\comb_90|Mux523~1_combout\ & (\comb_94|comb_19|unidade~23_combout\ & 
-- \comb_94|comb_19|unidade~22_combout\)) # (!\comb_90|Mux523~1_combout\ & ((!\comb_94|comb_19|unidade~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~21_combout\,
	datab => \comb_94|comb_19|unidade~23_combout\,
	datac => \comb_90|Mux523~1_combout\,
	datad => \comb_94|comb_19|unidade~22_combout\,
	combout => \comb_94|comb_19|unidade~26_combout\);

-- Location: LCCOMB_X73_Y46_N2
\comb_94|comb_19|LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|LessThan25~0_combout\ = (!\comb_94|comb_19|unidade~24_combout\ & (((\comb_90|Mux524~1_combout\ & !\comb_94|comb_19|unidade~26_combout\)) # (!\comb_94|comb_19|unidade~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~24_combout\,
	datab => \comb_90|Mux524~1_combout\,
	datac => \comb_94|comb_19|unidade~25_combout\,
	datad => \comb_94|comb_19|unidade~26_combout\,
	combout => \comb_94|comb_19|LessThan25~0_combout\);

-- Location: LCCOMB_X73_Y46_N4
\comb_94|comb_19|LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|LessThan29~0_combout\ = (\comb_90|Mux525~1_combout\ & (\comb_90|Mux524~1_combout\ $ (!\comb_94|comb_19|LessThan25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_90|Mux524~1_combout\,
	datac => \comb_90|Mux525~1_combout\,
	datad => \comb_94|comb_19|LessThan25~0_combout\,
	combout => \comb_94|comb_19|LessThan29~0_combout\);

-- Location: LCCOMB_X73_Y46_N14
\comb_94|comb_19|unidade~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~28_combout\ = (\comb_94|comb_19|unidade~25_combout\ & (((\comb_90|Mux524~1_combout\ & !\comb_94|comb_19|unidade~26_combout\)))) # (!\comb_94|comb_19|unidade~25_combout\ & (\comb_94|comb_19|unidade~24_combout\ & 
-- ((\comb_94|comb_19|unidade~26_combout\) # (!\comb_90|Mux524~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~24_combout\,
	datab => \comb_90|Mux524~1_combout\,
	datac => \comb_94|comb_19|unidade~25_combout\,
	datad => \comb_94|comb_19|unidade~26_combout\,
	combout => \comb_94|comb_19|unidade~28_combout\);

-- Location: LCCOMB_X73_Y46_N0
\comb_94|comb_19|unidade~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~27_combout\ = (\comb_94|comb_19|unidade~24_combout\ & (\comb_90|Mux524~1_combout\ $ (((\comb_94|comb_19|unidade~26_combout\))))) # (!\comb_94|comb_19|unidade~24_combout\ & (\comb_94|comb_19|unidade~26_combout\ & 
-- ((!\comb_94|comb_19|unidade~25_combout\) # (!\comb_90|Mux524~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~24_combout\,
	datab => \comb_90|Mux524~1_combout\,
	datac => \comb_94|comb_19|unidade~25_combout\,
	datad => \comb_94|comb_19|unidade~26_combout\,
	combout => \comb_94|comb_19|unidade~27_combout\);

-- Location: LCCOMB_X73_Y46_N10
\comb_94|comb_19|unidade~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~30_combout\ = \comb_90|Mux525~1_combout\ $ (((!\comb_94|comb_19|unidade~28_combout\ & ((\comb_94|comb_19|LessThan29~0_combout\) # (!\comb_94|comb_19|unidade~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux525~1_combout\,
	datab => \comb_94|comb_19|LessThan29~0_combout\,
	datac => \comb_94|comb_19|unidade~28_combout\,
	datad => \comb_94|comb_19|unidade~27_combout\,
	combout => \comb_94|comb_19|unidade~30_combout\);

-- Location: LCCOMB_X73_Y46_N24
\comb_94|comb_19|unidade~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~29_combout\ = (\comb_94|comb_19|LessThan29~0_combout\ & ((\comb_94|comb_19|unidade~27_combout\))) # (!\comb_94|comb_19|LessThan29~0_combout\ & (\comb_94|comb_19|unidade~28_combout\ & !\comb_94|comb_19|unidade~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_94|comb_19|LessThan29~0_combout\,
	datac => \comb_94|comb_19|unidade~28_combout\,
	datad => \comb_94|comb_19|unidade~27_combout\,
	combout => \comb_94|comb_19|unidade~29_combout\);

-- Location: LCCOMB_X73_Y46_N12
\comb_94|comb_19|LessThan29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|LessThan29~1_combout\ = (!\comb_94|comb_19|unidade~28_combout\ & ((\comb_94|comb_19|LessThan29~0_combout\) # (!\comb_94|comb_19|unidade~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_94|comb_19|LessThan29~0_combout\,
	datac => \comb_94|comb_19|unidade~28_combout\,
	datad => \comb_94|comb_19|unidade~27_combout\,
	combout => \comb_94|comb_19|LessThan29~1_combout\);

-- Location: LCCOMB_X73_Y46_N6
\comb_94|comb_19|unidade~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~31_combout\ = \comb_90|Mux524~1_combout\ $ (\comb_94|comb_19|LessThan25~0_combout\ $ (((!\comb_94|comb_19|LessThan29~1_combout\ & \comb_90|Mux525~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|LessThan29~1_combout\,
	datab => \comb_90|Mux524~1_combout\,
	datac => \comb_90|Mux525~1_combout\,
	datad => \comb_94|comb_19|LessThan25~0_combout\,
	combout => \comb_94|comb_19|unidade~31_combout\);

-- Location: LCCOMB_X73_Y46_N16
\comb_94|comb_19|unidade[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade[1]~32_combout\ = (\comb_94|comb_19|unidade~29_combout\ & (((\comb_90|Mux526~1_combout\)))) # (!\comb_94|comb_19|unidade~29_combout\ & ((\comb_90|Mux526~1_combout\ & (\comb_94|comb_19|unidade~30_combout\ & 
-- \comb_94|comb_19|unidade~31_combout\)) # (!\comb_90|Mux526~1_combout\ & ((!\comb_94|comb_19|unidade~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~30_combout\,
	datab => \comb_94|comb_19|unidade~29_combout\,
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_94|comb_19|unidade~31_combout\,
	combout => \comb_94|comb_19|unidade[1]~32_combout\);

-- Location: LCCOMB_X73_Y46_N28
\comb_94|comb_19|unidade[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade[3]~34_combout\ = (\comb_94|comb_19|unidade~31_combout\ & (!\comb_94|comb_19|unidade~30_combout\ & ((\comb_90|Mux526~1_combout\)))) # (!\comb_94|comb_19|unidade~31_combout\ & (\comb_94|comb_19|unidade~29_combout\ & 
-- ((\comb_94|comb_19|unidade~30_combout\) # (!\comb_90|Mux526~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~30_combout\,
	datab => \comb_94|comb_19|unidade~29_combout\,
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_94|comb_19|unidade~31_combout\,
	combout => \comb_94|comb_19|unidade[3]~34_combout\);

-- Location: LCCOMB_X73_Y46_N18
\comb_94|comb_19|unidade[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade[2]~33_combout\ = (\comb_94|comb_19|unidade~30_combout\ & (((!\comb_94|comb_19|unidade~29_combout\ & !\comb_94|comb_19|unidade~31_combout\)) # (!\comb_90|Mux526~1_combout\))) # (!\comb_94|comb_19|unidade~30_combout\ & 
-- (\comb_94|comb_19|unidade~29_combout\ & (\comb_90|Mux526~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~30_combout\,
	datab => \comb_94|comb_19|unidade~29_combout\,
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_94|comb_19|unidade~31_combout\,
	combout => \comb_94|comb_19|unidade[2]~33_combout\);

-- Location: LCCOMB_X76_Y46_N12
\comb_95|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr3~0_combout\ = (\comb_94|comb_19|unidade[3]~34_combout\) # ((\comb_94|comb_19|unidade[1]~32_combout\ & ((!\comb_94|comb_19|unidade[2]~33_combout\) # (!\comb_90|Mux527~1_combout\))) # (!\comb_94|comb_19|unidade[1]~32_combout\ & 
-- ((\comb_94|comb_19|unidade[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade[1]~32_combout\,
	datab => \comb_94|comb_19|unidade[3]~34_combout\,
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_94|comb_19|unidade[2]~33_combout\,
	combout => \comb_95|WideOr3~0_combout\);

-- Location: LCCOMB_X54_Y50_N24
\comb_89|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Decoder0~0_combout\ = (!\comb_88|Mux1~0_combout\ & (!\comb_93|endereco_atual\(5) & (!\comb_93|endereco_atual\(4) & \comb_88|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux1~0_combout\,
	datab => \comb_93|endereco_atual\(5),
	datac => \comb_93|endereco_atual\(4),
	datad => \comb_88|Mux0~0_combout\,
	combout => \comb_89|Decoder0~0_combout\);

-- Location: LCCOMB_X54_Y50_N6
\comb_89|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|Decoder0~1_combout\ = (\comb_88|Mux3~1_combout\ & (!\comb_88|Mux4~1_combout\ & (\comb_89|Decoder0~0_combout\ & !\comb_88|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_88|Mux3~1_combout\,
	datab => \comb_88|Mux4~1_combout\,
	datac => \comb_89|Decoder0~0_combout\,
	datad => \comb_88|Mux2~1_combout\,
	combout => \comb_89|Decoder0~1_combout\);

-- Location: LCCOMB_X72_Y46_N0
\comb_89|controle_displays[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_displays\(0) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|controle_displays\(0)))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (!\comb_89|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|Decoder0~1_combout\,
	datac => \comb_89|WideOr5~1clkctrl_outclk\,
	datad => \comb_89|controle_displays\(0),
	combout => \comb_89|controle_displays\(0));

-- Location: LCCOMB_X72_Y46_N10
\comb_89|controle_displays[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_89|controle_displays\(1) = (GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & ((\comb_89|controle_displays\(1)))) # (!GLOBAL(\comb_89|WideOr5~1clkctrl_outclk\) & (!\comb_89|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_89|Decoder0~1_combout\,
	datac => \comb_89|WideOr5~1clkctrl_outclk\,
	datad => \comb_89|controle_displays\(1),
	combout => \comb_89|controle_displays\(1));

-- Location: LCCOMB_X76_Y46_N0
\comb_95|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|Equal0~0_combout\ = (\comb_89|controle_displays\(0)) # (\comb_89|controle_displays\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_89|controle_displays\(0),
	datad => \comb_89|controle_displays\(1),
	combout => \comb_95|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y46_N26
\comb_95|display1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[0]~0_combout\ = (\comb_95|Equal0~0_combout\ & (((!\comb_94|comb_19|unidade[1]~32_combout\ & !\comb_94|comb_19|unidade[2]~33_combout\)) # (!\comb_94|comb_19|unidade[3]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade[1]~32_combout\,
	datab => \comb_95|Equal0~0_combout\,
	datac => \comb_94|comb_19|unidade[2]~33_combout\,
	datad => \comb_94|comb_19|unidade[3]~34_combout\,
	combout => \comb_95|display1[0]~0_combout\);

-- Location: LCCOMB_X76_Y46_N14
\comb_95|display1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[0]~1_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display1[0]~0_combout\) # ((!\comb_95|WideOr3~0_combout\ & !\comb_95|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|WideOr3~0_combout\,
	datab => \comb_95|Equal0~0_combout\,
	datac => \comb_95|display1[0]~0_combout\,
	datad => \comb_92|Selector6~2_combout\,
	combout => \comb_95|display1[0]~1_combout\);

-- Location: LCCOMB_X76_Y46_N8
\comb_95|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr2~0_combout\ = (!\comb_94|comb_19|unidade[3]~34_combout\ & ((\comb_94|comb_19|unidade[1]~32_combout\ & ((\comb_90|Mux527~1_combout\) # (!\comb_94|comb_19|unidade[2]~33_combout\))) # (!\comb_94|comb_19|unidade[1]~32_combout\ & 
-- (\comb_90|Mux527~1_combout\ & !\comb_94|comb_19|unidade[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade[1]~32_combout\,
	datab => \comb_94|comb_19|unidade[3]~34_combout\,
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_94|comb_19|unidade[2]~33_combout\,
	combout => \comb_95|WideOr2~0_combout\);

-- Location: LCCOMB_X76_Y46_N10
\comb_95|display1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[1]~2_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display1[0]~0_combout\) # ((!\comb_95|Equal0~0_combout\ & \comb_95|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~0_combout\,
	datab => \comb_95|Equal0~0_combout\,
	datac => \comb_95|WideOr2~0_combout\,
	datad => \comb_92|Selector6~2_combout\,
	combout => \comb_95|display1[1]~2_combout\);

-- Location: LCCOMB_X76_Y46_N20
\comb_95|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr1~0_combout\ = (\comb_94|comb_19|unidade[1]~32_combout\ & (!\comb_94|comb_19|unidade[3]~34_combout\ & (\comb_90|Mux527~1_combout\))) # (!\comb_94|comb_19|unidade[1]~32_combout\ & ((\comb_94|comb_19|unidade[2]~33_combout\ & 
-- (!\comb_94|comb_19|unidade[3]~34_combout\)) # (!\comb_94|comb_19|unidade[2]~33_combout\ & ((\comb_90|Mux527~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade[1]~32_combout\,
	datab => \comb_94|comb_19|unidade[3]~34_combout\,
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_94|comb_19|unidade[2]~33_combout\,
	combout => \comb_95|WideOr1~0_combout\);

-- Location: LCCOMB_X76_Y46_N6
\comb_95|display1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[2]~3_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display1[0]~0_combout\) # ((!\comb_95|Equal0~0_combout\ & \comb_95|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_95|WideOr1~0_combout\,
	combout => \comb_95|display1[2]~3_combout\);

-- Location: LCCOMB_X73_Y46_N22
\comb_95|display1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[0]~4_combout\ = (!\comb_94|comb_19|unidade~30_combout\ & ((\comb_94|comb_19|unidade~29_combout\ & (!\comb_90|Mux526~1_combout\)) # (!\comb_94|comb_19|unidade~29_combout\ & ((\comb_90|Mux526~1_combout\) # 
-- (\comb_94|comb_19|unidade~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~30_combout\,
	datab => \comb_94|comb_19|unidade~29_combout\,
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_94|comb_19|unidade~31_combout\,
	combout => \comb_95|display1[0]~4_combout\);

-- Location: LCCOMB_X52_Y46_N24
\comb_95|display1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[0]~5_combout\ = (!\comb_95|Equal0~0_combout\ & (((\comb_89|controle_ula\(3)) # (\comb_89|controle_ula\(2))) # (!\comb_92|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|Selector6~1_combout\,
	datab => \comb_95|Equal0~0_combout\,
	datac => \comb_89|controle_ula\(3),
	datad => \comb_89|controle_ula\(2),
	combout => \comb_95|display1[0]~5_combout\);

-- Location: LCCOMB_X76_Y46_N24
\comb_95|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr0~0_combout\ = (!\comb_94|comb_19|unidade[3]~34_combout\ & ((\comb_94|comb_19|unidade[1]~32_combout\ & (\comb_90|Mux527~1_combout\ & \comb_94|comb_19|unidade[2]~33_combout\)) # (!\comb_94|comb_19|unidade[1]~32_combout\ & 
-- (\comb_90|Mux527~1_combout\ $ (\comb_94|comb_19|unidade[2]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade[1]~32_combout\,
	datab => \comb_94|comb_19|unidade[3]~34_combout\,
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_94|comb_19|unidade[2]~33_combout\,
	combout => \comb_95|WideOr0~0_combout\);

-- Location: LCCOMB_X76_Y46_N18
\comb_95|display1[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[3]~6_combout\ = (\comb_95|display1[0]~5_combout\ & (((\comb_95|WideOr0~0_combout\)))) # (!\comb_95|display1[0]~5_combout\ & ((\comb_95|display1[0]~4_combout\) # ((!\comb_94|comb_19|unidade[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~4_combout\,
	datab => \comb_94|comb_19|unidade[3]~34_combout\,
	datac => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|WideOr0~0_combout\,
	combout => \comb_95|display1[3]~6_combout\);

-- Location: LCCOMB_X73_Y46_N8
\comb_95|display1[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[4]~8_combout\ = (\comb_94|comb_19|unidade~30_combout\ & (((\comb_90|Mux526~1_combout\ & \comb_94|comb_19|unidade~31_combout\)))) # (!\comb_94|comb_19|unidade~30_combout\ & (!\comb_94|comb_19|unidade~29_combout\ & 
-- (!\comb_90|Mux526~1_combout\ & !\comb_94|comb_19|unidade~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~30_combout\,
	datab => \comb_94|comb_19|unidade~29_combout\,
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_94|comb_19|unidade~31_combout\,
	combout => \comb_95|display1[4]~8_combout\);

-- Location: LCCOMB_X76_Y46_N28
\comb_95|display1[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[4]~7_combout\ = (!\comb_90|Mux527~1_combout\ & !\comb_95|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux527~1_combout\,
	datad => \comb_95|Equal0~0_combout\,
	combout => \comb_95|display1[4]~7_combout\);

-- Location: LCCOMB_X76_Y46_N30
\comb_95|display1[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[4]~9_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display1[0]~0_combout\) # ((\comb_95|display1[4]~8_combout\ & \comb_95|display1[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|display1[4]~8_combout\,
	datad => \comb_95|display1[4]~7_combout\,
	combout => \comb_95|display1[4]~9_combout\);

-- Location: LCCOMB_X76_Y46_N16
\comb_95|display1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1~10_combout\ = (!\comb_94|comb_19|unidade[3]~34_combout\ & (\comb_94|comb_19|unidade[2]~33_combout\ & (\comb_94|comb_19|unidade[1]~32_combout\ $ (\comb_90|Mux527~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade[1]~32_combout\,
	datab => \comb_94|comb_19|unidade[3]~34_combout\,
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_94|comb_19|unidade[2]~33_combout\,
	combout => \comb_95|display1~10_combout\);

-- Location: LCCOMB_X76_Y46_N2
\comb_95|display1[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[5]~11_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display1[0]~0_combout\) # ((!\comb_95|Equal0~0_combout\ & \comb_95|display1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_95|display1~10_combout\,
	combout => \comb_95|display1[5]~11_combout\);

-- Location: LCCOMB_X76_Y46_N4
\comb_95|display1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1~12_combout\ = (!\comb_94|comb_19|unidade[1]~32_combout\ & (!\comb_94|comb_19|unidade[3]~34_combout\ & (\comb_90|Mux527~1_combout\ $ (\comb_94|comb_19|unidade[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade[1]~32_combout\,
	datab => \comb_94|comb_19|unidade[3]~34_combout\,
	datac => \comb_90|Mux527~1_combout\,
	datad => \comb_94|comb_19|unidade[2]~33_combout\,
	combout => \comb_95|display1~12_combout\);

-- Location: LCCOMB_X76_Y46_N22
\comb_95|display1[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display1[6]~13_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display1[0]~0_combout\) # ((!\comb_95|Equal0~0_combout\ & \comb_95|display1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~0_combout\,
	datab => \comb_95|Equal0~0_combout\,
	datac => \comb_95|display1~12_combout\,
	datad => \comb_92|Selector6~2_combout\,
	combout => \comb_95|display1[6]~13_combout\);

-- Location: LCCOMB_X60_Y42_N14
\comb_94|comb_19|unidade~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~42_combout\ = \comb_94|comb_19|unidade~12_combout\ $ (((\comb_94|comb_19|unidade~13_combout\ & ((\comb_94|comb_19|unidade~14_combout\) # (!\comb_90|Mux520~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux520~1_combout\,
	datab => \comb_94|comb_19|unidade~14_combout\,
	datac => \comb_94|comb_19|unidade~13_combout\,
	datad => \comb_94|comb_19|unidade~12_combout\,
	combout => \comb_94|comb_19|unidade~42_combout\);

-- Location: LCCOMB_X60_Y42_N8
\comb_94|comb_19|unidade~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~39_combout\ = \comb_94|comb_19|unidade~3_combout\ $ (((\comb_94|comb_19|unidade~4_combout\ & ((\comb_94|comb_19|unidade~5_combout\) # (!\comb_90|Mux517~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~5_combout\,
	datab => \comb_94|comb_19|unidade~4_combout\,
	datac => \comb_90|Mux517~1_combout\,
	datad => \comb_94|comb_19|unidade~3_combout\,
	combout => \comb_94|comb_19|unidade~39_combout\);

-- Location: LCCOMB_X61_Y42_N20
\comb_94|comb_19|unidade~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~36_combout\ = (\comb_90|Mux514~1_combout\ & ((\comb_90|Mux513~1_combout\ & ((!\comb_90|Mux512~1_combout\))) # (!\comb_90|Mux513~1_combout\ & (!\comb_90|Mux515~1_combout\ & \comb_90|Mux512~1_combout\)))) # 
-- (!\comb_90|Mux514~1_combout\ & (!\comb_90|Mux513~1_combout\ & ((\comb_90|Mux512~1_combout\) # (!\comb_90|Mux515~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datab => \comb_90|Mux515~1_combout\,
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_94|comb_19|unidade~36_combout\);

-- Location: LCCOMB_X61_Y42_N30
\comb_94|comb_19|unidade~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~37_combout\ = \comb_94|comb_19|unidade~1_combout\ $ ((((\comb_90|Mux516~1_combout\ & !\comb_94|comb_19|unidade~2_combout\)) # (!\comb_94|comb_19|unidade~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~1_combout\,
	datab => \comb_94|comb_19|unidade~0_combout\,
	datac => \comb_90|Mux516~1_combout\,
	datad => \comb_94|comb_19|unidade~2_combout\,
	combout => \comb_94|comb_19|unidade~37_combout\);

-- Location: LCCOMB_X61_Y42_N0
\comb_94|comb_19|unidade~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~38_combout\ = (\comb_90|Mux512~1_combout\) # ((\comb_90|Mux514~1_combout\ & \comb_90|Mux513~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_90|Mux514~1_combout\,
	datac => \comb_90|Mux513~1_combout\,
	datad => \comb_90|Mux512~1_combout\,
	combout => \comb_94|comb_19|unidade~38_combout\);

-- Location: LCCOMB_X61_Y42_N14
\comb_94|comb_19|dezena~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~2_combout\ = (\comb_94|comb_19|unidade~37_combout\ & (\comb_94|comb_19|unidade~38_combout\ & ((\comb_94|comb_19|unidade~39_combout\) # (!\comb_94|comb_19|unidade~36_combout\)))) # (!\comb_94|comb_19|unidade~37_combout\ & 
-- (!\comb_94|comb_19|unidade~38_combout\ & ((\comb_94|comb_19|unidade~36_combout\) # (!\comb_94|comb_19|unidade~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~39_combout\,
	datab => \comb_94|comb_19|unidade~36_combout\,
	datac => \comb_94|comb_19|unidade~37_combout\,
	datad => \comb_94|comb_19|unidade~38_combout\,
	combout => \comb_94|comb_19|dezena~2_combout\);

-- Location: LCCOMB_X61_Y42_N4
\comb_94|comb_19|dezena~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~1_combout\ = (\comb_94|comb_19|unidade~39_combout\ & (\comb_94|comb_19|unidade~36_combout\ $ (((!\comb_94|comb_19|unidade~37_combout\ & !\comb_94|comb_19|unidade~38_combout\))))) # (!\comb_94|comb_19|unidade~39_combout\ & 
-- ((\comb_94|comb_19|unidade~36_combout\ & ((!\comb_94|comb_19|unidade~38_combout\) # (!\comb_94|comb_19|unidade~37_combout\))) # (!\comb_94|comb_19|unidade~36_combout\ & ((\comb_94|comb_19|unidade~37_combout\) # (\comb_94|comb_19|unidade~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~39_combout\,
	datab => \comb_94|comb_19|unidade~36_combout\,
	datac => \comb_94|comb_19|unidade~37_combout\,
	datad => \comb_94|comb_19|unidade~38_combout\,
	combout => \comb_94|comb_19|dezena~1_combout\);

-- Location: LCCOMB_X60_Y42_N2
\comb_94|comb_19|unidade~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~40_combout\ = \comb_94|comb_19|unidade~6_combout\ $ (((\comb_94|comb_19|unidade~7_combout\ & ((\comb_94|comb_19|unidade~8_combout\) # (!\comb_90|Mux518~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~7_combout\,
	datab => \comb_90|Mux518~1_combout\,
	datac => \comb_94|comb_19|unidade~8_combout\,
	datad => \comb_94|comb_19|unidade~6_combout\,
	combout => \comb_94|comb_19|unidade~40_combout\);

-- Location: LCCOMB_X61_Y42_N2
\comb_94|comb_19|dezena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~0_combout\ = (\comb_94|comb_19|unidade~39_combout\ & (!\comb_94|comb_19|unidade~36_combout\ & (!\comb_94|comb_19|unidade~37_combout\ & !\comb_94|comb_19|unidade~38_combout\))) # (!\comb_94|comb_19|unidade~39_combout\ & 
-- (\comb_94|comb_19|unidade~36_combout\ & (\comb_94|comb_19|unidade~37_combout\ $ (\comb_94|comb_19|unidade~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~39_combout\,
	datab => \comb_94|comb_19|unidade~36_combout\,
	datac => \comb_94|comb_19|unidade~37_combout\,
	datad => \comb_94|comb_19|unidade~38_combout\,
	combout => \comb_94|comb_19|dezena~0_combout\);

-- Location: LCCOMB_X67_Y38_N10
\comb_94|comb_19|dezena~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~4_combout\ = (\comb_94|comb_19|dezena~2_combout\ & ((\comb_94|comb_19|unidade~40_combout\) # ((\comb_94|comb_19|dezena~1_combout\ & !\comb_94|comb_19|dezena~0_combout\)))) # (!\comb_94|comb_19|dezena~2_combout\ & 
-- ((\comb_94|comb_19|unidade~40_combout\ $ (!\comb_94|comb_19|dezena~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~2_combout\,
	datab => \comb_94|comb_19|dezena~1_combout\,
	datac => \comb_94|comb_19|unidade~40_combout\,
	datad => \comb_94|comb_19|dezena~0_combout\,
	combout => \comb_94|comb_19|dezena~4_combout\);

-- Location: LCCOMB_X67_Y38_N16
\comb_94|comb_19|dezena~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~3_combout\ = (\comb_94|comb_19|dezena~2_combout\ & (\comb_94|comb_19|dezena~1_combout\ & (!\comb_94|comb_19|unidade~40_combout\))) # (!\comb_94|comb_19|dezena~2_combout\ & (\comb_94|comb_19|dezena~0_combout\ & 
-- ((\comb_94|comb_19|unidade~40_combout\) # (!\comb_94|comb_19|dezena~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~2_combout\,
	datab => \comb_94|comb_19|dezena~1_combout\,
	datac => \comb_94|comb_19|unidade~40_combout\,
	datad => \comb_94|comb_19|dezena~0_combout\,
	combout => \comb_94|comb_19|dezena~3_combout\);

-- Location: LCCOMB_X60_Y42_N12
\comb_94|comb_19|unidade~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~41_combout\ = \comb_94|comb_19|unidade~9_combout\ $ (((\comb_94|comb_19|unidade~10_combout\ & ((\comb_94|comb_19|unidade~11_combout\) # (!\comb_90|Mux519~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~9_combout\,
	datab => \comb_90|Mux519~1_combout\,
	datac => \comb_94|comb_19|unidade~11_combout\,
	datad => \comb_94|comb_19|unidade~10_combout\,
	combout => \comb_94|comb_19|unidade~41_combout\);

-- Location: LCCOMB_X67_Y38_N20
\comb_94|comb_19|dezena~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~5_combout\ = (\comb_94|comb_19|dezena~1_combout\ & (((!\comb_94|comb_19|unidade~40_combout\ & \comb_94|comb_19|dezena~0_combout\)))) # (!\comb_94|comb_19|dezena~1_combout\ & ((\comb_94|comb_19|unidade~40_combout\) # 
-- ((!\comb_94|comb_19|dezena~2_combout\ & !\comb_94|comb_19|dezena~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~2_combout\,
	datab => \comb_94|comb_19|dezena~1_combout\,
	datac => \comb_94|comb_19|unidade~40_combout\,
	datad => \comb_94|comb_19|dezena~0_combout\,
	combout => \comb_94|comb_19|dezena~5_combout\);

-- Location: LCCOMB_X67_Y38_N18
\comb_94|comb_19|dezena~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~8_combout\ = (\comb_94|comb_19|dezena~4_combout\ & (\comb_94|comb_19|dezena~3_combout\ & (!\comb_94|comb_19|unidade~41_combout\))) # (!\comb_94|comb_19|dezena~4_combout\ & ((\comb_94|comb_19|unidade~41_combout\) # 
-- ((!\comb_94|comb_19|dezena~3_combout\ & !\comb_94|comb_19|dezena~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~4_combout\,
	datab => \comb_94|comb_19|dezena~3_combout\,
	datac => \comb_94|comb_19|unidade~41_combout\,
	datad => \comb_94|comb_19|dezena~5_combout\,
	combout => \comb_94|comb_19|dezena~8_combout\);

-- Location: LCCOMB_X67_Y38_N8
\comb_94|comb_19|dezena~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~7_combout\ = (\comb_94|comb_19|dezena~3_combout\ & (((\comb_94|comb_19|unidade~41_combout\)))) # (!\comb_94|comb_19|dezena~3_combout\ & ((\comb_94|comb_19|unidade~41_combout\ & ((\comb_94|comb_19|dezena~5_combout\))) # 
-- (!\comb_94|comb_19|unidade~41_combout\ & ((\comb_94|comb_19|dezena~4_combout\) # (!\comb_94|comb_19|dezena~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~4_combout\,
	datab => \comb_94|comb_19|dezena~3_combout\,
	datac => \comb_94|comb_19|unidade~41_combout\,
	datad => \comb_94|comb_19|dezena~5_combout\,
	combout => \comb_94|comb_19|dezena~7_combout\);

-- Location: LCCOMB_X67_Y38_N6
\comb_94|comb_19|dezena~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~6_combout\ = (\comb_94|comb_19|dezena~5_combout\ & (\comb_94|comb_19|dezena~4_combout\ & ((!\comb_94|comb_19|unidade~41_combout\)))) # (!\comb_94|comb_19|dezena~5_combout\ & (\comb_94|comb_19|dezena~3_combout\ & 
-- ((\comb_94|comb_19|unidade~41_combout\) # (!\comb_94|comb_19|dezena~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~4_combout\,
	datab => \comb_94|comb_19|dezena~3_combout\,
	datac => \comb_94|comb_19|unidade~41_combout\,
	datad => \comb_94|comb_19|dezena~5_combout\,
	combout => \comb_94|comb_19|dezena~6_combout\);

-- Location: LCCOMB_X67_Y38_N12
\comb_94|comb_19|dezena~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~9_combout\ = (\comb_94|comb_19|dezena~8_combout\ & (!\comb_94|comb_19|unidade~42_combout\ & (\comb_94|comb_19|dezena~7_combout\))) # (!\comb_94|comb_19|dezena~8_combout\ & (\comb_94|comb_19|dezena~6_combout\ & 
-- ((\comb_94|comb_19|unidade~42_combout\) # (!\comb_94|comb_19|dezena~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~42_combout\,
	datab => \comb_94|comb_19|dezena~8_combout\,
	datac => \comb_94|comb_19|dezena~7_combout\,
	datad => \comb_94|comb_19|dezena~6_combout\,
	combout => \comb_94|comb_19|dezena~9_combout\);

-- Location: LCCOMB_X66_Y42_N26
\comb_94|comb_19|unidade~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~43_combout\ = \comb_94|comb_19|unidade~15_combout\ $ (((\comb_94|comb_19|unidade~16_combout\ & ((\comb_94|comb_19|unidade~17_combout\) # (!\comb_90|Mux521~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~16_combout\,
	datab => \comb_90|Mux521~1_combout\,
	datac => \comb_94|comb_19|unidade~17_combout\,
	datad => \comb_94|comb_19|unidade~15_combout\,
	combout => \comb_94|comb_19|unidade~43_combout\);

-- Location: LCCOMB_X67_Y38_N22
\comb_94|comb_19|dezena~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~10_combout\ = (\comb_94|comb_19|unidade~42_combout\ & ((\comb_94|comb_19|dezena~8_combout\) # ((\comb_94|comb_19|dezena~6_combout\)))) # (!\comb_94|comb_19|unidade~42_combout\ & (!\comb_94|comb_19|dezena~6_combout\ & 
-- ((\comb_94|comb_19|dezena~7_combout\) # (!\comb_94|comb_19|dezena~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~42_combout\,
	datab => \comb_94|comb_19|dezena~8_combout\,
	datac => \comb_94|comb_19|dezena~7_combout\,
	datad => \comb_94|comb_19|dezena~6_combout\,
	combout => \comb_94|comb_19|dezena~10_combout\);

-- Location: LCCOMB_X67_Y38_N0
\comb_94|comb_19|dezena~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~11_combout\ = (\comb_94|comb_19|unidade~42_combout\ & (((!\comb_94|comb_19|dezena~7_combout\)))) # (!\comb_94|comb_19|unidade~42_combout\ & ((\comb_94|comb_19|dezena~7_combout\ & ((\comb_94|comb_19|dezena~6_combout\))) # 
-- (!\comb_94|comb_19|dezena~7_combout\ & (!\comb_94|comb_19|dezena~8_combout\ & !\comb_94|comb_19|dezena~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~42_combout\,
	datab => \comb_94|comb_19|dezena~8_combout\,
	datac => \comb_94|comb_19|dezena~7_combout\,
	datad => \comb_94|comb_19|dezena~6_combout\,
	combout => \comb_94|comb_19|dezena~11_combout\);

-- Location: LCCOMB_X67_Y38_N4
\comb_94|comb_19|dezena~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~13_combout\ = (\comb_94|comb_19|dezena~9_combout\ & (\comb_94|comb_19|unidade~43_combout\)) # (!\comb_94|comb_19|dezena~9_combout\ & ((\comb_94|comb_19|unidade~43_combout\ & ((\comb_94|comb_19|dezena~11_combout\))) # 
-- (!\comb_94|comb_19|unidade~43_combout\ & ((\comb_94|comb_19|dezena~10_combout\) # (!\comb_94|comb_19|dezena~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~9_combout\,
	datab => \comb_94|comb_19|unidade~43_combout\,
	datac => \comb_94|comb_19|dezena~10_combout\,
	datad => \comb_94|comb_19|dezena~11_combout\,
	combout => \comb_94|comb_19|dezena~13_combout\);

-- Location: LCCOMB_X66_Y42_N4
\comb_94|comb_19|unidade~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~44_combout\ = \comb_94|comb_19|unidade~18_combout\ $ (((\comb_94|comb_19|unidade~19_combout\ & ((\comb_94|comb_19|unidade~20_combout\) # (!\comb_90|Mux522~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~20_combout\,
	datab => \comb_90|Mux522~1_combout\,
	datac => \comb_94|comb_19|unidade~18_combout\,
	datad => \comb_94|comb_19|unidade~19_combout\,
	combout => \comb_94|comb_19|unidade~44_combout\);

-- Location: LCCOMB_X67_Y38_N30
\comb_94|comb_19|dezena~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~14_combout\ = (\comb_94|comb_19|dezena~9_combout\ & (\comb_94|comb_19|unidade~43_combout\ $ ((\comb_94|comb_19|dezena~10_combout\)))) # (!\comb_94|comb_19|dezena~9_combout\ & (!\comb_94|comb_19|dezena~10_combout\ & 
-- ((\comb_94|comb_19|unidade~43_combout\) # (!\comb_94|comb_19|dezena~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~9_combout\,
	datab => \comb_94|comb_19|unidade~43_combout\,
	datac => \comb_94|comb_19|dezena~10_combout\,
	datad => \comb_94|comb_19|dezena~11_combout\,
	combout => \comb_94|comb_19|dezena~14_combout\);

-- Location: LCCOMB_X67_Y38_N2
\comb_94|comb_19|dezena~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~12_combout\ = (\comb_94|comb_19|dezena~11_combout\ & (((!\comb_94|comb_19|unidade~43_combout\ & \comb_94|comb_19|dezena~10_combout\)))) # (!\comb_94|comb_19|dezena~11_combout\ & (\comb_94|comb_19|dezena~9_combout\ & 
-- ((\comb_94|comb_19|unidade~43_combout\) # (!\comb_94|comb_19|dezena~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~9_combout\,
	datab => \comb_94|comb_19|unidade~43_combout\,
	datac => \comb_94|comb_19|dezena~10_combout\,
	datad => \comb_94|comb_19|dezena~11_combout\,
	combout => \comb_94|comb_19|dezena~12_combout\);

-- Location: LCCOMB_X73_Y37_N12
\comb_94|comb_19|dezena~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~17_combout\ = (\comb_94|comb_19|dezena~13_combout\ & (!\comb_94|comb_19|unidade~44_combout\ & ((\comb_94|comb_19|dezena~12_combout\)))) # (!\comb_94|comb_19|dezena~13_combout\ & ((\comb_94|comb_19|unidade~44_combout\) # 
-- ((!\comb_94|comb_19|dezena~14_combout\ & !\comb_94|comb_19|dezena~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~13_combout\,
	datab => \comb_94|comb_19|unidade~44_combout\,
	datac => \comb_94|comb_19|dezena~14_combout\,
	datad => \comb_94|comb_19|dezena~12_combout\,
	combout => \comb_94|comb_19|dezena~17_combout\);

-- Location: LCCOMB_X73_Y37_N24
\comb_94|comb_19|dezena~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~15_combout\ = (\comb_94|comb_19|dezena~14_combout\ & (\comb_94|comb_19|dezena~13_combout\ & (!\comb_94|comb_19|unidade~44_combout\))) # (!\comb_94|comb_19|dezena~14_combout\ & (\comb_94|comb_19|dezena~12_combout\ & 
-- ((\comb_94|comb_19|unidade~44_combout\) # (!\comb_94|comb_19|dezena~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~13_combout\,
	datab => \comb_94|comb_19|unidade~44_combout\,
	datac => \comb_94|comb_19|dezena~14_combout\,
	datad => \comb_94|comb_19|dezena~12_combout\,
	combout => \comb_94|comb_19|dezena~15_combout\);

-- Location: LCCOMB_X66_Y42_N30
\comb_94|comb_19|unidade~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~45_combout\ = \comb_94|comb_19|unidade~21_combout\ $ (((\comb_94|comb_19|unidade~22_combout\ & ((\comb_94|comb_19|unidade~23_combout\) # (!\comb_90|Mux523~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~21_combout\,
	datab => \comb_94|comb_19|unidade~23_combout\,
	datac => \comb_90|Mux523~1_combout\,
	datad => \comb_94|comb_19|unidade~22_combout\,
	combout => \comb_94|comb_19|unidade~45_combout\);

-- Location: LCCOMB_X73_Y37_N10
\comb_94|comb_19|dezena~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~16_combout\ = (\comb_94|comb_19|unidade~44_combout\ & (((\comb_94|comb_19|dezena~14_combout\) # (\comb_94|comb_19|dezena~12_combout\)))) # (!\comb_94|comb_19|unidade~44_combout\ & (!\comb_94|comb_19|dezena~12_combout\ & 
-- ((\comb_94|comb_19|dezena~13_combout\) # (!\comb_94|comb_19|dezena~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~13_combout\,
	datab => \comb_94|comb_19|unidade~44_combout\,
	datac => \comb_94|comb_19|dezena~14_combout\,
	datad => \comb_94|comb_19|dezena~12_combout\,
	combout => \comb_94|comb_19|dezena~16_combout\);

-- Location: LCCOMB_X73_Y37_N22
\comb_94|comb_19|dezena~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~18_combout\ = (\comb_94|comb_19|dezena~17_combout\ & (((!\comb_94|comb_19|unidade~45_combout\ & \comb_94|comb_19|dezena~16_combout\)))) # (!\comb_94|comb_19|dezena~17_combout\ & (\comb_94|comb_19|dezena~15_combout\ & 
-- ((\comb_94|comb_19|unidade~45_combout\) # (!\comb_94|comb_19|dezena~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~17_combout\,
	datab => \comb_94|comb_19|dezena~15_combout\,
	datac => \comb_94|comb_19|unidade~45_combout\,
	datad => \comb_94|comb_19|dezena~16_combout\,
	combout => \comb_94|comb_19|dezena~18_combout\);

-- Location: LCCOMB_X73_Y37_N0
\comb_94|comb_19|dezena~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~19_combout\ = (\comb_94|comb_19|dezena~15_combout\ & ((\comb_94|comb_19|unidade~45_combout\ $ (\comb_94|comb_19|dezena~16_combout\)))) # (!\comb_94|comb_19|dezena~15_combout\ & (!\comb_94|comb_19|dezena~16_combout\ & 
-- ((\comb_94|comb_19|unidade~45_combout\) # (!\comb_94|comb_19|dezena~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~17_combout\,
	datab => \comb_94|comb_19|dezena~15_combout\,
	datac => \comb_94|comb_19|unidade~45_combout\,
	datad => \comb_94|comb_19|dezena~16_combout\,
	combout => \comb_94|comb_19|dezena~19_combout\);

-- Location: LCCOMB_X73_Y46_N20
\comb_94|comb_19|unidade~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~46_combout\ = \comb_94|comb_19|unidade~24_combout\ $ (((\comb_94|comb_19|unidade~25_combout\ & ((\comb_94|comb_19|unidade~26_combout\) # (!\comb_90|Mux524~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~24_combout\,
	datab => \comb_90|Mux524~1_combout\,
	datac => \comb_94|comb_19|unidade~25_combout\,
	datad => \comb_94|comb_19|unidade~26_combout\,
	combout => \comb_94|comb_19|unidade~46_combout\);

-- Location: LCCOMB_X73_Y37_N26
\comb_94|comb_19|dezena~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~20_combout\ = (\comb_94|comb_19|dezena~17_combout\ & ((\comb_94|comb_19|unidade~45_combout\) # ((!\comb_94|comb_19|dezena~15_combout\ & \comb_94|comb_19|dezena~16_combout\)))) # (!\comb_94|comb_19|dezena~17_combout\ & 
-- (\comb_94|comb_19|dezena~15_combout\ $ ((!\comb_94|comb_19|unidade~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~17_combout\,
	datab => \comb_94|comb_19|dezena~15_combout\,
	datac => \comb_94|comb_19|unidade~45_combout\,
	datad => \comb_94|comb_19|dezena~16_combout\,
	combout => \comb_94|comb_19|dezena~20_combout\);

-- Location: LCCOMB_X73_Y37_N6
\comb_94|comb_19|dezena~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~22_combout\ = (\comb_94|comb_19|dezena~18_combout\ & (((\comb_94|comb_19|unidade~46_combout\)))) # (!\comb_94|comb_19|dezena~18_combout\ & ((\comb_94|comb_19|dezena~19_combout\ & ((\comb_94|comb_19|unidade~46_combout\) # 
-- (\comb_94|comb_19|dezena~20_combout\))) # (!\comb_94|comb_19|dezena~19_combout\ & (!\comb_94|comb_19|unidade~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~18_combout\,
	datab => \comb_94|comb_19|dezena~19_combout\,
	datac => \comb_94|comb_19|unidade~46_combout\,
	datad => \comb_94|comb_19|dezena~20_combout\,
	combout => \comb_94|comb_19|dezena~22_combout\);

-- Location: LCCOMB_X73_Y46_N26
\comb_94|comb_19|unidade~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|unidade~35_combout\ = \comb_94|comb_19|unidade~28_combout\ $ (((!\comb_94|comb_19|LessThan29~0_combout\ & \comb_94|comb_19|unidade~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_94|comb_19|LessThan29~0_combout\,
	datac => \comb_94|comb_19|unidade~28_combout\,
	datad => \comb_94|comb_19|unidade~27_combout\,
	combout => \comb_94|comb_19|unidade~35_combout\);

-- Location: LCCOMB_X73_Y37_N8
\comb_94|comb_19|dezena~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~23_combout\ = (\comb_94|comb_19|dezena~19_combout\ & (((!\comb_94|comb_19|unidade~46_combout\ & \comb_94|comb_19|dezena~20_combout\)))) # (!\comb_94|comb_19|dezena~19_combout\ & (\comb_94|comb_19|dezena~18_combout\ & 
-- ((\comb_94|comb_19|unidade~46_combout\) # (!\comb_94|comb_19|dezena~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~18_combout\,
	datab => \comb_94|comb_19|dezena~19_combout\,
	datac => \comb_94|comb_19|unidade~46_combout\,
	datad => \comb_94|comb_19|dezena~20_combout\,
	combout => \comb_94|comb_19|dezena~23_combout\);

-- Location: LCCOMB_X73_Y37_N4
\comb_94|comb_19|dezena~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~21_combout\ = (\comb_94|comb_19|dezena~18_combout\ & ((\comb_94|comb_19|unidade~46_combout\ $ (\comb_94|comb_19|dezena~20_combout\)))) # (!\comb_94|comb_19|dezena~18_combout\ & (!\comb_94|comb_19|dezena~20_combout\ & 
-- ((\comb_94|comb_19|unidade~46_combout\) # (!\comb_94|comb_19|dezena~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~18_combout\,
	datab => \comb_94|comb_19|dezena~19_combout\,
	datac => \comb_94|comb_19|unidade~46_combout\,
	datad => \comb_94|comb_19|dezena~20_combout\,
	combout => \comb_94|comb_19|dezena~21_combout\);

-- Location: LCCOMB_X81_Y33_N16
\comb_94|comb_19|dezena[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena[1]~24_combout\ = (\comb_94|comb_19|unidade~35_combout\ & (((\comb_94|comb_19|dezena~23_combout\) # (\comb_94|comb_19|dezena~21_combout\)))) # (!\comb_94|comb_19|unidade~35_combout\ & (!\comb_94|comb_19|dezena~23_combout\ & 
-- ((\comb_94|comb_19|dezena~22_combout\) # (!\comb_94|comb_19|dezena~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~22_combout\,
	datab => \comb_94|comb_19|unidade~35_combout\,
	datac => \comb_94|comb_19|dezena~23_combout\,
	datad => \comb_94|comb_19|dezena~21_combout\,
	combout => \comb_94|comb_19|dezena[1]~24_combout\);

-- Location: LCCOMB_X81_Y33_N20
\comb_94|comb_19|dezena[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena[3]~26_combout\ = (\comb_94|comb_19|dezena~21_combout\ & (\comb_94|comb_19|dezena~22_combout\ & (!\comb_94|comb_19|unidade~35_combout\))) # (!\comb_94|comb_19|dezena~21_combout\ & (\comb_94|comb_19|dezena~23_combout\ & 
-- ((\comb_94|comb_19|unidade~35_combout\) # (!\comb_94|comb_19|dezena~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~22_combout\,
	datab => \comb_94|comb_19|unidade~35_combout\,
	datac => \comb_94|comb_19|dezena~23_combout\,
	datad => \comb_94|comb_19|dezena~21_combout\,
	combout => \comb_94|comb_19|dezena[3]~26_combout\);

-- Location: LCCOMB_X81_Y33_N2
\comb_94|comb_19|dezena[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena[2]~25_combout\ = (\comb_94|comb_19|dezena~22_combout\ & (!\comb_94|comb_19|unidade~35_combout\ & (\comb_94|comb_19|dezena~23_combout\))) # (!\comb_94|comb_19|dezena~22_combout\ & ((\comb_94|comb_19|unidade~35_combout\) # 
-- ((!\comb_94|comb_19|dezena~23_combout\ & !\comb_94|comb_19|dezena~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~22_combout\,
	datab => \comb_94|comb_19|unidade~35_combout\,
	datac => \comb_94|comb_19|dezena~23_combout\,
	datad => \comb_94|comb_19|dezena~21_combout\,
	combout => \comb_94|comb_19|dezena[2]~25_combout\);

-- Location: LCCOMB_X81_Y33_N14
\comb_95|display2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[0]~0_combout\ = (\comb_95|Equal0~0_combout\ & (((\comb_94|comb_19|dezena[1]~24_combout\ & !\comb_94|comb_19|dezena[2]~25_combout\)) # (!\comb_94|comb_19|dezena[3]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|display2[0]~0_combout\);

-- Location: LCCOMB_X73_Y46_N30
\comb_94|comb_19|dezena[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena[0]~27_combout\ = \comb_94|comb_19|unidade~29_combout\ $ (((\comb_94|comb_19|unidade~31_combout\ & ((\comb_94|comb_19|unidade~30_combout\) # (!\comb_90|Mux526~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~30_combout\,
	datab => \comb_94|comb_19|unidade~29_combout\,
	datac => \comb_90|Mux526~1_combout\,
	datad => \comb_94|comb_19|unidade~31_combout\,
	combout => \comb_94|comb_19|dezena[0]~27_combout\);

-- Location: LCCOMB_X81_Y33_N8
\comb_95|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr8~0_combout\ = (\comb_94|comb_19|dezena[3]~26_combout\) # ((\comb_94|comb_19|dezena[1]~24_combout\ & ((\comb_94|comb_19|dezena[2]~25_combout\))) # (!\comb_94|comb_19|dezena[1]~24_combout\ & ((!\comb_94|comb_19|dezena[2]~25_combout\) # 
-- (!\comb_94|comb_19|dezena[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_94|comb_19|dezena[0]~27_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|WideOr8~0_combout\);

-- Location: LCCOMB_X84_Y30_N16
\comb_95|display2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[0]~1_combout\ = (\comb_95|display2[0]~0_combout\ & (((\comb_95|display1[0]~5_combout\ & !\comb_95|WideOr8~0_combout\)) # (!\comb_92|Selector6~2_combout\))) # (!\comb_95|display2[0]~0_combout\ & (((\comb_95|display1[0]~5_combout\ & 
-- !\comb_95|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display2[0]~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|WideOr8~0_combout\,
	combout => \comb_95|display2[0]~1_combout\);

-- Location: LCCOMB_X81_Y33_N26
\comb_95|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr7~0_combout\ = (!\comb_94|comb_19|dezena[3]~26_combout\ & ((\comb_94|comb_19|dezena[1]~24_combout\ & (\comb_94|comb_19|dezena[0]~27_combout\ & !\comb_94|comb_19|dezena[2]~25_combout\)) # (!\comb_94|comb_19|dezena[1]~24_combout\ & 
-- ((\comb_94|comb_19|dezena[0]~27_combout\) # (!\comb_94|comb_19|dezena[2]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_94|comb_19|dezena[0]~27_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|WideOr7~0_combout\);

-- Location: LCCOMB_X84_Y30_N2
\comb_95|display2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[1]~2_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|WideOr7~0_combout\) # ((!\comb_92|Selector6~2_combout\ & \comb_95|display2[0]~0_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (((!\comb_92|Selector6~2_combout\ & 
-- \comb_95|display2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|WideOr7~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|display2[0]~0_combout\,
	combout => \comb_95|display2[1]~2_combout\);

-- Location: LCCOMB_X81_Y33_N28
\comb_95|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr6~0_combout\ = (\comb_94|comb_19|dezena[1]~24_combout\ & ((\comb_94|comb_19|dezena[2]~25_combout\ & (!\comb_94|comb_19|dezena[3]~26_combout\)) # (!\comb_94|comb_19|dezena[2]~25_combout\ & ((\comb_94|comb_19|dezena[0]~27_combout\))))) # 
-- (!\comb_94|comb_19|dezena[1]~24_combout\ & (!\comb_94|comb_19|dezena[3]~26_combout\ & (\comb_94|comb_19|dezena[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_94|comb_19|dezena[0]~27_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|WideOr6~0_combout\);

-- Location: LCCOMB_X84_Y30_N20
\comb_95|display2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[2]~3_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|WideOr6~0_combout\) # ((!\comb_92|Selector6~2_combout\ & \comb_95|display2[0]~0_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (((!\comb_92|Selector6~2_combout\ & 
-- \comb_95|display2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|WideOr6~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|display2[0]~0_combout\,
	combout => \comb_95|display2[2]~3_combout\);

-- Location: LCCOMB_X81_Y33_N6
\comb_95|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr5~0_combout\ = (!\comb_94|comb_19|dezena[3]~26_combout\ & ((\comb_94|comb_19|dezena[1]~24_combout\ & (\comb_94|comb_19|dezena[0]~27_combout\ $ (\comb_94|comb_19|dezena[2]~25_combout\))) # (!\comb_94|comb_19|dezena[1]~24_combout\ & 
-- (\comb_94|comb_19|dezena[0]~27_combout\ & \comb_94|comb_19|dezena[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_94|comb_19|dezena[0]~27_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|WideOr5~0_combout\);

-- Location: LCCOMB_X84_Y30_N14
\comb_95|display2[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[3]~4_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|WideOr5~0_combout\) # ((!\comb_92|Selector6~2_combout\ & \comb_95|display2[0]~0_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (((!\comb_92|Selector6~2_combout\ & 
-- \comb_95|display2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|WideOr5~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|display2[0]~0_combout\,
	combout => \comb_95|display2[3]~4_combout\);

-- Location: LCCOMB_X81_Y33_N0
\comb_95|display2[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[4]~5_combout\ = (!\comb_94|comb_19|dezena[1]~24_combout\ & (!\comb_94|comb_19|dezena[3]~26_combout\ & (!\comb_94|comb_19|dezena[0]~27_combout\ & !\comb_94|comb_19|dezena[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_94|comb_19|dezena[0]~27_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|display2[4]~5_combout\);

-- Location: LCCOMB_X81_Y33_N18
\comb_95|display2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[0]~6_combout\ = (\comb_94|comb_19|dezena~22_combout\ & ((\comb_94|comb_19|unidade~35_combout\ & ((\comb_94|comb_19|dezena~23_combout\) # (\comb_94|comb_19|dezena~21_combout\))) # (!\comb_94|comb_19|unidade~35_combout\ & 
-- (!\comb_94|comb_19|dezena~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~22_combout\,
	datab => \comb_94|comb_19|unidade~35_combout\,
	datac => \comb_94|comb_19|dezena~23_combout\,
	datad => \comb_94|comb_19|dezena~21_combout\,
	combout => \comb_95|display2[0]~6_combout\);

-- Location: LCCOMB_X81_Y33_N12
\comb_95|display2[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[4]~7_combout\ = (\comb_95|display2[4]~5_combout\) # ((!\comb_95|display1[0]~5_combout\ & ((\comb_95|display2[0]~6_combout\) # (!\comb_94|comb_19|dezena[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display2[4]~5_combout\,
	datab => \comb_95|display2[0]~6_combout\,
	datac => \comb_95|display1[0]~5_combout\,
	datad => \comb_94|comb_19|dezena[3]~26_combout\,
	combout => \comb_95|display2[4]~7_combout\);

-- Location: LCCOMB_X81_Y33_N30
\comb_95|display2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2~8_combout\ = (!\comb_94|comb_19|dezena[3]~26_combout\ & (\comb_94|comb_19|dezena[2]~25_combout\ & (\comb_94|comb_19|dezena[1]~24_combout\ $ (!\comb_94|comb_19|dezena[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_94|comb_19|dezena[0]~27_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|display2~8_combout\);

-- Location: LCCOMB_X81_Y33_N24
\comb_95|display2[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[5]~9_combout\ = (\comb_95|display1[0]~5_combout\ & (\comb_95|display2~8_combout\)) # (!\comb_95|display1[0]~5_combout\ & (((\comb_95|display2[0]~6_combout\) # (!\comb_94|comb_19|dezena[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display2~8_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|display2[0]~6_combout\,
	combout => \comb_95|display2[5]~9_combout\);

-- Location: LCCOMB_X81_Y33_N10
\comb_95|display2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2~10_combout\ = (\comb_94|comb_19|dezena[1]~24_combout\ & (!\comb_94|comb_19|dezena[3]~26_combout\ & (\comb_94|comb_19|dezena[0]~27_combout\ $ (\comb_94|comb_19|dezena[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena[1]~24_combout\,
	datab => \comb_94|comb_19|dezena[3]~26_combout\,
	datac => \comb_94|comb_19|dezena[0]~27_combout\,
	datad => \comb_94|comb_19|dezena[2]~25_combout\,
	combout => \comb_95|display2~10_combout\);

-- Location: LCCOMB_X84_Y30_N24
\comb_95|display2[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display2[6]~11_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|display2~10_combout\) # ((!\comb_92|Selector6~2_combout\ & \comb_95|display2[0]~0_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (((!\comb_92|Selector6~2_combout\ & 
-- \comb_95|display2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|display2~10_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|display2[0]~0_combout\,
	combout => \comb_95|display2[6]~11_combout\);

-- Location: LCCOMB_X73_Y37_N30
\comb_94|comb_19|dezena~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~36_combout\ = \comb_94|comb_19|dezena~18_combout\ $ (((\comb_94|comb_19|dezena~19_combout\ & ((\comb_94|comb_19|unidade~46_combout\) # (!\comb_94|comb_19|dezena~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~18_combout\,
	datab => \comb_94|comb_19|dezena~19_combout\,
	datac => \comb_94|comb_19|unidade~46_combout\,
	datad => \comb_94|comb_19|dezena~20_combout\,
	combout => \comb_94|comb_19|dezena~36_combout\);

-- Location: LCCOMB_X73_Y37_N28
\comb_94|comb_19|dezena~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~35_combout\ = \comb_94|comb_19|dezena~12_combout\ $ (((\comb_94|comb_19|dezena~14_combout\ & ((\comb_94|comb_19|unidade~44_combout\) # (!\comb_94|comb_19|dezena~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~13_combout\,
	datab => \comb_94|comb_19|unidade~44_combout\,
	datac => \comb_94|comb_19|dezena~14_combout\,
	datad => \comb_94|comb_19|dezena~12_combout\,
	combout => \comb_94|comb_19|dezena~35_combout\);

-- Location: LCCOMB_X61_Y42_N26
\comb_94|comb_19|dezena~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~31_combout\ = (\comb_94|comb_19|unidade~38_combout\) # ((!\comb_94|comb_19|unidade~36_combout\ & !\comb_94|comb_19|unidade~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_94|comb_19|unidade~36_combout\,
	datac => \comb_94|comb_19|unidade~37_combout\,
	datad => \comb_94|comb_19|unidade~38_combout\,
	combout => \comb_94|comb_19|dezena~31_combout\);

-- Location: LCCOMB_X67_Y38_N26
\comb_94|comb_19|dezena~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~32_combout\ = \comb_94|comb_19|dezena~3_combout\ $ (((\comb_94|comb_19|dezena~5_combout\ & ((\comb_94|comb_19|unidade~41_combout\) # (!\comb_94|comb_19|dezena~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~4_combout\,
	datab => \comb_94|comb_19|dezena~3_combout\,
	datac => \comb_94|comb_19|unidade~41_combout\,
	datad => \comb_94|comb_19|dezena~5_combout\,
	combout => \comb_94|comb_19|dezena~32_combout\);

-- Location: LCCOMB_X67_Y38_N24
\comb_94|comb_19|dezena~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~30_combout\ = \comb_94|comb_19|dezena~0_combout\ $ (((\comb_94|comb_19|dezena~2_combout\ & ((\comb_94|comb_19|unidade~40_combout\) # (!\comb_94|comb_19|dezena~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~2_combout\,
	datab => \comb_94|comb_19|dezena~1_combout\,
	datac => \comb_94|comb_19|unidade~40_combout\,
	datad => \comb_94|comb_19|dezena~0_combout\,
	combout => \comb_94|comb_19|dezena~30_combout\);

-- Location: LCCOMB_X61_Y42_N8
\comb_94|comb_19|dezena~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~29_combout\ = (\comb_94|comb_19|unidade~36_combout\ & ((\comb_94|comb_19|unidade~39_combout\ & ((\comb_94|comb_19|unidade~37_combout\) # (\comb_94|comb_19|unidade~38_combout\))) # (!\comb_94|comb_19|unidade~39_combout\ & 
-- (\comb_94|comb_19|unidade~37_combout\ & \comb_94|comb_19|unidade~38_combout\)))) # (!\comb_94|comb_19|unidade~36_combout\ & (((!\comb_94|comb_19|unidade~37_combout\ & !\comb_94|comb_19|unidade~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~39_combout\,
	datab => \comb_94|comb_19|unidade~36_combout\,
	datac => \comb_94|comb_19|unidade~37_combout\,
	datad => \comb_94|comb_19|unidade~38_combout\,
	combout => \comb_94|comb_19|dezena~29_combout\);

-- Location: LCCOMB_X74_Y34_N10
\comb_94|comb_19|centena~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~1_combout\ = (\comb_94|comb_19|dezena~32_combout\ & (\comb_94|comb_19|dezena~29_combout\ $ (((!\comb_94|comb_19|dezena~31_combout\ & !\comb_94|comb_19|dezena~30_combout\))))) # (!\comb_94|comb_19|dezena~32_combout\ & 
-- ((\comb_94|comb_19|dezena~31_combout\ & ((!\comb_94|comb_19|dezena~29_combout\) # (!\comb_94|comb_19|dezena~30_combout\))) # (!\comb_94|comb_19|dezena~31_combout\ & ((\comb_94|comb_19|dezena~30_combout\) # (\comb_94|comb_19|dezena~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~31_combout\,
	datab => \comb_94|comb_19|dezena~32_combout\,
	datac => \comb_94|comb_19|dezena~30_combout\,
	datad => \comb_94|comb_19|dezena~29_combout\,
	combout => \comb_94|comb_19|centena~1_combout\);

-- Location: LCCOMB_X67_Y38_N28
\comb_94|comb_19|dezena~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~33_combout\ = \comb_94|comb_19|dezena~6_combout\ $ (((\comb_94|comb_19|dezena~8_combout\ & ((\comb_94|comb_19|unidade~42_combout\) # (!\comb_94|comb_19|dezena~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|unidade~42_combout\,
	datab => \comb_94|comb_19|dezena~8_combout\,
	datac => \comb_94|comb_19|dezena~7_combout\,
	datad => \comb_94|comb_19|dezena~6_combout\,
	combout => \comb_94|comb_19|dezena~33_combout\);

-- Location: LCCOMB_X74_Y34_N4
\comb_94|comb_19|centena~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~2_combout\ = (\comb_94|comb_19|dezena~31_combout\ & (\comb_94|comb_19|dezena~30_combout\ & ((\comb_94|comb_19|dezena~32_combout\) # (!\comb_94|comb_19|dezena~29_combout\)))) # (!\comb_94|comb_19|dezena~31_combout\ & 
-- (!\comb_94|comb_19|dezena~30_combout\ & ((\comb_94|comb_19|dezena~29_combout\) # (!\comb_94|comb_19|dezena~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~31_combout\,
	datab => \comb_94|comb_19|dezena~32_combout\,
	datac => \comb_94|comb_19|dezena~30_combout\,
	datad => \comb_94|comb_19|dezena~29_combout\,
	combout => \comb_94|comb_19|centena~2_combout\);

-- Location: LCCOMB_X74_Y34_N24
\comb_94|comb_19|centena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~0_combout\ = (\comb_94|comb_19|dezena~32_combout\ & (!\comb_94|comb_19|dezena~31_combout\ & (!\comb_94|comb_19|dezena~30_combout\ & !\comb_94|comb_19|dezena~29_combout\))) # (!\comb_94|comb_19|dezena~32_combout\ & 
-- (\comb_94|comb_19|dezena~29_combout\ & (\comb_94|comb_19|dezena~31_combout\ $ (\comb_94|comb_19|dezena~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~31_combout\,
	datab => \comb_94|comb_19|dezena~32_combout\,
	datac => \comb_94|comb_19|dezena~30_combout\,
	datad => \comb_94|comb_19|dezena~29_combout\,
	combout => \comb_94|comb_19|centena~0_combout\);

-- Location: LCCOMB_X74_Y34_N8
\comb_94|comb_19|centena~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~4_combout\ = (\comb_94|comb_19|dezena~33_combout\ & (((\comb_94|comb_19|centena~2_combout\) # (\comb_94|comb_19|centena~0_combout\)))) # (!\comb_94|comb_19|dezena~33_combout\ & (!\comb_94|comb_19|centena~0_combout\ & 
-- ((\comb_94|comb_19|centena~1_combout\) # (!\comb_94|comb_19|centena~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~1_combout\,
	datab => \comb_94|comb_19|dezena~33_combout\,
	datac => \comb_94|comb_19|centena~2_combout\,
	datad => \comb_94|comb_19|centena~0_combout\,
	combout => \comb_94|comb_19|centena~4_combout\);

-- Location: LCCOMB_X74_Y34_N2
\comb_94|comb_19|centena~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~5_combout\ = (\comb_94|comb_19|centena~1_combout\ & (!\comb_94|comb_19|dezena~33_combout\ & ((\comb_94|comb_19|centena~0_combout\)))) # (!\comb_94|comb_19|centena~1_combout\ & ((\comb_94|comb_19|dezena~33_combout\) # 
-- ((!\comb_94|comb_19|centena~2_combout\ & !\comb_94|comb_19|centena~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~1_combout\,
	datab => \comb_94|comb_19|dezena~33_combout\,
	datac => \comb_94|comb_19|centena~2_combout\,
	datad => \comb_94|comb_19|centena~0_combout\,
	combout => \comb_94|comb_19|centena~5_combout\);

-- Location: LCCOMB_X67_Y38_N14
\comb_94|comb_19|dezena~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~34_combout\ = \comb_94|comb_19|dezena~9_combout\ $ (((\comb_94|comb_19|dezena~11_combout\ & ((\comb_94|comb_19|unidade~43_combout\) # (!\comb_94|comb_19|dezena~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~9_combout\,
	datab => \comb_94|comb_19|unidade~43_combout\,
	datac => \comb_94|comb_19|dezena~10_combout\,
	datad => \comb_94|comb_19|dezena~11_combout\,
	combout => \comb_94|comb_19|dezena~34_combout\);

-- Location: LCCOMB_X74_Y34_N14
\comb_94|comb_19|centena~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~3_combout\ = (\comb_94|comb_19|centena~2_combout\ & (\comb_94|comb_19|centena~1_combout\ & (!\comb_94|comb_19|dezena~33_combout\))) # (!\comb_94|comb_19|centena~2_combout\ & (\comb_94|comb_19|centena~0_combout\ & 
-- ((\comb_94|comb_19|dezena~33_combout\) # (!\comb_94|comb_19|centena~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~1_combout\,
	datab => \comb_94|comb_19|dezena~33_combout\,
	datac => \comb_94|comb_19|centena~2_combout\,
	datad => \comb_94|comb_19|centena~0_combout\,
	combout => \comb_94|comb_19|centena~3_combout\);

-- Location: LCCOMB_X75_Y34_N0
\comb_94|comb_19|centena~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~6_combout\ = (\comb_94|comb_19|centena~5_combout\ & (\comb_94|comb_19|centena~4_combout\ & (!\comb_94|comb_19|dezena~34_combout\))) # (!\comb_94|comb_19|centena~5_combout\ & (\comb_94|comb_19|centena~3_combout\ & 
-- ((\comb_94|comb_19|dezena~34_combout\) # (!\comb_94|comb_19|centena~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~4_combout\,
	datab => \comb_94|comb_19|centena~5_combout\,
	datac => \comb_94|comb_19|dezena~34_combout\,
	datad => \comb_94|comb_19|centena~3_combout\,
	combout => \comb_94|comb_19|centena~6_combout\);

-- Location: LCCOMB_X75_Y34_N26
\comb_94|comb_19|centena~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~7_combout\ = (\comb_94|comb_19|centena~4_combout\ & (((!\comb_94|comb_19|dezena~34_combout\ & \comb_94|comb_19|centena~3_combout\)))) # (!\comb_94|comb_19|centena~4_combout\ & ((\comb_94|comb_19|dezena~34_combout\) # 
-- ((!\comb_94|comb_19|centena~5_combout\ & !\comb_94|comb_19|centena~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~4_combout\,
	datab => \comb_94|comb_19|centena~5_combout\,
	datac => \comb_94|comb_19|dezena~34_combout\,
	datad => \comb_94|comb_19|centena~3_combout\,
	combout => \comb_94|comb_19|centena~7_combout\);

-- Location: LCCOMB_X75_Y34_N28
\comb_94|comb_19|centena~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~8_combout\ = (\comb_94|comb_19|centena~5_combout\ & ((\comb_94|comb_19|dezena~34_combout\) # ((\comb_94|comb_19|centena~4_combout\ & !\comb_94|comb_19|centena~3_combout\)))) # (!\comb_94|comb_19|centena~5_combout\ & 
-- ((\comb_94|comb_19|dezena~34_combout\ $ (!\comb_94|comb_19|centena~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~4_combout\,
	datab => \comb_94|comb_19|centena~5_combout\,
	datac => \comb_94|comb_19|dezena~34_combout\,
	datad => \comb_94|comb_19|centena~3_combout\,
	combout => \comb_94|comb_19|centena~8_combout\);

-- Location: LCCOMB_X75_Y34_N10
\comb_94|comb_19|centena~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~11_combout\ = (\comb_94|comb_19|centena~7_combout\ & (!\comb_94|comb_19|dezena~35_combout\ & ((\comb_94|comb_19|centena~8_combout\)))) # (!\comb_94|comb_19|centena~7_combout\ & (\comb_94|comb_19|centena~6_combout\ & 
-- ((\comb_94|comb_19|dezena~35_combout\) # (!\comb_94|comb_19|centena~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~35_combout\,
	datab => \comb_94|comb_19|centena~6_combout\,
	datac => \comb_94|comb_19|centena~7_combout\,
	datad => \comb_94|comb_19|centena~8_combout\,
	combout => \comb_94|comb_19|centena~11_combout\);

-- Location: LCCOMB_X73_Y37_N2
\comb_94|comb_19|dezena~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezena~28_combout\ = \comb_94|comb_19|dezena~15_combout\ $ (((\comb_94|comb_19|dezena~17_combout\ & ((\comb_94|comb_19|unidade~45_combout\) # (!\comb_94|comb_19|dezena~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~17_combout\,
	datab => \comb_94|comb_19|dezena~15_combout\,
	datac => \comb_94|comb_19|unidade~45_combout\,
	datad => \comb_94|comb_19|dezena~16_combout\,
	combout => \comb_94|comb_19|dezena~28_combout\);

-- Location: LCCOMB_X75_Y34_N22
\comb_94|comb_19|centena~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~9_combout\ = (\comb_94|comb_19|dezena~35_combout\ & (((!\comb_94|comb_19|centena~8_combout\)))) # (!\comb_94|comb_19|dezena~35_combout\ & ((\comb_94|comb_19|centena~6_combout\ & ((\comb_94|comb_19|centena~8_combout\))) # 
-- (!\comb_94|comb_19|centena~6_combout\ & (!\comb_94|comb_19|centena~7_combout\ & !\comb_94|comb_19|centena~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~35_combout\,
	datab => \comb_94|comb_19|centena~6_combout\,
	datac => \comb_94|comb_19|centena~7_combout\,
	datad => \comb_94|comb_19|centena~8_combout\,
	combout => \comb_94|comb_19|centena~9_combout\);

-- Location: LCCOMB_X75_Y34_N24
\comb_94|comb_19|centena~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~10_combout\ = (\comb_94|comb_19|dezena~35_combout\ & ((\comb_94|comb_19|centena~6_combout\) # ((\comb_94|comb_19|centena~7_combout\)))) # (!\comb_94|comb_19|dezena~35_combout\ & (!\comb_94|comb_19|centena~6_combout\ & 
-- ((\comb_94|comb_19|centena~8_combout\) # (!\comb_94|comb_19|centena~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~35_combout\,
	datab => \comb_94|comb_19|centena~6_combout\,
	datac => \comb_94|comb_19|centena~7_combout\,
	datad => \comb_94|comb_19|centena~8_combout\,
	combout => \comb_94|comb_19|centena~10_combout\);

-- Location: LCCOMB_X75_Y34_N4
\comb_94|comb_19|centena~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~12_combout\ = (\comb_94|comb_19|centena~11_combout\ & (\comb_94|comb_19|dezena~28_combout\)) # (!\comb_94|comb_19|centena~11_combout\ & ((\comb_94|comb_19|dezena~28_combout\ & (\comb_94|comb_19|centena~9_combout\)) # 
-- (!\comb_94|comb_19|dezena~28_combout\ & ((\comb_94|comb_19|centena~10_combout\) # (!\comb_94|comb_19|centena~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~11_combout\,
	datab => \comb_94|comb_19|dezena~28_combout\,
	datac => \comb_94|comb_19|centena~9_combout\,
	datad => \comb_94|comb_19|centena~10_combout\,
	combout => \comb_94|comb_19|centena~12_combout\);

-- Location: LCCOMB_X75_Y34_N30
\comb_94|comb_19|centena~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~13_combout\ = (\comb_94|comb_19|centena~11_combout\ & (\comb_94|comb_19|dezena~28_combout\ $ (((\comb_94|comb_19|centena~10_combout\))))) # (!\comb_94|comb_19|centena~11_combout\ & (!\comb_94|comb_19|centena~10_combout\ & 
-- ((\comb_94|comb_19|dezena~28_combout\) # (!\comb_94|comb_19|centena~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~11_combout\,
	datab => \comb_94|comb_19|dezena~28_combout\,
	datac => \comb_94|comb_19|centena~9_combout\,
	datad => \comb_94|comb_19|centena~10_combout\,
	combout => \comb_94|comb_19|centena~13_combout\);

-- Location: LCCOMB_X75_Y34_N8
\comb_94|comb_19|centena~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~14_combout\ = (\comb_94|comb_19|centena~9_combout\ & (((!\comb_94|comb_19|dezena~28_combout\ & \comb_94|comb_19|centena~10_combout\)))) # (!\comb_94|comb_19|centena~9_combout\ & (\comb_94|comb_19|centena~11_combout\ & 
-- ((\comb_94|comb_19|dezena~28_combout\) # (!\comb_94|comb_19|centena~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~11_combout\,
	datab => \comb_94|comb_19|dezena~28_combout\,
	datac => \comb_94|comb_19|centena~9_combout\,
	datad => \comb_94|comb_19|centena~10_combout\,
	combout => \comb_94|comb_19|centena~14_combout\);

-- Location: LCCOMB_X83_Y30_N18
\comb_94|comb_19|centena[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena[3]~15_combout\ = (\comb_94|comb_19|centena~13_combout\ & (!\comb_94|comb_19|dezena~36_combout\ & (\comb_94|comb_19|centena~12_combout\))) # (!\comb_94|comb_19|centena~13_combout\ & (\comb_94|comb_19|centena~14_combout\ & 
-- ((\comb_94|comb_19|dezena~36_combout\) # (!\comb_94|comb_19|centena~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~36_combout\,
	datab => \comb_94|comb_19|centena~12_combout\,
	datac => \comb_94|comb_19|centena~13_combout\,
	datad => \comb_94|comb_19|centena~14_combout\,
	combout => \comb_94|comb_19|centena[3]~15_combout\);

-- Location: LCCOMB_X81_Y33_N4
\comb_94|comb_19|centena[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena[0]~16_combout\ = \comb_94|comb_19|dezena~23_combout\ $ (((\comb_94|comb_19|dezena~21_combout\ & ((\comb_94|comb_19|unidade~35_combout\) # (!\comb_94|comb_19|dezena~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~22_combout\,
	datab => \comb_94|comb_19|unidade~35_combout\,
	datac => \comb_94|comb_19|dezena~23_combout\,
	datad => \comb_94|comb_19|dezena~21_combout\,
	combout => \comb_94|comb_19|centena[0]~16_combout\);

-- Location: LCCOMB_X83_Y30_N30
\comb_94|comb_19|centena[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena[2]~18_combout\ = (\comb_94|comb_19|dezena~36_combout\ & (!\comb_94|comb_19|centena~12_combout\)) # (!\comb_94|comb_19|dezena~36_combout\ & ((\comb_94|comb_19|centena~12_combout\ & ((\comb_94|comb_19|centena~14_combout\))) # 
-- (!\comb_94|comb_19|centena~12_combout\ & (!\comb_94|comb_19|centena~13_combout\ & !\comb_94|comb_19|centena~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~36_combout\,
	datab => \comb_94|comb_19|centena~12_combout\,
	datac => \comb_94|comb_19|centena~13_combout\,
	datad => \comb_94|comb_19|centena~14_combout\,
	combout => \comb_94|comb_19|centena[2]~18_combout\);

-- Location: LCCOMB_X83_Y30_N28
\comb_94|comb_19|centena[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena[1]~17_combout\ = (\comb_94|comb_19|dezena~36_combout\ & (((\comb_94|comb_19|centena~13_combout\) # (\comb_94|comb_19|centena~14_combout\)))) # (!\comb_94|comb_19|dezena~36_combout\ & (!\comb_94|comb_19|centena~14_combout\ & 
-- ((\comb_94|comb_19|centena~12_combout\) # (!\comb_94|comb_19|centena~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~36_combout\,
	datab => \comb_94|comb_19|centena~12_combout\,
	datac => \comb_94|comb_19|centena~13_combout\,
	datad => \comb_94|comb_19|centena~14_combout\,
	combout => \comb_94|comb_19|centena[1]~17_combout\);

-- Location: LCCOMB_X83_Y30_N0
\comb_95|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr13~0_combout\ = (\comb_94|comb_19|centena[3]~15_combout\) # ((\comb_94|comb_19|centena[2]~18_combout\ & ((\comb_94|comb_19|centena[1]~17_combout\) # (!\comb_94|comb_19|centena[0]~16_combout\))) # (!\comb_94|comb_19|centena[2]~18_combout\ & 
-- ((!\comb_94|comb_19|centena[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[0]~16_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_94|comb_19|centena[2]~18_combout\,
	datad => \comb_94|comb_19|centena[1]~17_combout\,
	combout => \comb_95|WideOr13~0_combout\);

-- Location: LCCOMB_X83_Y30_N24
\comb_95|display3[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[1]~0_combout\ = (\comb_94|comb_19|centena~12_combout\ & ((\comb_94|comb_19|dezena~36_combout\ & ((\comb_94|comb_19|centena~13_combout\) # (\comb_94|comb_19|centena~14_combout\))) # (!\comb_94|comb_19|dezena~36_combout\ & 
-- ((!\comb_94|comb_19|centena~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~36_combout\,
	datab => \comb_94|comb_19|centena~12_combout\,
	datac => \comb_94|comb_19|centena~13_combout\,
	datad => \comb_94|comb_19|centena~14_combout\,
	combout => \comb_95|display3[1]~0_combout\);

-- Location: LCCOMB_X83_Y30_N10
\comb_95|display3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[0]~1_combout\ = (\comb_95|display1[0]~5_combout\ & (((!\comb_95|WideOr13~0_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (((\comb_95|display3[1]~0_combout\)) # (!\comb_94|comb_19|centena[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[3]~15_combout\,
	datab => \comb_95|display1[0]~5_combout\,
	datac => \comb_95|WideOr13~0_combout\,
	datad => \comb_95|display3[1]~0_combout\,
	combout => \comb_95|display3[0]~1_combout\);

-- Location: LCCOMB_X83_Y30_N14
\comb_95|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr12~0_combout\ = (!\comb_94|comb_19|centena[3]~15_combout\ & ((\comb_94|comb_19|centena[0]~16_combout\ & ((!\comb_94|comb_19|centena[1]~17_combout\) # (!\comb_94|comb_19|centena[2]~18_combout\))) # (!\comb_94|comb_19|centena[0]~16_combout\ & 
-- (!\comb_94|comb_19|centena[2]~18_combout\ & !\comb_94|comb_19|centena[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[0]~16_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_94|comb_19|centena[2]~18_combout\,
	datad => \comb_94|comb_19|centena[1]~17_combout\,
	combout => \comb_95|WideOr12~0_combout\);

-- Location: LCCOMB_X83_Y30_N12
\comb_95|display3[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[1]~2_combout\ = (\comb_95|Equal0~0_combout\ & (((!\comb_94|comb_19|centena[2]~18_combout\ & \comb_94|comb_19|centena[1]~17_combout\)) # (!\comb_94|comb_19|centena[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[2]~18_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_94|comb_19|centena[1]~17_combout\,
	combout => \comb_95|display3[1]~2_combout\);

-- Location: LCCOMB_X84_Y30_N10
\comb_95|display3[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[1]~3_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display3[1]~2_combout\) # ((\comb_95|WideOr12~0_combout\ & !\comb_95|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|WideOr12~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_95|display3[1]~2_combout\,
	combout => \comb_95|display3[1]~3_combout\);

-- Location: LCCOMB_X83_Y30_N8
\comb_95|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr11~0_combout\ = (\comb_94|comb_19|centena[1]~17_combout\ & ((\comb_94|comb_19|centena[2]~18_combout\ & ((!\comb_94|comb_19|centena[3]~15_combout\))) # (!\comb_94|comb_19|centena[2]~18_combout\ & (\comb_94|comb_19|centena[0]~16_combout\)))) 
-- # (!\comb_94|comb_19|centena[1]~17_combout\ & (\comb_94|comb_19|centena[0]~16_combout\ & (!\comb_94|comb_19|centena[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[0]~16_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_94|comb_19|centena[2]~18_combout\,
	datad => \comb_94|comb_19|centena[1]~17_combout\,
	combout => \comb_95|WideOr11~0_combout\);

-- Location: LCCOMB_X84_Y30_N4
\comb_95|display3[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[2]~4_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display3[1]~2_combout\) # ((\comb_95|WideOr11~0_combout\ & !\comb_95|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|WideOr11~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_95|display3[1]~2_combout\,
	combout => \comb_95|display3[2]~4_combout\);

-- Location: LCCOMB_X83_Y30_N2
\comb_95|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr10~0_combout\ = (!\comb_94|comb_19|centena[3]~15_combout\ & ((\comb_94|comb_19|centena[0]~16_combout\ & (\comb_94|comb_19|centena[2]~18_combout\ $ (\comb_94|comb_19|centena[1]~17_combout\))) # (!\comb_94|comb_19|centena[0]~16_combout\ & 
-- (\comb_94|comb_19|centena[2]~18_combout\ & \comb_94|comb_19|centena[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[0]~16_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_94|comb_19|centena[2]~18_combout\,
	datad => \comb_94|comb_19|centena[1]~17_combout\,
	combout => \comb_95|WideOr10~0_combout\);

-- Location: LCCOMB_X84_Y30_N22
\comb_95|display3[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[3]~5_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display3[1]~2_combout\) # ((\comb_95|WideOr10~0_combout\ & !\comb_95|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|WideOr10~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_95|display3[1]~2_combout\,
	combout => \comb_95|display3[3]~5_combout\);

-- Location: LCCOMB_X82_Y30_N8
\comb_95|display3[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[4]~7_combout\ = (!\comb_95|Equal0~0_combout\ & !\comb_94|comb_19|centena[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_94|comb_19|centena[0]~16_combout\,
	combout => \comb_95|display3[4]~7_combout\);

-- Location: LCCOMB_X83_Y30_N4
\comb_95|display3[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[4]~6_combout\ = (\comb_94|comb_19|dezena~36_combout\ & (\comb_94|comb_19|centena~12_combout\ & (!\comb_94|comb_19|centena~13_combout\ & !\comb_94|comb_19|centena~14_combout\))) # (!\comb_94|comb_19|dezena~36_combout\ & 
-- (!\comb_94|comb_19|centena~12_combout\ & (\comb_94|comb_19|centena~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~36_combout\,
	datab => \comb_94|comb_19|centena~12_combout\,
	datac => \comb_94|comb_19|centena~13_combout\,
	datad => \comb_94|comb_19|centena~14_combout\,
	combout => \comb_95|display3[4]~6_combout\);

-- Location: LCCOMB_X83_Y30_N22
\comb_95|display3[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[4]~8_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display3[1]~2_combout\) # ((\comb_95|display3[4]~7_combout\ & \comb_95|display3[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display3[4]~7_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|display3[4]~6_combout\,
	datad => \comb_95|display3[1]~2_combout\,
	combout => \comb_95|display3[4]~8_combout\);

-- Location: LCCOMB_X83_Y30_N16
\comb_95|display3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3~9_combout\ = (!\comb_94|comb_19|centena[3]~15_combout\ & (\comb_94|comb_19|centena[2]~18_combout\ & (\comb_94|comb_19|centena[0]~16_combout\ $ (!\comb_94|comb_19|centena[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[0]~16_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_94|comb_19|centena[2]~18_combout\,
	datad => \comb_94|comb_19|centena[1]~17_combout\,
	combout => \comb_95|display3~9_combout\);

-- Location: LCCOMB_X84_Y30_N8
\comb_95|display3[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[5]~10_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display3[1]~2_combout\) # ((\comb_95|display3~9_combout\ & !\comb_95|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display3~9_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_95|display3[1]~2_combout\,
	combout => \comb_95|display3[5]~10_combout\);

-- Location: LCCOMB_X83_Y30_N26
\comb_95|display3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3~11_combout\ = (!\comb_94|comb_19|centena[3]~15_combout\ & (\comb_94|comb_19|centena[1]~17_combout\ & (\comb_94|comb_19|centena[0]~16_combout\ $ (\comb_94|comb_19|centena[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena[0]~16_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_94|comb_19|centena[2]~18_combout\,
	datad => \comb_94|comb_19|centena[1]~17_combout\,
	combout => \comb_95|display3~11_combout\);

-- Location: LCCOMB_X83_Y30_N20
\comb_95|display3[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display3[6]~12_combout\ = (\comb_95|display1[0]~5_combout\ & (((\comb_95|display3~11_combout\)))) # (!\comb_95|display1[0]~5_combout\ & ((\comb_95|display3[1]~0_combout\) # ((!\comb_94|comb_19|centena[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display3[1]~0_combout\,
	datab => \comb_94|comb_19|centena[3]~15_combout\,
	datac => \comb_95|display3~11_combout\,
	datad => \comb_95|display1[0]~5_combout\,
	combout => \comb_95|display3[6]~12_combout\);

-- Location: LCCOMB_X83_Y30_N6
\comb_94|comb_19|milhar[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar[0]~9_combout\ = \comb_94|comb_19|centena~14_combout\ $ (((\comb_94|comb_19|centena~13_combout\ & ((\comb_94|comb_19|dezena~36_combout\) # (!\comb_94|comb_19|centena~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~36_combout\,
	datab => \comb_94|comb_19|centena~12_combout\,
	datac => \comb_94|comb_19|centena~13_combout\,
	datad => \comb_94|comb_19|centena~14_combout\,
	combout => \comb_94|comb_19|milhar[0]~9_combout\);

-- Location: LCCOMB_X75_Y34_N2
\comb_94|comb_19|centena~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~19_combout\ = \comb_94|comb_19|centena~11_combout\ $ (((\comb_94|comb_19|centena~9_combout\ & ((\comb_94|comb_19|dezena~28_combout\) # (!\comb_94|comb_19|centena~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~11_combout\,
	datab => \comb_94|comb_19|dezena~28_combout\,
	datac => \comb_94|comb_19|centena~9_combout\,
	datad => \comb_94|comb_19|centena~10_combout\,
	combout => \comb_94|comb_19|centena~19_combout\);

-- Location: LCCOMB_X75_Y34_N6
\comb_94|comb_19|centena~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~24_combout\ = \comb_94|comb_19|centena~6_combout\ $ (((\comb_94|comb_19|centena~7_combout\ & ((\comb_94|comb_19|dezena~35_combout\) # (!\comb_94|comb_19|centena~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~35_combout\,
	datab => \comb_94|comb_19|centena~6_combout\,
	datac => \comb_94|comb_19|centena~7_combout\,
	datad => \comb_94|comb_19|centena~8_combout\,
	combout => \comb_94|comb_19|centena~24_combout\);

-- Location: LCCOMB_X74_Y34_N22
\comb_94|comb_19|centena~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~21_combout\ = \comb_94|comb_19|centena~0_combout\ $ (((\comb_94|comb_19|centena~2_combout\ & ((\comb_94|comb_19|dezena~33_combout\) # (!\comb_94|comb_19|centena~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~1_combout\,
	datab => \comb_94|comb_19|dezena~33_combout\,
	datac => \comb_94|comb_19|centena~2_combout\,
	datad => \comb_94|comb_19|centena~0_combout\,
	combout => \comb_94|comb_19|centena~21_combout\);

-- Location: LCCOMB_X74_Y34_N12
\comb_94|comb_19|centena~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~20_combout\ = (\comb_94|comb_19|dezena~31_combout\ & (\comb_94|comb_19|dezena~29_combout\ & ((\comb_94|comb_19|dezena~32_combout\) # (\comb_94|comb_19|dezena~30_combout\)))) # (!\comb_94|comb_19|dezena~31_combout\ & 
-- ((\comb_94|comb_19|dezena~30_combout\ & (\comb_94|comb_19|dezena~32_combout\ & \comb_94|comb_19|dezena~29_combout\)) # (!\comb_94|comb_19|dezena~30_combout\ & ((!\comb_94|comb_19|dezena~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~31_combout\,
	datab => \comb_94|comb_19|dezena~32_combout\,
	datac => \comb_94|comb_19|dezena~30_combout\,
	datad => \comb_94|comb_19|dezena~29_combout\,
	combout => \comb_94|comb_19|centena~20_combout\);

-- Location: LCCOMB_X74_Y34_N0
\comb_94|comb_19|centena~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~22_combout\ = (\comb_94|comb_19|dezena~31_combout\) # ((!\comb_94|comb_19|dezena~30_combout\ & !\comb_94|comb_19|dezena~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezena~31_combout\,
	datac => \comb_94|comb_19|dezena~30_combout\,
	datad => \comb_94|comb_19|dezena~29_combout\,
	combout => \comb_94|comb_19|centena~22_combout\);

-- Location: LCCOMB_X75_Y34_N12
\comb_94|comb_19|centena~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|centena~23_combout\ = \comb_94|comb_19|centena~3_combout\ $ (((\comb_94|comb_19|centena~5_combout\ & ((\comb_94|comb_19|dezena~34_combout\) # (!\comb_94|comb_19|centena~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~4_combout\,
	datab => \comb_94|comb_19|centena~5_combout\,
	datac => \comb_94|comb_19|dezena~34_combout\,
	datad => \comb_94|comb_19|centena~3_combout\,
	combout => \comb_94|comb_19|centena~23_combout\);

-- Location: LCCOMB_X79_Y30_N16
\comb_94|comb_19|milhar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~0_combout\ = (\comb_94|comb_19|centena~20_combout\ & (!\comb_94|comb_19|centena~23_combout\ & (\comb_94|comb_19|centena~21_combout\ $ (\comb_94|comb_19|centena~22_combout\)))) # (!\comb_94|comb_19|centena~20_combout\ & 
-- (!\comb_94|comb_19|centena~21_combout\ & (!\comb_94|comb_19|centena~22_combout\ & \comb_94|comb_19|centena~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~21_combout\,
	datab => \comb_94|comb_19|centena~20_combout\,
	datac => \comb_94|comb_19|centena~22_combout\,
	datad => \comb_94|comb_19|centena~23_combout\,
	combout => \comb_94|comb_19|milhar~0_combout\);

-- Location: LCCOMB_X79_Y30_N26
\comb_94|comb_19|milhar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~1_combout\ = (\comb_94|comb_19|centena~21_combout\ & (\comb_94|comb_19|centena~22_combout\ & ((\comb_94|comb_19|centena~23_combout\) # (!\comb_94|comb_19|centena~20_combout\)))) # (!\comb_94|comb_19|centena~21_combout\ & 
-- (!\comb_94|comb_19|centena~22_combout\ & ((\comb_94|comb_19|centena~20_combout\) # (!\comb_94|comb_19|centena~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~21_combout\,
	datab => \comb_94|comb_19|centena~20_combout\,
	datac => \comb_94|comb_19|centena~22_combout\,
	datad => \comb_94|comb_19|centena~23_combout\,
	combout => \comb_94|comb_19|milhar~1_combout\);

-- Location: LCCOMB_X79_Y30_N12
\comb_94|comb_19|milhar~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~2_combout\ = (\comb_94|comb_19|centena~20_combout\ & ((\comb_94|comb_19|centena~21_combout\ & ((\comb_94|comb_19|centena~23_combout\) # (!\comb_94|comb_19|centena~22_combout\))) # (!\comb_94|comb_19|centena~21_combout\ & 
-- ((\comb_94|comb_19|centena~22_combout\) # (!\comb_94|comb_19|centena~23_combout\))))) # (!\comb_94|comb_19|centena~20_combout\ & (\comb_94|comb_19|centena~23_combout\ $ (((\comb_94|comb_19|centena~21_combout\) # (\comb_94|comb_19|centena~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~21_combout\,
	datab => \comb_94|comb_19|centena~20_combout\,
	datac => \comb_94|comb_19|centena~22_combout\,
	datad => \comb_94|comb_19|centena~23_combout\,
	combout => \comb_94|comb_19|milhar~2_combout\);

-- Location: LCCOMB_X79_Y30_N24
\comb_94|comb_19|milhar~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~4_combout\ = (\comb_94|comb_19|centena~24_combout\ & ((\comb_94|comb_19|milhar~0_combout\) # ((\comb_94|comb_19|milhar~1_combout\)))) # (!\comb_94|comb_19|centena~24_combout\ & (!\comb_94|comb_19|milhar~0_combout\ & 
-- ((\comb_94|comb_19|milhar~2_combout\) # (!\comb_94|comb_19|milhar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~24_combout\,
	datab => \comb_94|comb_19|milhar~0_combout\,
	datac => \comb_94|comb_19|milhar~1_combout\,
	datad => \comb_94|comb_19|milhar~2_combout\,
	combout => \comb_94|comb_19|milhar~4_combout\);

-- Location: LCCOMB_X79_Y30_N6
\comb_94|comb_19|milhar~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~3_combout\ = (\comb_94|comb_19|centena~24_combout\ & (((!\comb_94|comb_19|milhar~2_combout\)))) # (!\comb_94|comb_19|centena~24_combout\ & ((\comb_94|comb_19|milhar~0_combout\ & ((\comb_94|comb_19|milhar~2_combout\))) # 
-- (!\comb_94|comb_19|milhar~0_combout\ & (!\comb_94|comb_19|milhar~1_combout\ & !\comb_94|comb_19|milhar~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~24_combout\,
	datab => \comb_94|comb_19|milhar~0_combout\,
	datac => \comb_94|comb_19|milhar~1_combout\,
	datad => \comb_94|comb_19|milhar~2_combout\,
	combout => \comb_94|comb_19|milhar~3_combout\);

-- Location: LCCOMB_X79_Y30_N18
\comb_94|comb_19|milhar~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~5_combout\ = (\comb_94|comb_19|milhar~1_combout\ & (!\comb_94|comb_19|centena~24_combout\ & ((\comb_94|comb_19|milhar~2_combout\)))) # (!\comb_94|comb_19|milhar~1_combout\ & (\comb_94|comb_19|milhar~0_combout\ & 
-- ((\comb_94|comb_19|centena~24_combout\) # (!\comb_94|comb_19|milhar~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~24_combout\,
	datab => \comb_94|comb_19|milhar~0_combout\,
	datac => \comb_94|comb_19|milhar~1_combout\,
	datad => \comb_94|comb_19|milhar~2_combout\,
	combout => \comb_94|comb_19|milhar~5_combout\);

-- Location: LCCOMB_X82_Y30_N28
\comb_94|comb_19|milhar[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar[2]~7_combout\ = (\comb_94|comb_19|centena~19_combout\ & (!\comb_94|comb_19|milhar~4_combout\)) # (!\comb_94|comb_19|centena~19_combout\ & ((\comb_94|comb_19|milhar~4_combout\ & ((\comb_94|comb_19|milhar~5_combout\))) # 
-- (!\comb_94|comb_19|milhar~4_combout\ & (!\comb_94|comb_19|milhar~3_combout\ & !\comb_94|comb_19|milhar~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~19_combout\,
	datab => \comb_94|comb_19|milhar~4_combout\,
	datac => \comb_94|comb_19|milhar~3_combout\,
	datad => \comb_94|comb_19|milhar~5_combout\,
	combout => \comb_94|comb_19|milhar[2]~7_combout\);

-- Location: LCCOMB_X82_Y30_N22
\comb_94|comb_19|milhar[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar[3]~8_combout\ = (\comb_94|comb_19|milhar~3_combout\ & (!\comb_94|comb_19|centena~19_combout\ & (\comb_94|comb_19|milhar~4_combout\))) # (!\comb_94|comb_19|milhar~3_combout\ & (\comb_94|comb_19|milhar~5_combout\ & 
-- ((\comb_94|comb_19|centena~19_combout\) # (!\comb_94|comb_19|milhar~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~19_combout\,
	datab => \comb_94|comb_19|milhar~4_combout\,
	datac => \comb_94|comb_19|milhar~3_combout\,
	datad => \comb_94|comb_19|milhar~5_combout\,
	combout => \comb_94|comb_19|milhar[3]~8_combout\);

-- Location: LCCOMB_X82_Y30_N2
\comb_94|comb_19|milhar[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar[1]~6_combout\ = (\comb_94|comb_19|centena~19_combout\ & (((\comb_94|comb_19|milhar~3_combout\) # (\comb_94|comb_19|milhar~5_combout\)))) # (!\comb_94|comb_19|centena~19_combout\ & (!\comb_94|comb_19|milhar~5_combout\ & 
-- ((\comb_94|comb_19|milhar~4_combout\) # (!\comb_94|comb_19|milhar~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~19_combout\,
	datab => \comb_94|comb_19|milhar~4_combout\,
	datac => \comb_94|comb_19|milhar~3_combout\,
	datad => \comb_94|comb_19|milhar~5_combout\,
	combout => \comb_94|comb_19|milhar[1]~6_combout\);

-- Location: LCCOMB_X82_Y30_N26
\comb_95|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr18~0_combout\ = (\comb_94|comb_19|milhar[3]~8_combout\) # ((\comb_94|comb_19|milhar[2]~7_combout\ & ((\comb_94|comb_19|milhar[1]~6_combout\) # (!\comb_94|comb_19|milhar[0]~9_combout\))) # (!\comb_94|comb_19|milhar[2]~7_combout\ & 
-- ((!\comb_94|comb_19|milhar[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar[0]~9_combout\,
	datab => \comb_94|comb_19|milhar[2]~7_combout\,
	datac => \comb_94|comb_19|milhar[3]~8_combout\,
	datad => \comb_94|comb_19|milhar[1]~6_combout\,
	combout => \comb_95|WideOr18~0_combout\);

-- Location: LCCOMB_X82_Y30_N0
\comb_95|display4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[0]~0_combout\ = (\comb_95|Equal0~0_combout\ & (((!\comb_94|comb_19|milhar[2]~7_combout\ & \comb_94|comb_19|milhar[1]~6_combout\)) # (!\comb_94|comb_19|milhar[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar[3]~8_combout\,
	datab => \comb_94|comb_19|milhar[2]~7_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_94|comb_19|milhar[1]~6_combout\,
	combout => \comb_95|display4[0]~0_combout\);

-- Location: LCCOMB_X82_Y30_N4
\comb_95|display4[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[0]~1_combout\ = (\comb_92|Selector6~2_combout\) # ((\comb_95|display4[0]~0_combout\) # ((!\comb_95|WideOr18~0_combout\ & !\comb_95|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|WideOr18~0_combout\,
	datab => \comb_92|Selector6~2_combout\,
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_95|display4[0]~0_combout\,
	combout => \comb_95|display4[0]~1_combout\);

-- Location: LCCOMB_X82_Y30_N30
\comb_95|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr17~0_combout\ = (!\comb_94|comb_19|milhar[3]~8_combout\ & ((\comb_94|comb_19|milhar[0]~9_combout\ & ((!\comb_94|comb_19|milhar[1]~6_combout\) # (!\comb_94|comb_19|milhar[2]~7_combout\))) # (!\comb_94|comb_19|milhar[0]~9_combout\ & 
-- (!\comb_94|comb_19|milhar[2]~7_combout\ & !\comb_94|comb_19|milhar[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar[0]~9_combout\,
	datab => \comb_94|comb_19|milhar[2]~7_combout\,
	datac => \comb_94|comb_19|milhar[3]~8_combout\,
	datad => \comb_94|comb_19|milhar[1]~6_combout\,
	combout => \comb_95|WideOr17~0_combout\);

-- Location: LCCOMB_X84_Y30_N26
\comb_95|display4[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[1]~2_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|WideOr17~0_combout\) # ((\comb_95|display4[0]~0_combout\ & !\comb_92|Selector6~2_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (\comb_95|display4[0]~0_combout\ & 
-- (!\comb_92|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|display4[0]~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|WideOr17~0_combout\,
	combout => \comb_95|display4[1]~2_combout\);

-- Location: LCCOMB_X82_Y30_N24
\comb_95|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr16~0_combout\ = (\comb_94|comb_19|milhar[1]~6_combout\ & ((\comb_94|comb_19|milhar[2]~7_combout\ & ((!\comb_94|comb_19|milhar[3]~8_combout\))) # (!\comb_94|comb_19|milhar[2]~7_combout\ & (\comb_94|comb_19|milhar[0]~9_combout\)))) # 
-- (!\comb_94|comb_19|milhar[1]~6_combout\ & (\comb_94|comb_19|milhar[0]~9_combout\ & ((!\comb_94|comb_19|milhar[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar[0]~9_combout\,
	datab => \comb_94|comb_19|milhar[2]~7_combout\,
	datac => \comb_94|comb_19|milhar[3]~8_combout\,
	datad => \comb_94|comb_19|milhar[1]~6_combout\,
	combout => \comb_95|WideOr16~0_combout\);

-- Location: LCCOMB_X84_Y30_N28
\comb_95|display4[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[2]~3_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|WideOr16~0_combout\) # ((\comb_95|display4[0]~0_combout\ & !\comb_92|Selector6~2_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (\comb_95|display4[0]~0_combout\ & 
-- (!\comb_92|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|display4[0]~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|WideOr16~0_combout\,
	combout => \comb_95|display4[2]~3_combout\);

-- Location: LCCOMB_X82_Y30_N10
\comb_95|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr15~0_combout\ = (!\comb_94|comb_19|milhar[3]~8_combout\ & ((\comb_94|comb_19|milhar[0]~9_combout\ & (\comb_94|comb_19|milhar[2]~7_combout\ $ (\comb_94|comb_19|milhar[1]~6_combout\))) # (!\comb_94|comb_19|milhar[0]~9_combout\ & 
-- (\comb_94|comb_19|milhar[2]~7_combout\ & \comb_94|comb_19|milhar[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar[0]~9_combout\,
	datab => \comb_94|comb_19|milhar[2]~7_combout\,
	datac => \comb_94|comb_19|milhar[3]~8_combout\,
	datad => \comb_94|comb_19|milhar[1]~6_combout\,
	combout => \comb_95|WideOr15~0_combout\);

-- Location: LCCOMB_X84_Y30_N30
\comb_95|display4[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[3]~4_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|WideOr15~0_combout\) # ((\comb_95|display4[0]~0_combout\ & !\comb_92|Selector6~2_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (\comb_95|display4[0]~0_combout\ & 
-- (!\comb_92|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|display4[0]~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|WideOr15~0_combout\,
	combout => \comb_95|display4[3]~4_combout\);

-- Location: LCCOMB_X82_Y30_N14
\comb_95|display4[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[4]~6_combout\ = (!\comb_95|Equal0~0_combout\ & !\comb_94|comb_19|milhar[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_95|Equal0~0_combout\,
	datad => \comb_94|comb_19|milhar[0]~9_combout\,
	combout => \comb_95|display4[4]~6_combout\);

-- Location: LCCOMB_X82_Y30_N20
\comb_95|display4[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[4]~5_combout\ = (\comb_94|comb_19|centena~19_combout\ & (\comb_94|comb_19|milhar~4_combout\ & (!\comb_94|comb_19|milhar~3_combout\ & !\comb_94|comb_19|milhar~5_combout\))) # (!\comb_94|comb_19|centena~19_combout\ & 
-- (!\comb_94|comb_19|milhar~4_combout\ & (\comb_94|comb_19|milhar~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~19_combout\,
	datab => \comb_94|comb_19|milhar~4_combout\,
	datac => \comb_94|comb_19|milhar~3_combout\,
	datad => \comb_94|comb_19|milhar~5_combout\,
	combout => \comb_95|display4[4]~5_combout\);

-- Location: LCCOMB_X82_Y30_N16
\comb_95|display4[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[4]~7_combout\ = (!\comb_92|Selector6~2_combout\ & ((\comb_95|display4[0]~0_combout\) # ((\comb_95|display4[4]~6_combout\ & \comb_95|display4[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display4[4]~6_combout\,
	datab => \comb_95|display4[4]~5_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|display4[0]~0_combout\,
	combout => \comb_95|display4[4]~7_combout\);

-- Location: LCCOMB_X82_Y30_N18
\comb_95|display4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4~8_combout\ = (\comb_94|comb_19|milhar[2]~7_combout\ & (!\comb_94|comb_19|milhar[3]~8_combout\ & (\comb_94|comb_19|milhar[0]~9_combout\ $ (!\comb_94|comb_19|milhar[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar[0]~9_combout\,
	datab => \comb_94|comb_19|milhar[2]~7_combout\,
	datac => \comb_94|comb_19|milhar[3]~8_combout\,
	datad => \comb_94|comb_19|milhar[1]~6_combout\,
	combout => \comb_95|display4~8_combout\);

-- Location: LCCOMB_X84_Y30_N0
\comb_95|display4[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[5]~9_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|display4~8_combout\) # ((\comb_95|display4[0]~0_combout\ & !\comb_92|Selector6~2_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (\comb_95|display4[0]~0_combout\ & 
-- (!\comb_92|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|display4[0]~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|display4~8_combout\,
	combout => \comb_95|display4[5]~9_combout\);

-- Location: LCCOMB_X82_Y30_N12
\comb_95|display4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4~10_combout\ = (!\comb_94|comb_19|milhar[3]~8_combout\ & (\comb_94|comb_19|milhar[1]~6_combout\ & (\comb_94|comb_19|milhar[0]~9_combout\ $ (\comb_94|comb_19|milhar[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar[0]~9_combout\,
	datab => \comb_94|comb_19|milhar[2]~7_combout\,
	datac => \comb_94|comb_19|milhar[3]~8_combout\,
	datad => \comb_94|comb_19|milhar[1]~6_combout\,
	combout => \comb_95|display4~10_combout\);

-- Location: LCCOMB_X84_Y30_N18
\comb_95|display4[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display4[6]~11_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_95|display4~10_combout\) # ((\comb_95|display4[0]~0_combout\ & !\comb_92|Selector6~2_combout\)))) # (!\comb_95|display1[0]~5_combout\ & (\comb_95|display4[0]~0_combout\ & 
-- (!\comb_92|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_95|display1[0]~5_combout\,
	datab => \comb_95|display4[0]~0_combout\,
	datac => \comb_92|Selector6~2_combout\,
	datad => \comb_95|display4~10_combout\,
	combout => \comb_95|display4[6]~11_combout\);

-- Location: LCCOMB_X82_Y30_N6
\comb_94|comb_19|dezenademilhar[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|dezenademilhar[0]~0_combout\ = \comb_94|comb_19|milhar~5_combout\ $ (((\comb_94|comb_19|milhar~3_combout\ & ((\comb_94|comb_19|centena~19_combout\) # (!\comb_94|comb_19|milhar~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~19_combout\,
	datab => \comb_94|comb_19|milhar~4_combout\,
	datac => \comb_94|comb_19|milhar~3_combout\,
	datad => \comb_94|comb_19|milhar~5_combout\,
	combout => \comb_94|comb_19|dezenademilhar[0]~0_combout\);

-- Location: LCCOMB_X79_Y30_N0
\comb_94|comb_19|milhar~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~12_combout\ = \comb_94|comb_19|milhar~0_combout\ $ (((\comb_94|comb_19|milhar~1_combout\ & ((\comb_94|comb_19|centena~24_combout\) # (!\comb_94|comb_19|milhar~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~24_combout\,
	datab => \comb_94|comb_19|milhar~0_combout\,
	datac => \comb_94|comb_19|milhar~1_combout\,
	datad => \comb_94|comb_19|milhar~2_combout\,
	combout => \comb_94|comb_19|milhar~12_combout\);

-- Location: LCCOMB_X79_Y30_N28
\comb_94|comb_19|milhar~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~10_combout\ = (\comb_94|comb_19|centena~22_combout\) # ((!\comb_94|comb_19|centena~21_combout\ & !\comb_94|comb_19|centena~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~21_combout\,
	datac => \comb_94|comb_19|centena~22_combout\,
	datad => \comb_94|comb_19|centena~20_combout\,
	combout => \comb_94|comb_19|milhar~10_combout\);

-- Location: LCCOMB_X79_Y30_N30
\comb_94|comb_19|milhar~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_94|comb_19|milhar~11_combout\ = (\comb_94|comb_19|centena~21_combout\ & (\comb_94|comb_19|centena~20_combout\ & ((\comb_94|comb_19|centena~22_combout\) # (\comb_94|comb_19|centena~23_combout\)))) # (!\comb_94|comb_19|centena~21_combout\ & 
-- ((\comb_94|comb_19|centena~20_combout\ & (\comb_94|comb_19|centena~22_combout\ & \comb_94|comb_19|centena~23_combout\)) # (!\comb_94|comb_19|centena~20_combout\ & (!\comb_94|comb_19|centena~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|centena~21_combout\,
	datab => \comb_94|comb_19|centena~20_combout\,
	datac => \comb_94|comb_19|centena~22_combout\,
	datad => \comb_94|comb_19|centena~23_combout\,
	combout => \comb_94|comb_19|milhar~11_combout\);

-- Location: LCCOMB_X79_Y4_N0
\comb_95|WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr23~0_combout\ = (\comb_94|comb_19|milhar~11_combout\ & (\comb_94|comb_19|dezenademilhar[0]~0_combout\ & (\comb_94|comb_19|milhar~12_combout\ & \comb_94|comb_19|milhar~10_combout\))) # (!\comb_94|comb_19|milhar~11_combout\ & 
-- ((\comb_94|comb_19|milhar~12_combout\ $ (\comb_94|comb_19|milhar~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezenademilhar[0]~0_combout\,
	datab => \comb_94|comb_19|milhar~12_combout\,
	datac => \comb_94|comb_19|milhar~10_combout\,
	datad => \comb_94|comb_19|milhar~11_combout\,
	combout => \comb_95|WideOr23~0_combout\);

-- Location: LCCOMB_X79_Y4_N10
\comb_95|display5[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[0]~0_combout\ = (\comb_95|WideOr23~0_combout\) # (!\comb_95|display1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|WideOr23~0_combout\,
	combout => \comb_95|display5[0]~0_combout\);

-- Location: LCCOMB_X79_Y4_N28
\comb_95|WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr22~0_combout\ = (\comb_94|comb_19|milhar~12_combout\ & ((\comb_94|comb_19|dezenademilhar[0]~0_combout\ & (!\comb_94|comb_19|milhar~10_combout\ & \comb_94|comb_19|milhar~11_combout\)) # (!\comb_94|comb_19|dezenademilhar[0]~0_combout\ & 
-- ((\comb_94|comb_19|milhar~11_combout\) # (!\comb_94|comb_19|milhar~10_combout\))))) # (!\comb_94|comb_19|milhar~12_combout\ & ((\comb_94|comb_19|milhar~10_combout\ & ((\comb_94|comb_19|milhar~11_combout\) # 
-- (!\comb_94|comb_19|dezenademilhar[0]~0_combout\))) # (!\comb_94|comb_19|milhar~10_combout\ & ((!\comb_94|comb_19|milhar~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezenademilhar[0]~0_combout\,
	datab => \comb_94|comb_19|milhar~12_combout\,
	datac => \comb_94|comb_19|milhar~10_combout\,
	datad => \comb_94|comb_19|milhar~11_combout\,
	combout => \comb_95|WideOr22~0_combout\);

-- Location: LCCOMB_X79_Y4_N30
\comb_95|display5[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[1]~1_combout\ = (!\comb_95|WideOr22~0_combout\) # (!\comb_95|display1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|WideOr22~0_combout\,
	combout => \comb_95|display5[1]~1_combout\);

-- Location: LCCOMB_X79_Y4_N16
\comb_95|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr21~0_combout\ = (\comb_94|comb_19|dezenademilhar[0]~0_combout\) # ((\comb_94|comb_19|milhar~11_combout\ & (\comb_94|comb_19|milhar~12_combout\ $ (\comb_94|comb_19|milhar~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezenademilhar[0]~0_combout\,
	datab => \comb_94|comb_19|milhar~12_combout\,
	datac => \comb_94|comb_19|milhar~10_combout\,
	datad => \comb_94|comb_19|milhar~11_combout\,
	combout => \comb_95|WideOr21~0_combout\);

-- Location: LCCOMB_X79_Y4_N26
\comb_95|display5[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[2]~2_combout\ = (\comb_95|WideOr21~0_combout\) # (!\comb_95|display1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|WideOr21~0_combout\,
	combout => \comb_95|display5[2]~2_combout\);

-- Location: LCCOMB_X79_Y4_N12
\comb_95|WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|WideOr20~0_combout\ = (\comb_94|comb_19|dezenademilhar[0]~0_combout\ & ((\comb_94|comb_19|milhar~12_combout\ & (\comb_94|comb_19|milhar~10_combout\ $ (!\comb_94|comb_19|milhar~11_combout\))) # (!\comb_94|comb_19|milhar~12_combout\ & 
-- (\comb_94|comb_19|milhar~10_combout\ & !\comb_94|comb_19|milhar~11_combout\)))) # (!\comb_94|comb_19|dezenademilhar[0]~0_combout\ & (\comb_94|comb_19|milhar~11_combout\ & (\comb_94|comb_19|milhar~12_combout\ $ (\comb_94|comb_19|milhar~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezenademilhar[0]~0_combout\,
	datab => \comb_94|comb_19|milhar~12_combout\,
	datac => \comb_94|comb_19|milhar~10_combout\,
	datad => \comb_94|comb_19|milhar~11_combout\,
	combout => \comb_95|WideOr20~0_combout\);

-- Location: LCCOMB_X79_Y4_N22
\comb_95|display5[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[3]~3_combout\ = (\comb_95|WideOr20~0_combout\) # (!\comb_95|display1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|WideOr20~0_combout\,
	combout => \comb_95|display5[3]~3_combout\);

-- Location: LCCOMB_X79_Y4_N8
\comb_95|display5[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[4]~4_combout\ = (\comb_95|display1[0]~5_combout\ & ((\comb_94|comb_19|milhar~10_combout\ & (\comb_94|comb_19|milhar~12_combout\ & !\comb_94|comb_19|milhar~11_combout\)) # (!\comb_94|comb_19|milhar~10_combout\ & 
-- (!\comb_94|comb_19|milhar~12_combout\ & \comb_94|comb_19|milhar~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|milhar~10_combout\,
	datab => \comb_95|display1[0]~5_combout\,
	datac => \comb_94|comb_19|milhar~12_combout\,
	datad => \comb_94|comb_19|milhar~11_combout\,
	combout => \comb_95|display5[4]~4_combout\);

-- Location: LCCOMB_X79_Y4_N2
\comb_95|display5[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[4]~5_combout\ = ((\comb_95|display5[4]~4_combout\ & !\comb_94|comb_19|dezenademilhar[0]~0_combout\)) # (!\comb_95|display1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_95|display1[0]~5_combout\,
	datac => \comb_95|display5[4]~4_combout\,
	datad => \comb_94|comb_19|dezenademilhar[0]~0_combout\,
	combout => \comb_95|display5[4]~5_combout\);

-- Location: LCCOMB_X79_Y4_N20
\comb_95|display5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5~6_combout\ = (\comb_94|comb_19|milhar~11_combout\ & ((\comb_94|comb_19|dezenademilhar[0]~0_combout\ & (\comb_94|comb_19|milhar~12_combout\ $ (\comb_94|comb_19|milhar~10_combout\))) # (!\comb_94|comb_19|dezenademilhar[0]~0_combout\ & 
-- (\comb_94|comb_19|milhar~12_combout\ & \comb_94|comb_19|milhar~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezenademilhar[0]~0_combout\,
	datab => \comb_94|comb_19|milhar~12_combout\,
	datac => \comb_94|comb_19|milhar~10_combout\,
	datad => \comb_94|comb_19|milhar~11_combout\,
	combout => \comb_95|display5~6_combout\);

-- Location: LCCOMB_X79_Y4_N6
\comb_95|display5[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[5]~7_combout\ = (\comb_95|display5~6_combout\) # (!\comb_95|display1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|display5~6_combout\,
	combout => \comb_95|display5[5]~7_combout\);

-- Location: LCCOMB_X79_Y4_N24
\comb_95|display5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5~8_combout\ = (\comb_94|comb_19|dezenademilhar[0]~0_combout\ & (!\comb_94|comb_19|milhar~11_combout\ & (\comb_94|comb_19|milhar~12_combout\ $ (\comb_94|comb_19|milhar~10_combout\)))) # (!\comb_94|comb_19|dezenademilhar[0]~0_combout\ & 
-- (\comb_94|comb_19|milhar~11_combout\ & (\comb_94|comb_19|milhar~12_combout\ $ (\comb_94|comb_19|milhar~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_94|comb_19|dezenademilhar[0]~0_combout\,
	datab => \comb_94|comb_19|milhar~12_combout\,
	datac => \comb_94|comb_19|milhar~10_combout\,
	datad => \comb_94|comb_19|milhar~11_combout\,
	combout => \comb_95|display5~8_combout\);

-- Location: LCCOMB_X79_Y4_N18
\comb_95|display5[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_95|display5[6]~9_combout\ = (\comb_95|display5~8_combout\) # (!\comb_95|display1[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_95|display1[0]~5_combout\,
	datad => \comb_95|display5~8_combout\,
	combout => \comb_95|display5[6]~9_combout\);

ww_display1(0) <= \display1[0]~output_o\;

ww_display1(1) <= \display1[1]~output_o\;

ww_display1(2) <= \display1[2]~output_o\;

ww_display1(3) <= \display1[3]~output_o\;

ww_display1(4) <= \display1[4]~output_o\;

ww_display1(5) <= \display1[5]~output_o\;

ww_display1(6) <= \display1[6]~output_o\;

ww_display2(0) <= \display2[0]~output_o\;

ww_display2(1) <= \display2[1]~output_o\;

ww_display2(2) <= \display2[2]~output_o\;

ww_display2(3) <= \display2[3]~output_o\;

ww_display2(4) <= \display2[4]~output_o\;

ww_display2(5) <= \display2[5]~output_o\;

ww_display2(6) <= \display2[6]~output_o\;

ww_display3(0) <= \display3[0]~output_o\;

ww_display3(1) <= \display3[1]~output_o\;

ww_display3(2) <= \display3[2]~output_o\;

ww_display3(3) <= \display3[3]~output_o\;

ww_display3(4) <= \display3[4]~output_o\;

ww_display3(5) <= \display3[5]~output_o\;

ww_display3(6) <= \display3[6]~output_o\;

ww_display4(0) <= \display4[0]~output_o\;

ww_display4(1) <= \display4[1]~output_o\;

ww_display4(2) <= \display4[2]~output_o\;

ww_display4(3) <= \display4[3]~output_o\;

ww_display4(4) <= \display4[4]~output_o\;

ww_display4(5) <= \display4[5]~output_o\;

ww_display4(6) <= \display4[6]~output_o\;

ww_display5(0) <= \display5[0]~output_o\;

ww_display5(1) <= \display5[1]~output_o\;

ww_display5(2) <= \display5[2]~output_o\;

ww_display5(3) <= \display5[3]~output_o\;

ww_display5(4) <= \display5[4]~output_o\;

ww_display5(5) <= \display5[5]~output_o\;

ww_display5(6) <= \display5[6]~output_o\;

ww_codigo(0) <= \codigo[0]~output_o\;

ww_codigo(1) <= \codigo[1]~output_o\;

ww_codigo(2) <= \codigo[2]~output_o\;

ww_codigo(3) <= \codigo[3]~output_o\;

ww_codigo(4) <= \codigo[4]~output_o\;
END structure;


