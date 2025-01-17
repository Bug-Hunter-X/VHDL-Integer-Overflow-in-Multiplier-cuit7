```vhdl
ENTITY multiplier_fixed IS
    PORT ( 
        clk : IN  STD_LOGIC;
        a : IN  INTEGER RANGE 0 TO 15;
        b : IN  INTEGER RANGE 0 TO 15;
        product : OUT INTEGER
    );
END ENTITY;

ARCHITECTURE behavioral OF multiplier_fixed IS
    SIGNAL temp_prod : INTEGER RANGE 0 TO 255 := 0; -- Larger range
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

**Alternatively (using signed for potential negative numbers):**

```vhdl
ENTITY multiplier_fixed IS
    PORT ( 
        clk : IN  STD_LOGIC;
        a : IN  signed(3 downto 0);
        b : IN  signed(3 downto 0);
        product : OUT signed(7 downto 0)
    );
END ENTITY;

ARCHITECTURE behavioral OF multiplier_fixed IS
    SIGNAL temp_prod : signed(7 downto 0);
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