library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port ( 
        D0  : in  STD_LOGIC;
        D1  : in  STD_LOGIC;
        D2  : in  STD_LOGIC;
        D3  : in  STD_LOGIC;
        Sel : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 bitlik seçici (00, 01, 10, 11)
        Y   : out STD_LOGIC                      -- Tekil Çıkış
    );
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    -- Seçici (Sel) sinyaline göre çıkışa (Y) hangi girişin aktarılacağı belirleniyor
    with Sel select
        Y <= D0 when "00",
             D1 when "01",
             D2 when "10",
             D3 when "11",
             '0' when others; -- Güvenlik için tanımlanmayan durumlarda 0 basar
end Behavioral;
