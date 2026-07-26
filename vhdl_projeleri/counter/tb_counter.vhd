library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
-- Port yok
end tb_counter;

architecture behavior of tb_counter is
    component counter
    Port (
        clk       : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        count_out : out STD_LOGIC_VECTOR (3 downto 0)
    );
    end component;

    -- Sinyaller
    signal clk       : std_logic := '0';
    signal rst       : std_logic := '0';
    signal count_out : std_logic_vector(3 downto 0);

    -- Saat sinyali periyodu (10 ns)
    constant clk_period : time := 10 ns;

begin
    uut: counter port map (
        clk => clk, 
        rst => rst, 
        count_out => count_out
    );

    -- Saat Sinyali Üretici Process
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Test Senaryosu
    stim_proc: process
    begin
        -- 1. Sistemi Resetle (Güvenli başlangıç)
        rst <= '1';
        wait for 20 ns;
        
        -- 2. Reset'i kaldır ve sayıcının çalışmasına izin ver
        rst <= '0';
        
        -- Sayıcının 0'dan 15'e kadar sayıp başa dönmesini (overflow) 
        -- izlemek için simülasyonu serbest bırakıyoruz.
        wait;
    end process;
end behavior;
