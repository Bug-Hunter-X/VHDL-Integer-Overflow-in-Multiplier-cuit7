```vhdl
ENTITY multiplier IS
    PORT ( 
        clk : IN  STD_LOGIC;
        a : IN  INTEGER RANGE 0 TO 15;
        b : IN  INTEGER RANGE 0 TO 15;
        product : OUT INTEGER
    );
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
    SIGNAL temp_prod : INTEGER := 0;
BEGIN
    PROCESS (clk) 
    BEGIN
        IF rising_edge(clk) THEN
            temp_prod <= a * b; 
            product <= temp_prod;
        END IF;
    END PROCESS;
END ARCHITECTURE;
```