library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_ff is
    Port ( 
        clk : in  STD_LOGIC;  -- Saat sinyali
        rst : in  STD_LOGIC;  -- Sıfırlama sinyali (Asenkron)
        D   : in  STD_LOGIC;  -- Veri girişi
        Q   : out STD_LOGIC   -- Veri çıkışı (Hafızada tutulan değer)
    );
end d_ff;

architecture Behavioral of d_ff is
begin
    -- Ardışık mantık için 'process' bloğu kullanmak zorundayız.
    -- Bu blok sadece clk veya rst sinyallerinde bir değişiklik olduğunda tetiklenir.
    process(clk, rst)
    begin
        if rst = '1' then
            -- Reset sinyali gelirse çıkışı hemen sıfırla
            Q <= '0';
        elsif rising_edge(clk) then
            -- Sadece saat sinyalinin yükselen kenarında (0'dan 1'e geçişte) veriyi oku
            Q <= D;
        end if;
    end process;
end Behavioral;
