library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TEST_DMIC is
  port (
    CLK       : in std_logic;  
    NRST      : in std_logic;  
	 TX        : out STD_LOGIC;    
	 TOGGLE     : out STD_LOGIC;    
	 MIC1_IN   : in std_logic;
	 MIC2_IN   : in std_logic;
	 MIC3_IN   : in std_logic
  );
end TEST_DMIC;

architecture behavioral of TEST_DMIC is
signal mic1 : std_logic;
signal mic2 : std_logic;
signal mic3 : std_logic;
signal data_pack : std_logic_vector(2 downto 0);


    component UART_DIGITAL is
        Port ( 
           CLK       : in  STD_LOGIC;
           NRST      : in  STD_LOGIC;     
           TX        : out STD_LOGIC;     
           TOGGLE    : out STD_LOGIC;     
           DATA_IN   : in  STD_LOGIC_VECTOR(2 downto 0)	
        );
    end component;

begin

   uart_instance: UART_DIGITAL
        port map (
            CLK    => CLK,
            NRST   => NRST,
            TX     => TX,
            TOGGLE => TOGGLE,
				DATA_IN => data_pack
   );
		  
  process (CLK, NRST)
  begin
    if NRST = '0' then
		mic1 <= '0';
		mic2 <= '0';
		mic3 <= '0';
      
    elsif rising_edge(CLK) then
		mic1 <= MIC1_IN;
		mic2 <= MIC2_IN;
		mic3 <= MIC3_IN;
	
	data_pack(2) <= mic1;
	data_pack(1) <= mic2;
	data_pack(0) <= mic3;
	 
	 end if;
  end process;
end behavioral;
