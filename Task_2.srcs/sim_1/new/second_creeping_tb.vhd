----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2021 11:28:50 PM
-- Design Name: 
-- Module Name: second_creeping_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity second_creeping_tb is
--  Port ( );
end second_creeping_tb;

architecture Behavioral of second_creeping_tb  is
component second_creeping is
    Port ( input_1 : in STD_LOGIC_VECTOR (3 downto 0);
           input_2 : in STD_LOGIC_VECTOR (3 downto 0);
           input_3 : in STD_LOGIC_VECTOR (3 downto 0);
           input_4 : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in STD_LOGIC;
           clock_100MHz : in STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (6 downto 0));
end component;

           signal input_1_tb :  STD_LOGIC_VECTOR (3 downto 0);
           signal input_2_tb :  STD_LOGIC_VECTOR (3 downto 0);
           signal input_3_tb :  STD_LOGIC_VECTOR (3 downto 0);
           signal input_4_tb :  STD_LOGIC_VECTOR (3 downto 0);
           signal reset_tb :  STD_LOGIC;
           signal clock_100MHz_tb :  STD_LOGIC;
           signal AN_tb :  STD_LOGIC_VECTOR (7 downto 0);
           signal output_tb :  STD_LOGIC_VECTOR (6 downto 0);
     
begin
uut: second_creeping

port map
(
input_1=>input_1_tb,
input_2=>input_2_tb,
input_3=>input_3_tb,
input_4=>input_4_tb,
reset=>reset_tb,
clock_100MHz=>clock_100MHz_tb,
AN=>AN_tb,
output=>output_tb
);

clock: process -- period commensurate to 100MHz is 10 ns
begin
clock_100MHz_tb <= '1';
wait for 5 ns;
clock_100MHz_tb <= '0';
wait for 5 ns;
end process;

reset: process
begin
reset_tb <= '1';
wait for 1 ns;
reset_tb <= '0';
wait for 40 ms;
end process;

input: process
begin
input_1_tb <= "0001";
input_2_tb <= "0010";
input_3_tb <= "0011";
input_4_tb <= "0100";
wait for 80 ms;
wait;
end process;

end Behavioral;