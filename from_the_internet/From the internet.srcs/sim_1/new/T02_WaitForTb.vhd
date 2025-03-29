entity T02_WaitForTb is
end entity T02_WaitForTb;

architecture sim of T02_WaitForTb is 
begin

    process
    begin
    
        report "Peekaboo";
        wait for 10 ns;
    
    end process;

end architecture sim;
