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
    component datapath
    port(
        -- global signals
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        i_data        : in  std_logic_vector(7 downto 0);
        o_address     : out std_logic_vector(15 downto 0);
        o_done_signal : out std_logic;
        o_data        : out std_logic_vector(7 downto 0);
        --control signals from the FSM
        reg_in_load : in std_logic;
        reg_out_load : in std_logic;
        reg_words_load : in std_logic;
        reg_count_load : in std_logic;
        mux_count_rst : in std_logic
    );
    end component;
            
    type fsm_state is (
        RESET, -- resetta tutti i segnali e parte con una nuova operazione
        
        READ_WORDS_RAM_REQUEST,
        READ_WORDS_RAM_READ,
        
        READ_RAM_REQUEST,
        READ_RAM,
        
        WRITE_RAM,
        WRITE_RAM_WAIT,
        
        DONE
    );
    
    signal cur_state : fsm_state;
    signal next_state : fsm_state;
    -- signal callback: fsm_state;
    
    
    
    signal reg_in_load : std_logic;
    signal reg_out_load : std_logic;
    signal reg_words_load : std_logic;
    signal reg_count_load : std_logic;
    signal mux_count_rst : std_logic;
    
    signal o_done_signal : std_logic;
    
    
    
begin
    DATAPATH0 : datapath port map(
        i_clk,
        i_rst,
        i_data,
        o_address,
        o_done_signal,
        o_data,
        
        reg_in_load,
        reg_out_load,
        reg_words_load,
        reg_count_load,
        mux_count_rst
    );
    
    FSM_STATE_CHANGE : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            cur_state <= RESET;
        elsif i_clk'EVENT and i_clk = '1' then
            cur_state <= next_state;
        end if;
    end process;
    
    FSM_FLOW : process(cur_state, i_start, i_data, o_done_signal)
    begin
        next_state <= cur_state; -- avoiding latches: default assign
        case cur_state is
            when RESET =>
                --if i_start = '1' then
                    next_state <= READ_WORDS_RAM_REQUEST;
                --end if;
            when READ_WORDS_RAM_REQUEST =>
                next_state <= READ_WORDS_RAM_READ;
            when READ_WORDS_RAM_READ =>
                next_state <= READ_RAM_REQUEST;
                
            when READ_RAM_REQUEST =>
                if o_done_signal = '1' then
                    next_state <= DONE;
                else
                    next_state <= READ_RAM;
                end if;
                
            when READ_RAM =>
                next_state <= WRITE_RAM;
            
            when WRITE_RAM =>
                next_state <= WRITE_RAM_WAIT;
            when WRITE_RAM_WAIT =>
                next_state <= READ_RAM_REQUEST;
            when DONE =>
                next_state <= DONE;
        end case;
                
    end process;
    
    FSM_OUT : process(cur_state)
    begin
        -- occhio a non modificare gli output del datapath
        -- o_data
        -- o_address (Ora è qui per debug, poi rimettilo in interfacce dataath)
        
        reg_in_load <= '0';
        reg_out_load <= '0';
        reg_words_load <= '0';
        reg_count_load <= '0';
        mux_count_rst <= '0';
        
        -- o_address <= "0000000000000000";
        o_en <= '0';
        o_we <= '0';
        o_done <= '0';
        
        case cur_state is
            when RESET =>
                mux_count_rst <= '1'; -- load 0 into the reg_count to read ...
                reg_count_load <= '1'; -- address [0]
                
            when READ_WORDS_RAM_REQUEST =>
                o_en <= '1';
                
            when READ_WORDS_RAM_READ =>
                reg_words_load <= '1';
                reg_count_load <= '1'; -- prepare for first number read
                
                
            when READ_RAM_REQUEST =>
                o_en <= '1';
                
            
            when READ_RAM =>
                reg_in_load <= '1';
        
            when WRITE_RAM =>
            when WRITE_RAM_WAIT =>
                reg_count_load <= '1';
            
            when DONE =>
                o_data <= "11111111";
                o_en <= '0';
                o_done <= '1';
        end case;
     end process;
end architecture behavioral;






















-- DATAPATH

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity datapath is 
    port (
        -- global signals
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        i_data        : in  std_logic_vector(7 downto 0);
        o_address     : out std_logic_vector(15 downto 0);
        o_done_signal : out std_logic;
        o_data        : out std_logic_vector(7 downto 0);
        --control signals from the FSM
        reg_in_load : in std_logic;
        reg_out_load : in std_logic;
        reg_words_load : in std_logic;
        reg_count_load : in std_logic;
        mux_count_rst : in std_logic
    );
end datapath;

architecture behavioral of datapath is

    signal reg_in : std_logic_vector(7 downto 0);
    signal reg_out : std_logic_vector(7 downto 0);
    signal reg_words : std_logic_vector(7 downto 0);
    signal reg_count : std_logic_vector(7 downto 0);
    
    signal mux_count : std_logic_vector(7 downto 0);

begin
    
    REG_IN_PROCESS : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            reg_in <= "00000000";
        elsif i_clk'event and i_clk = '1' then
            if reg_in_load = '1' then
                reg_in <= i_data;
            end if;
        end if;
    end process;
    
    REG_OUT_PROCESS : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            reg_out <= "00000000";
        elsif i_clk'event and i_clk = '1' then
            if reg_out_load = '1' then
                reg_out <= reg_in;
            end if;
        end if;
    end process;
    
    REG_WORDS_PROCESS : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            reg_words <= "00000000";
        elsif i_clk'event and i_clk = '1' then
            if reg_words_load = '1' then
                reg_words <= i_data;
            end if;
        end if;
    end process;
    
    REG_COUNT_PROCESS : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            reg_count <= "00000000";
        elsif i_clk'event and i_clk = '1' then
            if reg_count_load = '1' then
                reg_count <= mux_count + "00000001";
            end if;
        end if;
    end process;
    
    MUX_COUNT_PROCESS : process(mux_count_rst, i_rst, reg_count)
    begin
        if i_rst = '1' or mux_count_rst = '1' then
            mux_count <= "11111111";
        else
            mux_count <= reg_count;
        end if;
    end process;
    
    o_address <= "00000000" & reg_count;
    
    DONE_COMPARATOR_PROCESS : process(reg_words, mux_count)
    begin
        if mux_count <= reg_words then
            o_done_signal <= '0';
        else
            o_done_signal <= '1';
        --o_done_signal <= reg_words < mux_count;
        end if;
    end process;
    
end architecture behavioral;

