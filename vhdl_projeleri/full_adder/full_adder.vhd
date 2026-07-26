library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( 
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;   -- Carry In (Gelen Elde)
        Sum  : out STD_LOGIC;   -- Toplam
        Cout : out STD_LOGIC    -- Carry Out (Çıkan Elde)
    );
end full_adder;

architecture Behavioral of full_adder is
begin
    -- Toplam (Sum) hesabı: A, B ve Cin'in XOR işlemine sokulmasıdır.
    Sum  <= A xor B xor Cin;
    
    -- Elde (Carry Out) hesabı: Herhangi iki girişin 1 olması durumu.
    Cout <= (A and B) or (Cin and (A xor B));
end Behavioral;
