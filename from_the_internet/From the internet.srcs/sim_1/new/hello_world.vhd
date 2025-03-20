entity HelloWorldTb is
end entity HelloWorldTb;

architecture sim of HelloWorldTb is 
begin

    process
    begin
    
        report "Hello World";
        wait;
    
    end process;

end architecture sim;
