----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2021 10:14:01 PM
-- Design Name: 
-- Module Name: first_creeping_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity first_creeping_tb is
--  Port ( );
end first_creeping_tb;

architecture Behavioral of first_creeping_tb is

component first_creeping is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           AN:  out STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal input_tb : STD_LOGIC_VECTOR (3 downto 0);
signal output_tb : STD_LOGIC_VECTOR (6 downto 0);
signal AN_tb:         STD_LOGIC_VECTOR (7 downto 0);
begin

uut: first_creeping

port map
(
input=>input_tb,
AN=>AN_tb,
output=>output_tb
);

process
begin
input_tb<="0000";
wait for 10 ns;
input_tb<="0001";
wait for 10 ns;
input_tb<="0010";
wait for 10 ns;
input_tb<="0011";
wait for 10 ns;
input_tb<="0100";
wait for 10 ns;
input_tb<="0101";
wait for 10 ns;
input_tb<="0110";
wait for 10 ns;
input_tb<="0111";
wait for 10 ns;
input_tb<="1000";
wait for 10 ns;
input_tb<="1001";
wait for 10 ns;
input_tb<="1010";
wait for 10 ns;
input_tb<="1011";
wait for 10 ns;
input_tb<="1100";
wait for 10 ns;
input_tb<="1101";
wait for 10 ns;
input_tb<="1110";
wait for 10 ns;
input_tb<="1111";
wait for 10 ns;
wait;
end process;

an: process
begin
AN_tb<="01111111";
wait for 10 ns;
AN_tb<="01111111";
wait for 10 ns;
wait;
end process;

end Behavioral;

