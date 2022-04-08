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
        i_clk           : in  std_logic;
        i_rst           : in  std_logic;
        i_data          : in  std_logic_vector(7 downto 0);
        o_address       : out std_logic_vector(15 downto 0);
        o_done_signal   : out std_logic;
        o_data          : out std_logic_vector(7 downto 0);
        --control signals from the FSM
        reg_in_load     : in std_logic;
        reg_out_load    : in std_logic;
        reg_words_load  : in std_logic;
        reg_count_load  : in std_logic;
        mux_count_rst   : in std_logic;
        mux_rw_addr_sel : in std_logic_vector(1 downto 0);
        
        to_ser_input : out std_logic_vector(7 downto 0);
        from_ser_output : in std_logic;
        
        --datapath signals of convolutor 
        to_conv_input : out std_logic;
        from_conv_output : in std_logic;
        --datapath signals of parallelizer
        to_par_input : out std_logic;
        from_par_output : in std_logic_vector(7 downto 0)
    );
    end component;
    
    component serializer is
    port (
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        ser_start     : in  std_logic;
        ser_done      : out std_logic;
        
        ser_input     : in std_logic_vector(7 downto 0);
        ser_output    : out std_logic        
    );
    end component;
    
    component convolutor is
    port (
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        conv_reset    : in  std_logic;
        conv_pause    : in  std_logic;
        conv_input     : in std_logic; 
        conv_output    : out std_logic        
    );
    end component;
    
    component parallelizer is
    port (
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        par_start     : in  std_logic;
        par_set_out   : in  std_logic; -- '0' to output first word '1' output second
        
        par_input     : in std_logic; 
        par_output    : out std_logic_vector(7 downto 0)
    );
    end component;
            
    type fsm_state is (
        RESET, -- resetta tutti i segnali e parte con una nuova operazione
        
        READ_WORDS_RAM_REQUEST,
        READ_WORDS_RAM_READ,
        
        READ_RAM_REQUEST,
        READ_RAM,
        
        SERIALIZE_DEBUG,
        LOAD_FROM_PAR,
        
        WRITE_RAM_1,
        WRITE_RAM_2,
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
    signal mux_rw_addr_sel : std_logic_vector(1 downto 0);
    
    -- Serializer control signals
    signal ser_start : std_logic;
    signal ser_done : std_logic;
    -- Serializer data signals (Passed to the datapath)
    signal ser_input : std_logic_vector(7 downto 0);
    signal ser_output : std_logic;
    -- Convolutor control signals
    signal conv_reset : std_logic;
    --signal conv_pause : std_logic;
    -- Convolutor data signals
    signal conv_input : std_logic;
    signal conv_output : std_logic;
    -- Parallelizer control signals
    --signal par_start : std_logic;
    signal par_set_out : std_logic;
    -- Parallelizer data signals 
    signal par_input : std_logic;
    signal par_output : std_logic_vector(7 downto 0);
    
    
    
    -- Done signal from datapath
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
        mux_count_rst,
        mux_rw_addr_sel,
        
        ser_input,
        ser_output,
        
        conv_input,
        conv_output,
        
        par_input,
        par_output
    );
    
    SERIALIZER0 : serializer port map( -- TODO
        i_clk => i_clk,
        i_rst => i_rst,
        ser_start => ser_start,
        ser_done => ser_done,
        ser_input => ser_input, -- input and output ports are connected to the datapath
        ser_output => ser_output  -- WARNING: if i add a component at the datapath is another one istantiated or is this one (probabily another so don't work)
    );
    
    CONVOLUTOR0 : convolutor port map(
        i_clk,
        i_rst,
        conv_reset,
        ser_done, -- Passing directly ser_done as when the serialized has stopped fsm must be paused
        conv_input,
        conv_output
    );
    
    PARALLELIZER0 : parallelizer port map(
        i_clk,
        i_rst,
        ser_start, -- passing ser start directly as the par starts with the serializer
        par_set_out,
        par_input,
        par_output
    );
    
    
    FSM_STATE_CHANGE : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            cur_state <= RESET;
        elsif i_clk'EVENT and i_clk = '1' then
            cur_state <= next_state;
        end if;
    end process;
    
    FSM_FLOW : process(cur_state, i_start, i_data, o_done_signal, ser_done)
    begin
        next_state <= cur_state; -- avoiding latches: default assign
        case cur_state is
            when RESET =>
                if i_start = '0' then
                    next_state <= RESET;
                else 
                    next_state <= READ_WORDS_RAM_REQUEST; -- starts with i_start = 1 and i_rst = 0. (Reset is considered in FSM_STATE_CHANGE)
                end if;
                
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
                next_state <= SERIALIZE_DEBUG;
            
            
            when SERIALIZE_DEBUG =>
                if ser_done = '0' then 
                    next_state <= SERIALIZE_DEBUG;
                else 
                    next_state <= LOAD_FROM_PAR;
                end if;
            when LOAD_FROM_PAR =>
                next_state <= WRITE_RAM_1;
                
            when WRITE_RAM_1 =>
                next_state <= WRITE_RAM_2;
            when WRITE_RAM_2 =>
                next_state <= WRITE_RAM_WAIT;
            when WRITE_RAM_WAIT =>
                next_state <= READ_RAM_REQUEST;
                
                
            when DONE =>
                if i_start = '1' then
                    next_state <= DONE;
                else
                    next_state <= RESET;
                end if; 
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
        mux_rw_addr_sel <= "00";
        ser_start <= '0';
        conv_reset <= '0';
        par_set_out <= '0';
        
        -- o_address <= "0000000000000000";
        o_en <= '0';
        o_we <= '0';
        o_done <= '0';
        
        case cur_state is
            when RESET =>
                mux_count_rst <= '1'; -- load 0 into the reg_count to read ...
                reg_count_load <= '1'; -- address [0]
                conv_reset <= '1';
                
            when READ_WORDS_RAM_REQUEST =>
                mux_rw_addr_sel <= "00";
                o_en <= '1';
                
            when READ_WORDS_RAM_READ =>
                reg_words_load <= '1';
                reg_count_load <= '1'; -- prepare for first number read  (ram[1])
                
                
            when READ_RAM_REQUEST =>
                mux_rw_addr_sel <= "00";
                o_en <= '1';
                
            when READ_RAM =>
                reg_in_load <= '1';
                ser_start <= '1';
            
            when SERIALIZE_DEBUG =>
                -- reg_out_load <= '';
        
            when LOAD_FROM_PAR =>
                par_set_out <= '0';
                reg_out_load <= '1';
                
            when WRITE_RAM_1 =>
                par_set_out <= '1';
                reg_out_load <= '1';
                
                o_en <= '1';
                o_we <= '1';
                mux_rw_addr_sel <= "01";
            
            when WRITE_RAM_2 =>
                o_en <= '1';
                o_we <= '1';
                mux_rw_addr_sel <= "10";
                
            when WRITE_RAM_WAIT =>
                reg_count_load <= '1'; -- Increment reg_count for next operation
            
            
            when DONE =>
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
        mux_count_rst : in std_logic;
        mux_rw_addr_sel : in std_logic_vector(1 downto 0);
        --datapath signals of serializer
        to_ser_input : out std_logic_vector(7 downto 0);
        from_ser_output : in std_logic;
        --datapath signals of convolutor 
        to_conv_input : out std_logic;
        from_conv_output : in std_logic;
        --datapath signals of parallelizer
        to_par_input : out std_logic;
        from_par_output : in std_logic_vector(7 downto 0)
    );
end datapath;

architecture behavioral of datapath is

    signal reg_in : std_logic_vector(7 downto 0);
    signal reg_out : std_logic_vector(7 downto 0);
    signal reg_words : std_logic_vector(7 downto 0);
    signal reg_count : std_logic_vector(15 downto 0);
    
    signal mux_count : std_logic_vector(15 downto 0);

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
    
    to_ser_input <= reg_in;
    
    to_conv_input <= from_ser_output;
    
    to_par_input <= from_conv_output;
    
    REG_OUT_PROCESS : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            reg_out <= "00000000";
        elsif i_clk'event and i_clk = '1' then
            if reg_out_load = '1' then
                reg_out <= from_par_output;
            end if;
        end if;
    end process;
    
    
    o_data <= reg_out;
    
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
            reg_count <= "0000000000000000";
        elsif i_clk'event and i_clk = '1' then
            if reg_count_load = '1' then
                reg_count <= mux_count + "0000000000000001";
            end if;
        end if;
    end process;
    
    MUX_COUNT_PROCESS : process(mux_count_rst, i_rst, reg_count)
    begin
        if i_rst = '1' or mux_count_rst = '1' then
            mux_count <= "1111111111111111"; -- neg(1)
        else
            mux_count <= reg_count;
        end if;
    end process;
    
    MUX_RW_ADDR_PROCESS : process(mux_rw_addr_sel, mux_count, reg_count, i_rst)
    begin
        if i_rst = '1' or mux_rw_addr_sel = "00" or mux_rw_addr_sel = "11" then
            o_address <= reg_count;
        elsif mux_rw_addr_sel = "01" then
            o_address <= (mux_count + mux_count) + "0000001111100110"; -- mux_count + 998
        else --if mux_rw_addr_sel = "10" then
            o_address <= (mux_count + mux_count) + "0000001111100111"; -- mux_count + 999
        end if;
    end process;
    
    DONE_COMPARATOR_PROCESS : process(reg_words, mux_count)
    begin
        if mux_count <= ("00000000" & reg_words) then
            o_done_signal <= '0';
        else
            o_done_signal <= '1';
        --o_done_signal <= reg_words < mux_count;
        end if;
    end process;
    
end architecture behavioral;











-- SERIALIZER

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity serializer is
    port (
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        ser_start     : in  std_logic;
        ser_done      : out std_logic;
        
        ser_input     : in std_logic_vector(0 to 7); -- al contrario count incrementa e il primo da leggere è il MSB
        ser_output    : out std_logic        
    );
end entity;


architecture behavioral of serializer is

    signal reg_count_load   : std_logic;
    signal reg_count        : std_logic_vector(2 downto 0);
    
    type ser_state is (
        STOPPED,
        ACTIVE_OUT1,
        ACTIVE_OUT2
    );
    
    signal cur_state : ser_state;
    signal next_state : ser_state;
    
begin
    FSM_STATE_CHANGE : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            cur_state <= STOPPED;
        elsif i_clk'EVENT and i_clk = '1' then
            cur_state <= next_state;
        end if;
    end process;
    
    FSM_FLOW : process(cur_state, ser_start, reg_count)
    begin
        next_state <= cur_state;
        case cur_state is
            when STOPPED =>
                if ser_start = '1' then 
                    next_state <= ACTIVE_OUT1;
                else 
                    next_state <= STOPPED;
                end if;
            when ACTIVE_OUT1 => 
                next_state <= ACTIVE_OUT2;
            when ACTIVE_OUT2 =>
                if reg_count = "111" then
                    next_state <= STOPPED;
                else
                    next_state <= ACTIVE_OUT1;
                end if;
            end case;
    end process;
    
    FSM_OUT : process(cur_state)
    begin
        ser_done <= '1';
        reg_count_load <= '0';
        case cur_state is
            when STOPPED =>
                ser_done <= '1';
            when ACTIVE_OUT1 =>
                ser_done <= '0';
            when ACTIVE_OUT2 =>
                ser_done <= '0';
                reg_count_load <= '1';
        end case;
    end process;
    
    REG_COUNT_PROCESS : process(i_rst, ser_start, i_clk)
    begin
        if i_rst = '1' or ser_start = '1' then
            reg_count <= "000";
        else 
            if i_clk'event and i_clk = '1' then
                if reg_count_load = '1' then
                    reg_count <= reg_count + "001";
                end if;
            end if;
        end if;
    end process;
    
    ser_output <= ser_input(conv_integer(reg_count));

end architecture;












-- PARALLELIZER
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity parallelizer is
    port (
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        par_start     : in  std_logic;
        par_set_out   : in  std_logic; -- '0' to output first word '1' output second
        
        par_input     : in std_logic; 
        par_output    : out std_logic_vector(7 downto 0)
    );
end entity;


architecture behavioral of parallelizer is
    
    type fsm_par_state is (
        STOPPED,
        ACTIVE
    );
    
    signal cur_state : fsm_par_state;
    signal next_state : fsm_par_state;
    
    signal internal_reg_load : std_logic;
    signal internal_registry : std_logic_vector(0 to 15); -- al contrario cosi i primi bit vengono messi in alto 
    signal reg_count : std_logic_vector(3 downto 0);

begin
    FSM_STATE_CHANGE : process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            cur_state <= STOPPED;
        elsif i_clk'EVENT and i_clk = '1' then
            cur_state <= next_state;
        end if;
    end process;
    
    FSM_FLOW : process(cur_state, par_start, reg_count)
    begin
        next_state <= cur_state;
        case cur_state is
            when STOPPED =>
                if par_start = '1' then 
                    next_state <= ACTIVE;
                else 
                    next_state <= STOPPED;
                end if;
            when ACTIVE =>
                if reg_count = "1111" then
                    next_state <= STOPPED;
                else
                    next_state <= ACTIVE;
                end if;
            end case;
    end process;
    
    FSM_OUT : process(cur_state)
    begin
        internal_reg_load <= '0';
        case cur_state is
            when STOPPED =>
            when ACTIVE =>
                internal_reg_load <= '1';
        end case;
    end process;
    
    
    REG_COUNT_PROCESS : process(i_rst, par_start, i_clk, reg_count)
    begin
        if i_rst = '1' or par_start = '1' then 
            reg_count <= "0000";
        else 
            if i_clk'event and i_clk = '1' then
                reg_count <= reg_count + "0001";
            else 
                reg_count <= reg_count;
            end if;
        end if;
    end process;
    
    INTERNAL_REG_PROCESS : process(i_rst, par_start, i_clk, reg_count, par_input, internal_reg_load)
    begin
        if i_rst = '1' or par_start = '1' then 
            internal_registry <= "0000000000000000";
        else 
            if i_clk'event and i_clk = '1' then
                if internal_reg_load = '1' then
                    internal_registry(conv_integer(reg_count)) <= par_input;
                end if;
            end if;
        end if;
    end process;
    
    MUX_OUT : process(par_set_out, internal_registry)
    begin
        if par_set_out = '0' then
            par_output <= internal_registry(0 to 7);
        else
            par_output <= internal_registry(8 to 15);
        end if;
    end process;

end architecture;









-- CONVOLUTOR FSM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity convolutor is
    port (
        i_clk         : in  std_logic;
        i_rst         : in  std_logic;
        conv_reset    : in  std_logic;
        conv_pause    : in  std_logic;
        conv_input     : in std_logic; 
        conv_output    : out std_logic        
    );
end entity;

architecture behavioral of convolutor is

    type conv_state is ( -- the states are written with capital letter o and i
        OO_PK1,
        OO_PK2,
        OI_PK1,
        OI_PK2,
        IO_PK1,
        IO_PK2,
        II_PK1,
        II_PK2
    );
    
    signal cur_state : conv_state;
    signal next_state : conv_state;  
    
begin 

    FSM_STATE_CHANGE : process(i_clk, i_rst, conv_reset)
    begin
        if i_rst = '1' or conv_reset = '1' then
            cur_state <= OO_PK1;
        elsif i_clk'EVENT and i_clk = '1' then
            cur_state <= next_state;
        end if;
    end process;
    
    FSM_FLOW : process(cur_state, conv_input, conv_pause)
    begin
        if conv_pause = '1' then
            next_state <= cur_state;
        else 
            next_state <= cur_state;
            case cur_state is
                    
                when OO_PK1 => 
                    next_state <= OO_PK2;
                when OO_PK2 =>
                    if conv_input = '0' then
                        next_state <= OO_PK1;
                    else 
                        next_state <= IO_PK1;
                    end if;
                
                    
                when OI_PK1 => 
                    next_state <= OI_PK2;
                when OI_PK2 =>
                    if conv_input = '0' then
                        next_state <= OO_PK1;
                    else 
                        next_state <= IO_PK1;
                    end if;
                    
                when IO_PK1 => 
                    next_state <= IO_PK2;
                when IO_PK2 =>
                    if conv_input = '0' then
                        next_state <= OI_PK1;
                    else 
                        next_state <= II_PK1;
                    end if;
                    
                when II_PK1 => 
                    next_state <= II_PK2;
                when II_PK2 =>
                if conv_input = '0' then
                        next_state <= OI_PK1;
                    else 
                        next_state <= II_PK1;
                    end if;
                    
            end case;    
        end if;
    end process;
    
    FSM_OUT : process(cur_state, conv_input)
    begin
        conv_output <= '0';
        case cur_state is
            
            when OO_PK1 =>
                if conv_input <= '0' then
                    conv_output <= '0';
                else
                    conv_output <= '1';
                end if;
            
            when OO_PK2 =>
                if conv_input <= '0' then
                    conv_output <= '0';
                else
                    conv_output <= '1';
                end if;
            
            when OI_PK1 =>
                if conv_input <= '0' then
                    conv_output <= '1';
                else
                    conv_output <= '0';
                end if;
            
            when OI_PK2 =>
                if conv_input <= '0' then
                    conv_output <= '1';
                else
                    conv_output <= '0';
                end if;
            
            when IO_PK1 =>
                if conv_input <= '0' then
                    conv_output <= '0';
                else
                    conv_output <= '1';
                end if;
            
            when IO_PK2 =>
                if conv_input <= '0' then
                    conv_output <= '1';
                else
                    conv_output <= '0';
                end if;
                
            when II_PK1 =>
                if conv_input <= '0' then
                    conv_output <= '1';
                else
                    conv_output <= '0';
                end if;
            
            when II_PK2 =>
                if conv_input <= '0' then
                    conv_output <= '0';
                else
                    conv_output <= '1';
                end if;
        end case;
    end process;
    
    
end architecture;
