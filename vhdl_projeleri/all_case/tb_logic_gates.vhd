library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_logic_gates is
-- Testbench'in portu olmaz
end tb_logic_gates;

architecture behavior of tb_logic_gates is
    -- Test edilecek bileşeni (component) çağırıyoruz
    component logic_gates
    Port (
        A      : in  STD_LOGIC;
        B      : in  STD_LOGIC;
        Y_AND  : out STD_LOGIC;
        Y_OR   : out STD_LOGIC;
        Y_NOT  : out STD_LOGIC;
        Y_NAND : out STD_LOGIC;
        Y_NOR  : out STD_LOGIC;
        Y_XOR  : out STD_LOGIC
    );
    end component;

    -- Sinyalleri tanımlıyoruz
    signal A      : std_logic := '0';
    signal B      : std_logic := '0';
    signal Y_AND  : std_logic;
    signal Y_OR   : std_logic;
    signal Y_NOT  : std_logic;
    signal Y_NAND : std_logic;
    signal Y_NOR  : std_logic;
    signal Y_XOR  : std_logic;

begin
    -- Tasarımı testbench'e bağlıyoruz
    uut: logic_gates port map (
        A => A, B => B,
        Y_AND => Y_AND, Y_OR => Y_OR, Y_NOT => Y_NOT,
        Y_NAND => Y_NAND, Y_NOR => Y_NOR, Y_XOR => Y_XOR
    );

    -- Simülasyon süreci (Girişlere sırayla değer veriyoruz)
    stim_proc: process
    begin
        -- Durum 1: A=0, B=0
        A <= '0'; B <= '0';
        wait for 10 ns;

        -- Durum 2: A=0, B=1
        A <= '0'; B <= '1';
        wait for 10 ns;

        -- Durum 3: A=1, B=0
        A <= '1'; B <= '0';
        wait for 10 ns;

        -- Durum 4: A=1, B=1
        A <= '1'; B <= '1';
        wait for 10 ns;

        wait; -- Simülasyonu durdur
    end process;
end behavior;
