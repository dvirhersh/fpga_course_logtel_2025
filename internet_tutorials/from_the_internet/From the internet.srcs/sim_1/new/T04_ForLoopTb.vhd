entity T04_ForLoopTb is
end entity T04_ForLoopTb;

architecture sim of T04_ForLoopTb is 
begin

    process
    begin
        
    for i in 1 to 10 loop
        report "i = " & integer'image(i);
    end loop;
    wait;
    end process;

end architecture sim;
