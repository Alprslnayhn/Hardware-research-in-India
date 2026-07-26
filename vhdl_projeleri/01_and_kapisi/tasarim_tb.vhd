-- tasarim_tb.vhd
library ieee;
use ieee.std_logic_1164.all;

-- Testbench'in dışarıya açılan pini olmaz, entity içi boştur.
entity and_kapi_tb is
end entity and_kapi_tb;

architecture test_ortami of and_kapi_tb is
    -- Tasarıma bağlayacağımız sanal kablolar (sinyaller)
    signal tb_A : std_logic := '0';
    signal tb_B : std_logic := '0';
    signal tb_Y : std_logic;
begin
    
    -- 1. Test edilecek donanımı (UUT - Unit Under Test) çağır ve kabloları bağla
    UUT: entity work.and_kapi
        port map (
            A => tb_A,
            B => tb_B,
            Y => tb_Y
        );

    -- 2. Sinyalleri zamanla değiştiren süreç (Process)
    uyarici_surec: process
    begin
        -- Senaryo 1: A=0, B=0
        tb_A <= '0'; tb_B <= '0';
        wait for 10 ns; -- 10 nanosaniye bekle ve sonucu gözlemle

        -- Senaryo 2: A=0, B=1
        tb_A <= '0'; tb_B <= '1';
        wait for 10 ns;

        -- Senaryo 3: A=1, B=0
        tb_A <= '1'; tb_B <= '0';
        wait for 10 ns;

        -- Senaryo 4: A=1, B=1 (AND kapısı sadece burada 1 çıktısı verir)
        tb_A <= '1'; tb_B <= '1';
        wait for 10 ns;

        -- Testi bitir (wait tek başına yazıldığında simülasyonu sonsuza kadar durdurur)
        wait; 
    end process;
    
end architecture test_ortami;

