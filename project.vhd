library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity project_reti_logiche is
port (
      i_clk         : in  std_logic;
      i_start       : in  std_logic;
      i_rst         : in  std_logic;
      i_data        : in  std_logic_vector(7 downto 0);
      o_address     : out std_logic_vector(15 downto 0);
      o_done        : out std_logic;
      o_en          : out std_logic;
      o_we          : out std_logic;
      o_data        : out std_logic_vector(7 downto 0)
      );
end entity project_reti_logiche;

architecture behavioral of project_reti_logiche is

    type fsm_state is (
        RESET, -- resetta tutti i segnali e parte con una nuova operazione
        RAM_WAIT, -- aspetta un ciclo di clock per la r/w della ram e passa allo stato callback
        
        READ_INIT_RAM_REQUEST, -- chiede mem[0]
        READ_INIT_RAM_READ, -- legge mem[0] e inizializza la sequenza di lettura di N(mem[0]) elementi
        
        READ_REQUEST, -- chiede mem[count??]
        READ, -- legge mem[count??] e la salva in reg_in
        
        SERIALIZE_INPUT,
        DONE
    );
    
    signal cur_state : fsm_state;
    signal next_state : fsm_state;
    signal callback: fsm_state;
    signal reg_words: std_logic_vector (7 downto 0);
    signal reg_in : std_logic_vector (7 downto 0); -- the registry that stores the input from the memory
    
begin
    
    FSM_STATE_CHANGE: process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            cur_state <= RESET;
        elsif i_clk'EVENT and i_clk = '1' then
            cur_state <= next_state;
        end if;
    end process;
    
    FSM : process(cur_state)
    begin
        case cur_state is
            when RESET =>
                o_done <= '0';
                o_en <= '0';
                o_data <= "00000000";
                next_state <= READ_INIT_RAM_REQUEST;
            
            
            when RAM_WAIT =>
                next_state <= callback;
            
            
            when READ_INIT_RAM_REQUEST =>
                o_en <= '1';
                o_address <= "0000000000000000";
                callback <= READ_INIT_RAM_READ;
                next_state <= RAM_WAIT;
            
            when READ_INIT_RAM_READ =>
                reg_words <= i_data; -- YOU CAN ONLY READ REGISTRIES AT THE NEXT CLOCK 
                o_en <= '0'; -- reset the read signals
                next_state <= READ_REQUEST;
                          
            
            when READ_REQUEST =>
                o_en <= '1';
                o_address <= "00000000" & "00000001";   
                callback <= READ;          
                next_state <= RAM_WAIT;
            
            when READ =>
                reg_in <= i_data;
                o_en <= '0';
                next_state <= SERIALIZE_INPUT;
            
            when SERIALIZE_INPUT =>
                next_state <= DONE;
            
            when DONE =>
                o_data <= "11111111";
                o_en <= '0';
                o_done <= '1';
                next_state <= DONE;
        end case;
     end process;
end architecture behavioral;


