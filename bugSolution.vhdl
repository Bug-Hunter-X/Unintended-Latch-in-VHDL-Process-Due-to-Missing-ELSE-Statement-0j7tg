```vhdl
ENTITY good_process IS
  PORT (clk : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY good_process;

ARCHITECTURE behavioral OF good_process IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      data_out <= data_in;
    ELSE
      data_out <= data_out;  -- Explicit assignment to prevent latch
    END IF;
  END PROCESS;
END ARCHITECTURE behavioral;
```