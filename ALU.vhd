-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : ALU
-- Author      : Jeremy Gruszka
-- Company     : usafa
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Mar 30 11:16:54 2007
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : makes a multiplexer to simulate an ALU
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	 port(
		 OpSel : in STD_LOGIC_VECTOR(2 downto 0);
		 Data : in STD_LOGIC_VECTOR(3 downto 0);
		 Accumulator : in STD_LOGIC_VECTOR(3 downto 0);
		 Result : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is	   


begin
	
-- fill in details to create result as a function of Data and Accumulator, based on OpSel.
 -- e.g : Build a multiplexer choosing between the eight ALU operations.  Either use a case statement (and thus a process)
 --       or a conditional signal assignment statement ( x <= Y when <condition> else . . .)
 -- ALU Operations are defined as:
 -- OpSel : Function
--  0     : AND
--  1     : NEG (2s complement)
--  2     : NOT (invert)
--  3     : ROR
--  4     : OR
--  5     : IN
--  6     : ADD
--  7     : LD
aluswitch: process (Accumulator, Data, OpSel)
      begin
		-- enter your if/then/else or case statements here
			if (OpSel = "000") then --and function
			--and the data and the accumulator
				Result <= Data and Accumulator;
			elsif (OpSel = "001") then  --neg function
			--flip the accumulator and add 1
				Result <= (not Accumulator) + "0001";
			elsif (OpSel = "010") then --not function
			--not the accumulator
				Result <= not Accumulator;
			elsif (OpSel = "011") then --ror function
			--use rotate right function to rotate right
				Result <= STD_LOGIC_VECTOR(rotate_right(unsigned (Accumulator), 1));
			elsif (OpSel = "100") then --or function
			--or the data and the accumulator
				Result <= Data or Accumulator;
			elsif (OpSel = "101") then --in function
			--sets the data input value into the result
				Result <= Data;
			elsif (OpSel = "110") then --add function
			--add the data and the accumulator
				Result <= Data + Accumulator;
			elsif (OpSel = "111") then --ld function
			--sets the data value into the result
				Result <= Data;
			end if;
		end process;


end ALU;

