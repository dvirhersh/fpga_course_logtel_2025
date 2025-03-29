entity T03_LoopTb is
end entity T03_LoopTb;

architecture sim of T03_LoopTb is 
begin

    process
    begin
        
        report "Hello!";

        loop
            report "Peekaboo";
            exit;
        end loop; -- 
        report "Goodbye!";
        wait;
    
    end process;

end architecture sim;
