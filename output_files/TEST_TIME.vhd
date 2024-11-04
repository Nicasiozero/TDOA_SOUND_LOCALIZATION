library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TEST_TIME is
  port (
    CLK       : in std_logic;  
    NRST      : in std_logic;  
    TX        : out STD_LOGIC;    
    TOGGLE    : out STD_LOGIC;    
    MIC1_IN   : in std_logic;
    MIC2_IN   : in std_logic;
    MIC3_IN   : in std_logic
  );
end TEST_TIME;

architecture behavioral of TEST_TIME is
    signal mic1        : std_logic;
    signal mic2        : std_logic;
    signal mic3        : std_logic;
	 signal pack_size   : integer := 13;
	 signal pack_size_bit :integer := (pack_size * 8);
    signal data_pack   : std_logic_vector(pack_size_bit - 1 downto 0);

    signal time_counter : unsigned(31 downto 0) := (others => '0');

    signal mic1_time    : unsigned(31 downto 0) := (others => '0');
    signal mic2_time    : unsigned(31 downto 0) := (others => '0');
    signal mic3_time    : unsigned(31 downto 0) := (others => '0');

    signal clock_divider : integer range 0 to 49 := 0; -- Divider for 1 µs at 50 MHz
	 signal done : std_logic;
	 signal debounce : std_logic := '0';
	 signal debounceMic1 : std_logic := '0';
	 signal debounceMic2 : std_logic := '0';
	 signal debounceMic3 : std_logic := '0';
	 signal pTime : unsigned(31 downto 0);
	 signal pTimeMic1 : unsigned(31 downto 0);
	 signal pTimeMic2 : unsigned(31 downto 0);
	 signal pTimeMic3 : unsigned(31 downto 0);

    component UART_TIME is
       generic (
        DATA_SIZE : integer := 13
		 );
		 Port ( CLK    : in  STD_LOGIC;
				  NRST      : in  STD_LOGIC;     
				  TX        : out STD_LOGIC;     
				  TOGGLE    : out STD_LOGIC;     
				  DATA_IN   : in  STD_LOGIC_VECTOR((DATA_SIZE * 8) - 1 downto 0)
			 );
    end component;

begin

    uart_instance: UART_TIME
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
            time_counter <= (others => '0'); 
            mic1_time <= (others => '0');
            mic2_time <= (others => '0');
            mic3_time <= (others => '0');
            clock_divider <= 0;
				done <= '0';
            
        elsif rising_edge(CLK) then
            if clock_divider = 49 then
                clock_divider <= 0;
                time_counter <= time_counter + 1;
            else
                clock_divider <= clock_divider + 1;
            end if;
				
				

            if MIC1_IN = '1' and (debounceMic1 = '0')then
                mic1_time <= time_counter; 
					 debounceMic1 <= '1';
					 pTimeMic1 <= pTime;
            end if;
----
--            if MIC2_IN = '1' and (debounceMic2 = '0')then
--                mic2_time <= time_counter; 
--					 debounceMic2 <= '1';
--					 pTimeMic2 <= pTime;
--            end if;
--
--            if MIC3_IN = '1' and (debounceMic3 = '0')then
--                mic3_time <= time_counter; 
--					 debounceMic3 <= '1';
--					 pTimeMic3 <= pTime;
--            end if;
--							
--				if (mic1_time /= 0) and (mic2_time /= 0) and (mic3_time /= 0) and (debounce = '0') then
--					debounce <= '1';
--					done <= '1';
--					pTime <= time_counter;
--				end if;
				
				
--				if (time_counter - pTimeMic1) = 500000  or  (time_counter - pTimeMic1) > 500000 then
--					 mic1_time <= (others => '0');
--					 debounceMic1 <= '0';
--				end if;
--				
--				if (time_counter - pTimeMic2) = 500000  or  (time_counter - pTimeMic2) > 500000 then
--					 mic2_time <= (others => '0');
--					 debounceMic2 <= '0';
--				end if;
--				
--				if (time_counter - pTimeMic3) = 500000  or  (time_counter - pTimeMic3) > 500000 then
--					 mic3_time <= (others => '0');
--					 debounceMic3 <= '0';
--				end if;

				
				if time_counter - pTime = 500000 or  (time_counter - pTime) > 500000 then
					 mic1_time <= (others => '0');
                mic2_time <= (others => '0');
                mic3_time <= (others => '0');
					 debounceMic1 <= '0';
					 debounceMic2 <= '0';
					 debounceMic3 <= '0';
                done <= '0';
                debounce <= '0';
				end if;
				
			  data_pack(96) <= done;
			  data_pack(95 downto 64) <= std_logic_vector(mic1_time);
			  data_pack(63 downto 32) <= std_logic_vector(mic2_time);
			  data_pack(31 downto 0)  <= std_logic_vector(mic3_time);


        end if;
    end process;

end behavioral;
