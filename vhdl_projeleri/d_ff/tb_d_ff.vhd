library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_d_ff is
-- Port yok
end tb_d_ff;

architecture behavior of tb_d_ff is
    component d_ff
    Port (
        clk : in  STD_LOGIC;
        rst : in  STD_LOGIC;
        D   : in  STD_LOGIC;
        Q   : out STD_LOGIC
    );
    end component;

    -- Sinyaller
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal D   : std_logic := '0';
    signal Q   : std_logic;

    -- Saat sinyali periyodu (Örn: 10 ns -> 100 MHz frekans)
    constant clk_period : time := 10 ns;

begin
    uut: d_ff port map (
        clk => clk, rst => rst, 
        D => D, Q => Q
    );

    -- Saat Sinyali Üretici Process (Sürekli çalışır)
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;  -- 5 ns bekle
        clk <= '1';
        wait for clk_period/2;  -- 5 ns bekle
    end process;

    -- Test Senaryosu (Veri Girişleri)
    stim_proc: process
    begin
        -- 1. Aşama: Sistemi Resetle (Hafızayı temizle)
        rst <= '1';
        wait for 15 ns;
        rst <= '0';  -- Reset'i kaldır, normal çalışmaya başlasın
        
        -- 2. Aşama: Veriyi 1 yap
        D <= '1';
        wait for 12 ns;
        
        -- 3. Aşama: Veriyi 0 yap
        D <= '0';
        wait for 15 ns;
        
        -- 4. Aşama: Veriyi tekrar 1 yap ve bekle
        D <= '1';
        wait for 20 ns;

        wait; -- Uyarı: clk_process sürekli çalıştığı için bu 'wait' simülasyonu tamamen durdurmaz.
    end process;
end behavior;

