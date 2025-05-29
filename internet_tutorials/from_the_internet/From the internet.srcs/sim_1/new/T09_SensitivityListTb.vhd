entity T09_SensitivityListTb is
end entity T09_SensitivityListTb;

architecture sim of T09_SensitivityListTb is 

    signal CountUp   : integer := 0;
    signal CountDown : integer := 10;
    

begin

    process
    begin
        CountUp   <= CountUp + 1;        
        CountDown <= CountDown - 1;        
        wait for 10 ns;
    end process;

    -- Process triggered using Wait On
    process
    begin
        if CountUp = CountDown then
            report "Process A : Jackpot!";
        end if;    
        wait on CountDown, CountUp;
        
    end process;

    -- Equivalent Process using a sensitivity list
    process (CountDown, CountUp)
    begin
        if CountUp = CountDown then
            report "Process B : Jackpot!";
        end if;    
        
    end process;

end architecture sim;
