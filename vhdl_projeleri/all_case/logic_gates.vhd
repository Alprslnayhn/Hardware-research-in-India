library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates is
    Port (
        A      : in  STD_LOGIC;
        B      : in  STD_LOGIC;
        Y_AND  : out STD_LOGIC;
        Y_OR   : out STD_LOGIC;
        Y_NOT  : out STD_LOGIC;
        Y_NAND : out STD_LOGIC;
        Y_NOR  : out STD_LOGIC;
        Y_XOR  : out STD_LOGIC
    );
end logic_gates;

architecture Behavioral of logic_gates is
begin
    -- Hocanın istediği tüm kapıların VHDL karşılıkları
    Y_AND  <= A and B;
    Y_OR   <= A or B;
    Y_NOT  <= not A;      -- NOT kapısı sadece A girişini tersler
    Y_NAND <= A nand B;
    Y_NOR  <= A nor B;
    Y_XOR  <= A xor B;
end Behavioral;
