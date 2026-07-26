library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_register_file is
-- Port yok
end tb_register_file;

architecture behavior of tb_register_file is
    -- Test edilecek modül
    component register_file
    Port (
        clk          : in  STD_LOGIC;
        rst          : in  STD_LOGIC;
        Read_Addr_1  : in  STD_LOGIC_VECTOR(4 downto 0);
        Read_Data_1  : out STD_LOGIC_VECTOR(31 downto 0);
        Read_Addr_2  : in  STD_LOGIC_VECTOR(4 downto 0);
        Read_Data_2  : out STD_LOGIC_VECTOR(31 downto 0);
        Write_Addr   : in  STD_LOGIC_VECTOR(4 downto 0);
        Write_Data   : in  STD_LOGIC_VECTOR(31 downto 0);
        Write_Enable : in  STD_LOGIC
    );
    end component;

    -- Sinyaller
    signal clk          : std_logic := '0';
    signal rst          : std_logic := '0';
    signal Read_Addr_1  : std_logic_vector(4 downto 0) := (others => '0');
    signal Read_Data_1  : std_logic_vector(31 downto 0);
    signal Read_Addr_2  : std_logic_vector(4 downto 0) := (others => '0');
    signal Read_Data_2  : std_logic_vector(31 downto 0);
    signal Write_Addr   : std_logic_vector(4 downto 0) := (others => '0');
    signal Write_Data   : std_logic_vector(31 downto 0) := (others => '0');
    signal Write_Enable : std_logic := '0';

    -- Saat periyodu
    constant clk_period : time := 10 ns;

begin
    -- Port bağlantıları
    uut: register_file port map (
        clk => clk, rst => rst,
        Read_Addr_1 => Read_Addr_1, Read_Data_1 => Read_Data_1,
        Read_Addr_2 => Read_Addr_2, Read_Data_2 => Read_Data_2,
        Write_Addr => Write_Addr, Write_Data => Write_Data,
        Write_Enable => Write_Enable
    );

    -- Saat sinyali üretimi
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
        -- 1. Aşama: Sistemi Resetle
        rst <= '1';
        wait for 20 ns;
        rst <= '0';

        -- 2. Aşama: 5. adrese veri yaz (0xAAAA5555)
        -- Hexadecimal (Onaltılık) yazmak için başına x koyup tırnak içinde yazıyoruz
        Write_Enable <= '1';
        Write_Addr <= "00101"; -- İkilik sistemde 5
        Write_Data <= x"AAAA5555";
        wait for clk_period;

        -- 3. Aşama: 10. adrese veri yaz (0x12345678)
        Write_Addr <= "01010"; -- İkilik sistemde 10
        Write_Data <= x"12345678";
        wait for clk_period;

        -- 4. Aşama: 0. adrese yazmayı dene (0xFFFFFFFF)
        -- Beklenti: Sistem bu veriyi reddetmeli ve 0. adres 0 kalmalı
        Write_Addr <= "00000"; -- İkilik sistemde 0
        Write_Data <= x"FFFFFFFF";
        wait for clk_period;

        -- 5. Aşama: Yazma modunu kapat
        Write_Enable <= '0';
        wait for clk_period;

        -- 6. Aşama: Yazdığımız verileri aynı anda okuma
        -- Read_Data_1 ve Read_Data_2 çıkışlarında o verileri görmeliyiz
        Read_Addr_1 <= "00101"; -- 5. adresi 1. porttan oku
        Read_Addr_2 <= "01010"; -- 10. adresi 2. porttan oku
        wait for 20 ns;
        
        wait;
    end process;
end behavior;
