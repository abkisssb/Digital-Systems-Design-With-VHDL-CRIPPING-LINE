----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/17/2021 09:18:10 PM
-- Design Name: 
-- Module Name: third_creeping_tb - Behavioral
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

entity third_creeping_tb is
--  Port ( );
end third_creeping_tb;

architecture Behavioral of third_creeping_tb is
component third_creeping is
    Port ( reset : in STD_LOGIC;
           clock_100MHz : in STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal reset_tb :        std_logic;
signal clock_100MHz_tb : std_logic;
signal AN_tb:               STD_LOGIC_VECTOR (7 downto 0);

begin

uut: third_creeping

port map(
         AN=>AN_tb,
         clock_100MHz=>clock_100MHz_tb,
         reset=>reset_tb
);

clk:process
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
wait for 100 ms;
wait;
end process;

end Behavioral;