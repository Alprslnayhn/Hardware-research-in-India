-- tasarim.vhd
library ieee;
use ieee.std_logic_1164.all; -- Standart sinyal tipleri (0, 1, Z vb.) için kütüphane

-- 1. Dış Kabuk (Pinler)
entity and_kapi is
    port (
        A : in  std_logic;  -- Giriş pini
        B : in  std_logic;  -- Giriş pini
        Y : out std_logic   -- Çıkış pini
    );
end entity and_kapi;

-- 2. İç Yapı (Davranış)
architecture donanim of and_kapi is
begin
    -- Y çıkışı, A ve B'nin 'AND' işlemine tabi tutulmuş halidir
    Y <= A and B; 
end architecture donanim;
