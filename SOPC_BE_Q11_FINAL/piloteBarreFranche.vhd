library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity PiloteBarreFranche is 

port (

--entrees 
clk_50M 			: in std_logic; -- horloge
raz_n           	: in std_logic;	-- reset
in_freq_anemometre  : in std_logic; -- freq du vent
continu				: in std_logic;	-- mode de fonctionnement
start_stop			: in std_logic; -- start/stop

data_anemometre		: out std_logic_vector (7 downto 0); -- valeur anemo
AffCentaine, AffDizane, AffUnite: out std_logic_vector (0 to 6);
clk_1Hz           : out std_logic;
leds : out std_logic_vector(1 downto 0);
data_valid			: out std_logic  -- validation donnee

);

end PiloteBarreFranche;

architecture bhv of PiloteBarreFranche is
component gestion_anemo is

port (

--entrees 
clk_50M 			: in std_logic; -- horloge
raz_n           	: in std_logic;	-- reset
in_freq_anemometre  : in std_logic; -- freq du vent
continu				: in std_logic;	-- mode de fonctionnement
start_stop			: in std_logic; -- start/stop
--sorties
data_valid			: out std_logic; -- validation donnee
data_anemometre		: out std_logic_vector (7 downto 0); -- valeur anemo
AffCentaine, AffDizane, AffUnite 	 : out  STD_LOGIC_VECTOR(0 to 6);
clk_1Hz           : out std_logic;
leds : out std_logic_vector(1 downto 0)

);
end component gestion_anemo;

signal s_raz_n : std_logic;
--signal s_data_anemometre : std_logic_vector  (25 downto 0);

begin 

vitesse_vent: gestion_anemo port map (clk_50M=>clk_50M, raz_n => raz_n, in_freq_anemometre => in_freq_anemometre, continu => continu, start_stop=> start_stop,
 data_valid=>data_valid, data_anemometre=> data_anemometre, AffCentaine=>AffCentaine, AffDizane=>AffDizane, AffUnite=>AffUnite, clk_1Hz=>clk_1Hz, leds=>leds);

end bhv;
