library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DYNAMIC_BYTE_UART_TX is
	 generic (
        DATA_SIZE : integer := 12
    );
    Port ( CLK       : in  STD_LOGIC;
           NRST      : in  STD_LOGIC;     
           TX        : out STD_LOGIC;     
           TOGGLE    : out STD_LOGIC;     
           DATA_IN   : in  STD_LOGIC_VECTOR((DATA_SIZE * 8) - 1 downto 0)
           );
end DYNAMIC_BYTE_UART_TX;

architecture Behavioral of DYNAMIC_BYTE_UART_TX is

    constant BAUD_RATE   : integer := 1000000;                
    constant CLOCK_FREQ  : integer := 50000000;           
    constant CLOCKS_PER_BIT : integer := CLOCK_FREQ / BAUD_RATE;

    type STATE_TYPE is (IDLE, START_BIT, DATA_BITS, STOP_BIT);
    signal state       : STATE_TYPE := IDLE;
    signal counter     : integer range 0 to CLOCKS_PER_BIT - 1 := 0;
    signal bit_pos     : integer range 0 to 7 := 0;
    signal data_index  : integer range 0 to (DATA_SIZE + 4) - 1 := (DATA_SIZE + 4) - 1;   
    signal tx_reg      : STD_LOGIC := '1';
	 signal numOfBit    : integer := (DATA_SIZE + 4) * 8;

    signal data_to_send : STD_LOGIC_VECTOR(numOfBit - 1 downto 0);  

begin

    process(CLK, NRST)
    begin
        if NRST = '0' then
            state       <= IDLE;
            counter     <= 0;
            bit_pos     <= 0;
            data_index  <= (DATA_SIZE + 4) - 1; 
            tx_reg      <= '1';
        
        elsif rising_edge(CLK) then
            case state is
                when IDLE =>
                    tx_reg <= '1';
                    counter <= 0;
                    bit_pos <= 0;
                    if data_index >= 0 then  
								data_to_send(numOfBit - 1 downto numOfBit - 8) <= "00100011"; --#  127 - 120
								data_to_send(numOfBit - 9 downto numOfBit - 16) <= "01100110";-- f 119 - 112
								data_to_send(numOfBit - 17 downto 16) <= DATA_IN;
								data_to_send(15 downto 8) <= "00001101";   --# \r
								data_to_send(7  downto 0) <= "00001010";   --# \n
                        state <= START_BIT;
                    end if;
                    
                when START_BIT =>
                    tx_reg <= '0';
                    if counter = CLOCKS_PER_BIT - 1 then
                        counter <= 0;
                        state <= DATA_BITS;
                    else
                        counter <= counter + 1;
                    end if;
                    
                when DATA_BITS =>
                    tx_reg <= data_to_send((data_index * 8) + (bit_pos));
                    if counter = CLOCKS_PER_BIT - 1 then
                        counter <= 0;
                        if bit_pos = 7 then
                            bit_pos <= 0;
                            state <= STOP_BIT;
                        else
                            bit_pos <= bit_pos + 1;
                        end if;
                    else
                        counter <= counter + 1;
                    end if;
                    
                when STOP_BIT =>
                    tx_reg <= '1';
                    if counter = CLOCKS_PER_BIT - 1 then
                        counter <= 0;
                        if data_index = 0 then
                            data_index <= (DATA_SIZE + 4) - 1; 
                            state <= IDLE;
                        else
                            data_index <= data_index - 1;
                            state <= START_BIT;
                        end if;
                    else
                        counter <= counter + 1;
                    end if;
--                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
--
    TX <= tx_reg;

end Behavioral;
