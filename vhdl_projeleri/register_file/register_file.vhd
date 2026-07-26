library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity register_file is
    Port ( 
        clk          : in  STD_LOGIC;
        rst          : in  STD_LOGIC;
        
        -- Okuma Portu 1
        Read_Addr_1  : in  STD_LOGIC_VECTOR(4 downto 0); -- 32 register için 5-bit adres yeterlidir (2^5 = 32)
        Read_Data_1  : out STD_LOGIC_VECTOR(31 downto 0);
        
        -- Okuma Portu 2
        Read_Addr_2  : in  STD_LOGIC_VECTOR(4 downto 0);
        Read_Data_2  : out STD_LOGIC_VECTOR(31 downto 0);
        
        -- Yazma Portu
        Write_Addr   : in  STD_LOGIC_VECTOR(4 downto 0);
        Write_Data   : in  STD_LOGIC_VECTOR(31 downto 0);
        Write_Enable : in  STD_LOGIC
    );
end register_file;

architecture Behavioral of register_file is
    -- 32 adet 32-bitlik yazmaçtan oluşan bir hafıza dizisi (Array) tanımlıyoruz
    type reg_array is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
    signal registers : reg_array := (others => (others => '0'));
begin

    -- Kombinasyonel Okuma İşlemi (MUX Mantığı)
    process(Read_Addr_1, Read_Addr_2, registers)
    begin
        -- Kural: 0. Register her zaman 0'dır. Aksi halde diziden veriyi oku.
        if (Read_Addr_1 = "00000") then
            Read_Data_1 <= (others => '0');
        else
            Read_Data_1 <= registers(to_integer(unsigned(Read_Addr_1)));
        end if;

        if (Read_Addr_2 = "00000") then
            Read_Data_2 <= (others => '0');
        else
            Read_Data_2 <= registers(to_integer(unsigned(Read_Addr_2)));
        end if;
    end process;

    -- Ardışık Yazma İşlemi (D-Flip Flop Mantığı)
    process(clk, rst)
    begin
        if rst = '1' then
            -- Reset durumunda tüm yazmaçları sıfırla
            registers <= (others => (others => '0'));
        elsif rising_edge(clk) then
            -- Sadece Write_Enable 1 ise ve 0. adrese yazılmıyorsa işlemi gerçekleştir
            if Write_Enable = '1' and Write_Addr /= "00000" then
                registers(to_integer(unsigned(Write_Addr))) <= Write_Data;
            end if;
        end if;
    end process;

end Behavioral;
