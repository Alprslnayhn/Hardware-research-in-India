library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Matematiksel işlemler (+1) için gerekli kütüphane

entity counter is
    Port ( 
        clk       : in  STD_LOGIC;                      -- Saat sinyali
        rst       : in  STD_LOGIC;                      -- Sıfırlama sinyali
        count_out : out STD_LOGIC_VECTOR (3 downto 0)   -- 4-bitlik çıkış (0000'dan 1111'e)
    );
end counter;

architecture Behavioral of counter is
    -- Çıkışa doğrudan matematiksel işlem yapamayacağımız için 
    -- içeride bir "unsigned" (işaretsiz sayı) sinyal tutuyoruz.
    signal count_reg : unsigned(3 downto 0) := (others => '0');
begin
    process(clk, rst)
    begin
        if rst = '1' then
            -- Reset gelirse sayıcıyı tamamen sıfırla
            count_reg <= "0000";
        elsif rising_edge(clk) then
            -- Saat sinyalinin her yükselen kenarında değeri 1 artır
            count_reg <= count_reg + 1;
        end if;
    end process;

    -- İçeride tuttuğumuz sayacı, standart mantık vektörüne çevirip çıkışa aktarıyoruz
    count_out <= std_logic_vector(count_reg);

end Behavioral;
