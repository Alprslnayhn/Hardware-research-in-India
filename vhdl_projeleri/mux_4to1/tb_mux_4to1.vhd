library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux_4to1 is
-- Port yok
end tb_mux_4to1;

architecture behavior of tb_mux_4to1 is
    component mux_4to1
    Port (
        D0  : in  STD_LOGIC;
        D1  : in  STD_LOGIC;
        D2  : in  STD_LOGIC;
        D3  : in  STD_LOGIC;
        Sel : in  STD_LOGIC_VECTOR (1 downto 0);
        Y   : out STD_LOGIC
    );
    end component;

    -- Sinyaller
    signal D0  : std_logic := '0';
    signal D1  : std_logic := '0';
    signal D2  : std_logic := '0';
    signal D3  : std_logic := '0';
    signal Sel : std_logic_vector(1 downto 0) := "00";
    signal Y   : std_logic;

begin
    -- Port Bağlantıları
    uut: mux_4to1 port map (
        D0 => D0, D1 => D1, D2 => D2, D3 => D3, 
        Sel => Sel, Y => Y
    );

    -- Simülasyon Süreci
    stim_proc: process
    begin
        -- Girişlere test edebilmemiz için rastgele/farklı değerler atıyoruz
        D0 <= '1';
        D1 <= '0';
        D2 <= '1';
        D3 <= '0';
        wait for 10 ns;

        -- Seçici 00 iken çıkış Y, D0'ı (yani 1'i) göstermeli
        Sel <= "00";
        wait for 20 ns;

        -- Seçici 01 iken çıkış Y, D1'i (yani 0'ı) göstermeli
        Sel <= "01";
        wait for 20 ns;

        -- Seçici 10 iken çıkış Y, D2'yi (yani 1'i) göstermeli
        Sel <= "10";
        wait for 20 ns;

        -- Seçici 11 iken çıkış Y, D3'ü (yani 0'ı) göstermeli
        Sel <= "11";
        wait for 20 ns;

        -- Girişleri çalışma anında değiştirip devrenin anlık tepkisini test edelim
        -- Sel şu an "11" yani çıkış D3'e bağlı. D3'ü 1 yaparsak çıkış da hemen 1 olmalı.
        D3 <= '1';
        wait for 20 ns;

        wait; -- Simülasyonu bitir
    end process;
end behavior;
