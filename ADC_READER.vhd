library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ADC_READER is
  port (
    CLK       : in std_logic;  
    NRST      : in std_logic;  
    ADC_CSN   : out std_logic; 
    ADC_SCLK  : out std_logic; 
    ADC_MOSI  : out std_logic;
    ADC_MISO  : in std_logic;  
    CHANNEL   : out std_logic_vector(2 downto 0); 
    ADC_OUT1  : out std_logic_vector(11 downto 0);
	 ADC_OUT2  : out std_logic_vector(11 downto 0);
	 ADC_OUT3  : out std_logic_vector(11 downto 0);
    DONE      : out std_logic;
    CLOCK_OUT : out std_logic 
  );
end ADC_READER;

architecture behavioral of ADC_READER is

  constant SPI_CLK_DIV : integer := 16;
  constant DATA_WIDTH  : integer := 16; 
  constant SLOW_CLK_DIV : integer := 50; 

  type state_type is (ST_IDLE, ST_START, ST_SCK_H, ST_SCK_L, ST_WAIT);
  signal state : state_type := ST_IDLE;

  signal cs_n : std_logic := '1';
  signal sclk : std_logic := '0';
  signal mosi : std_logic := '0';

  signal bit_index : integer range 0 to DATA_WIDTH - 1 := 0;
  signal adc_data  : std_logic_vector(11 downto 0) := (others => '0');

  signal shift_en  : std_logic := '0';
  signal shift_reg : std_logic_vector(DATA_WIDTH - 1 downto 0);

  constant WAIT_CNT_MAX : integer := 2;
  signal wait_cnt       : integer := 0;
  signal done_int       : std_logic := '0';

  signal slow_clk_counter : integer range 0 to SLOW_CLK_DIV - 1 := 0;
  signal slow_clk         : std_logic := '0';
  
  signal ch : std_logic_vector(2 downto 0) := "000";

begin

  adc_csn  <= cs_n;
  adc_sclk <= sclk;
  adc_mosi <= mosi;
  CLOCK_OUT <= slow_clk;

  process (CLK, NRST)
  begin
    if NRST = '0' then
      slow_clk_counter <= 0;
      slow_clk <= '0';
    elsif rising_edge(CLK) then
      if slow_clk_counter = SLOW_CLK_DIV - 1 then
        slow_clk_counter <= 0;
        slow_clk <= not slow_clk;
      else
        slow_clk_counter <= slow_clk_counter + 1;
      end if;
    end if;
  end process;

  process (CLK, NRST)
    variable count : integer range 0 to SPI_CLK_DIV - 1 := 0;
  begin
    if NRST = '0' then
      count := 0;
      shift_en <= '0';
    elsif rising_edge(CLK) then
      if count = SPI_CLK_DIV - 1 then
        count := 0;
        shift_en <= '1';
      else
        count := count + 1;
        shift_en <= '0';
      end if;
    end if;
  end process;

  process (CLK, NRST)
  begin
    if NRST = '0' then
      cs_n      <= '1';
      mosi      <= '0';
      sclk      <= '0';
      adc_data  <= (others => '0');
      bit_index <= 0;
      wait_cnt  <= 0;
      state     <= ST_IDLE;
      done_int  <= '0';

    elsif rising_edge(CLK) then

      case state is
        when ST_IDLE =>
          bit_index <= 0;
          cs_n      <= '1';
          sclk      <= '1';
          state     <= ST_START;
          DONE    <= '0';

        when ST_START =>
          shift_reg  <= (others => '0');
          shift_reg(13 downto 11) <= ch; -- Channel bits in positions ADD2, ADD1, ADD0
          cs_n   <= '0';
          state  <= ST_SCK_L;

        when ST_SCK_L =>
          if shift_en = '1' then
            sclk  <= '0';
            mosi  <= shift_reg(shift_reg'left);
            state <= ST_SCK_H;
          end if;

        when ST_SCK_H =>
          if shift_en = '1' then
            sclk      <= '1';
            shift_reg <= shift_reg(shift_reg'left - 1 downto 0) & adc_miso;
            if bit_index = DATA_WIDTH - 1 then
              cs_n     <= '1';
              wait_cnt <= WAIT_CNT_MAX;
              state    <= ST_WAIT;
            else
              bit_index <= bit_index + 1;
              state     <= ST_SCK_L;
            end if;
          end if;

        when ST_WAIT =>
			 adc_data <= shift_reg(11 downto 0);
			 
          if wait_cnt = 0 then	
				CHANNEL <= ch;
				DONE    <= '1';
				
				if ch = "000" then
					ADC_OUT3 <= adc_data;
					ch  <= (others => '0');
					ch <= "010";
				elsif ch = "010" then
					ADC_OUT1 <= adc_data;
					ch  <= (others => '0');
					ch <= "111";
				else
					ADC_OUT2 <= adc_data;
					ch  <= (others => '0');
					ch <= "000";
				end if;
				
            state  <= ST_IDLE;
          else
            wait_cnt <= wait_cnt - 1;
          end if;

        when others =>
          state <= ST_IDLE;
      end case;
    end if;
  end process;

end behavioral;
