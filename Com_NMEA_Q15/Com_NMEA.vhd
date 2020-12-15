LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY Com_NMEA IS

port (
-----------------INTERFACE----------------------------
----------------------------------------------------
clk_50M, reset_n: in std_logic;
-----------------------------------------------------
-----------------TRANSMISSION-------------------------------
txd: out std_logic;
-----------------------------------------------------------
------------------RECEPTION--------------------------------
rxd: in std_logic;
-----------------------------------------------------------
------------------Visualisation de rxd --------------------
txd_echo : out std_logic
-----------------------------------------------------------
);
END Com_NMEA;

ARCHITECTURE arch_Com_NMEA OF Com_NMEA IS

----------------- Declaration du composant tx ------------------------------
component nmea_tx
port (
clk_50M, chipselect, write_n, reset_n: in std_logic;
address: in std_logic_vector (2 downto 0);
writedata : in std_logic_vector (31 downto 0);
readdata : out std_logic_vector (31 downto 0);
done_probe, txd : out std_logic;
centaine, dizaine, unite   : in std_logic_vector(7 downto 0)
);
end component nmea_tx;

----------------- Declaration du composant rx --------------------------------
component nmea_rx
port (
clk_50M, chipselect, write_n, reset_n: in std_logic;
address: in std_logic_vector (2 downto 0);
writedata : in std_logic_vector (31 downto 0);
readdata : out std_logic_vector (31 downto 0);
val_data, val_chaine: out std_logic;
rxd: in std_logic;
-------------------------------------------------------------
centaine, dizaine, unite  : out std_logic_vector(7 downto 0)
);
end component nmea_rx;

--------------- Specification d'architures, non indispensable dans notre cas ---------
for all : nmea_tx use entity work.nmea_tx(arch_nmea_tx);
for all : nmea_rx use entity work.nmea_rx(arch_nmea_rx);

-----------------Declaration des signaux -------------------------------------
signal chipselect, write_n:  std_logic;
signal address:  std_logic_vector (2 downto 0);
signal writedata :  std_logic_vector (31 downto 0);
signal readdata :  std_logic_vector (31 downto 0);
signal done_probe:  std_logic;
signal val_data, val_chaine: std_logic;
signal cent, dix, un  : std_logic_vector(7 downto 0);

-------------------------Architecture----------------------------------
BEGIN
tx : nmea_tx port map(clk_50M=>clk_50M, chipselect=>chipselect, write_n=>write_n, reset_n=>reset_n,
              address=>address, writedata=>writedata, readdata=>readdata, done_probe=>done_probe, txd=>txd,
				  centaine=>X"AB", dizaine=>X"CD", unite=>X"EF");

rx : nmea_rx port map(clk_50M=>clk_50M, chipselect=>chipselect, write_n=>write_n, reset_n=>reset_n,
                     address=>address, writedata=>writedata, readdata=>readdata, 
					      val_data=>val_data, val_chaine=>val_chaine, rxd=>rxd,
							centaine=>cent, dizaine=>dix, unite=>un);
							
--echo_tx : nmea_tx port map(clk_50M=>clk_50M, chipselect=>chipselect, write_n=>write_n, reset_n=>reset_n,
--              address=>address, writedata=>writedata, readdata=>readdata, done_probe=>done_probe, 
--				  txd=>txd_echo, centaine=>cent, dizaine=>dix, unite=>un);



end    ARCHITECTURE arch_Com_NMEA;