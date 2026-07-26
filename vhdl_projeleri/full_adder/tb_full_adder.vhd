library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_full_adder is
-- Testbench olduğu için port tanımlanmaz
end tb_full_adder;

architecture behavior of tb_full_adder is
    -- Test edilecek donanım
    component full_adder
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
    end component;

    -- Sinyaller
    signal A    : std_logic := '0';
    signal B    : std_logic := '0';
    signal Cin  : std_logic := '0';
    signal Sum  : std_logic;
    signal Cout : std_logic;

begin
    -- Tasarımı testbench'e bağlama (Port Mapping)
    uut: full_adder port map (
        A => A, B => B, Cin => Cin,
        Sum => Sum, Cout => Cout
    );

    -- Simülasyon Süreci (Tüm ihtimaller deneniyor)
    stim_proc: process
    begin
        -- 0 + 0 + 0
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        
        -- 0 + 0 + 1
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        
        -- 0 + 1 + 0
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        
        -- 0 + 1 + 1
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        
        -- 1 + 0 + 0
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        
        -- 1 + 0 + 1
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        
        -- 1 + 1 + 0
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        
        -- 1 + 1 + 1 (En yüksek durum, Toplam=1, Elde=1 olmalı)
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        
        wait; -- Simülasyonu sonlandır
    end process;
end behavior;
