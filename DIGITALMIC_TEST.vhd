library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DIGITALMIC_TEST is
  port (
    CLK       : in std_logic;  
    NRST      : in std_logic;  
    TX        : out STD_LOGIC;    
    TOGGLE    : out STD_LOGIC;    
    MIC1_IN   : in std_logic;
    MIC2_IN   : in std_logic;
    MIC3_IN   : in std_logic
  );
end DIGITALMIC_TEST;

architecture behavioral of DIGITALMIC_TEST is
   
	signal txx : std_logic;

begin


    process (CLK, NRST)
    begin
        if rising_edge(CLK) then
				txx <= MIC1_IN;
        end if;
    end process;
	 
	 TX <= txx;

end behavioral;
