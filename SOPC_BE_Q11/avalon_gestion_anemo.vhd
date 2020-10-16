LIBRARY       IEEE; 
USE           IEEE.STD_LOGIC_1164.ALL;
use           ieee.std_logic_unsigned.all;
use           IEEE.NUMERIC_STD.all;

entity avalon_gestion_anemo is 

port (

--entrees 
clk 			: in std_logic; -- horloge
reset_n           	: in std_logic;	-- reset
in_freq_anemometre  : in std_logic; -- freq du vent
--continu				: in std_logic;	-- mode de fonctionnement
--start_stop			: in std_logic; -- start/stop
AffCentaine, AffDizane, AffUnite 		 : out STD_LOGIC_VECTOR(0 to 6);
--clk_1Hz           :  out std_logic;
leds_config :           out std_logic_vector(1 downto 0);
--sorties
data_valid			: out std_logic; -- validation donnee
data_anemometre		: out std_logic_vector (7 downto 0); -- valeur anemo

chipselect, write_n : in std_logic;
writedata : in std_logic_vector (31 downto 0);
readdata : out std_logic_vector (31 downto 0);
address: std_logic_vector (1 downto 0)
);

end avalon_gestion_anemo;

architecture behv of avalon_gestion_anemo is 
signal valeur_present   : std_logic_vector (25 downto 0):=(others => '0');

signal  debut_periode, fin_periode : std_logic;
signal  periode : std_logic_vector (25 downto 0):=(others => '0');

signal valeur_precedent : std_logic_vector (25 downto 0):=(others => '0');
signal valeur_calcule : std_logic_vector (25 downto 0);

signal centaine, dizaine, unite : std_logic_vector (7 downto 0):=(others => '0');

signal s_data_anemometre		: std_logic_vector (7 downto 0) ;
signal s_data_anemo		: std_logic_vector (25 downto 0) ; --juste pour la validation (stabilité de data_valid)

SIGNAL  count_1Hz      :     unsigned (26 downto 0);

signal s_clk_1Hz           :     std_logic;

type mode is (Monocoup, Multicoup);
signal  mode_anemometre: mode:=Monocoup;

signal s_leds_config : std_logic_vector(1 downto 0);

signal s_data_valid : std_logic;

----modification pour le bus avalon
--signal continu				:  std_logic;	-- mode de fonctionnement
--signal start_stop			:  std_logic; -- start/stop
signal  config           :  std_logic_vector(2 downto 0);
signal  nios2_data_anemometre :  std_logic_vector (7 downto 0) ;
--signal AffCentaine, AffDizane, AffUnite 		 :  STD_LOGIC_VECTOR(0 to 6);
signal clk_1Hz           :  std_logic;
--signal leds :           std_logic_vector(1 downto 0);


BEGIN
-- process pour comptage avec horloge de 50M
process (clk)
begin
	if rising_edge(clk) then
	  if(valeur_present = X"2FAF080") then
	     valeur_present <= (others=>'0');
	  else
	     if(debut_periode = '1') then 
           valeur_present<=valeur_present+X"1";
	    else valeur_present<=valeur_present;
	     end if;
        
	  end if;
	end if;
end process;

--process calcul du nombre de fronts montants du clk_50M dans une periode du signal de l'anemomètre
process (in_freq_anemometre)
begin 

	if rising_edge(in_freq_anemometre) then 
        debut_periode <= '1';
		if (valeur_precedent < valeur_present) then
		valeur_calcule <= valeur_present - valeur_precedent;
		elsif (valeur_precedent > valeur_present ) then
        valeur_calcule <= valeur_precedent - valeur_present;
        end if;
        valeur_precedent <= valeur_present;
     end if;
     
end process;

--process changement de mode
choix_mode : process (config) --(continu, start_stop)
begin 
	if (config(1)='1') then       --config(1)=continu
          mode_anemometre <= Multicoup;
          s_leds_config(0) <= '1';
          s_data_valid <= '1';
    else
     if(config(1)='0') then
           mode_anemometre <= Monocoup;
           s_leds_config(0) <= '0';
           if(config(2)='0') then    --config(2)=start_stop
              s_data_valid <= '0';
           else
             s_data_valid <= '1';
           end if;
     end if;
     end if;   
end process;
leds_config(0) <= s_leds_config(0);

--process clock_1Hz
div_clk : PROCESS(clk)
begin
if rising_edge(clk) then
if count_1Hz = X"2FAF080" then
  s_clk_1Hz<= not s_clk_1Hz;
  count_1Hz <= (others => '0');
 case mode_anemometre is
   when Multicoup =>
      s_data_anemometre <=  std_logic_vector(to_unsigned( to_integer( 50000000 / unsigned (valeur_calcule)) ,8 ) );
      s_data_anemo <= std_logic_vector(to_unsigned( to_integer( 50000000 / unsigned (valeur_calcule)) ,26 ) );
      	if (s_data_anemo < X"00" or s_data_anemo > X"FA") then
           s_data_anemometre <= X"00";
       end if;
      centaine <= std_logic_vector(to_unsigned(to_integer( unsigned(s_data_anemometre) / 100), 8));
      dizaine  <= std_logic_vector(to_unsigned(to_integer( unsigned (s_data_anemometre) /10  mod 10), 8));
      unite    <= std_logic_vector(to_unsigned(to_integer(unsigned (s_data_anemometre) mod 10 ), 8)) ;
           
   when Monocoup =>
       if(config(2)='1') then
         s_leds_config(1) <= '1';
         s_data_anemometre <=  std_logic_vector(to_unsigned( to_integer( 50000000 / unsigned (valeur_calcule)) ,8 ) );
         s_data_anemo <= std_logic_vector(to_unsigned( to_integer( 50000000 / unsigned (valeur_calcule)) ,26 ) );
      	  if (s_data_anemo < X"00" or s_data_anemo > X"FA") then
            s_data_anemometre <= X"00";
          end if;
         centaine <= std_logic_vector(to_unsigned(to_integer( unsigned(s_data_anemometre) / 100), 8));
         dizaine  <= std_logic_vector(to_unsigned(to_integer( unsigned (s_data_anemometre) /10  mod 10), 8));
         unite    <= std_logic_vector(to_unsigned(to_integer(unsigned (s_data_anemometre) mod 10 ), 8)) ;
         else 
            if(config(2)='0') then 
            s_leds_config(1) <= '0';
            end if;
       end if;
 end case;
 
else
count_1Hz <= count_1Hz + "1";
end IF;
end IF;
end PROCESS div_clk;
leds_config(1) <= s_leds_config(1);
clk_1Hz<=s_clk_1Hz;

data_valid <= s_data_valid;
data_anemometre <= s_data_anemometre;

AffCentaine <=  "0000001" when centaine =X"00"   else
                "1001111" when centaine =X"01"   else
                "0010010" when centaine =X"02"   else
                "0000110" when centaine =X"03"   else
                "1001100" when centaine =X"04"   else
                "0100100" when centaine =X"05"   else
                "0100000" when centaine =X"06"   else
                "0001111" when centaine =X"07"   else
                "0000000" when centaine =X"08"   else
                "0000100" when centaine =X"09"   else
                "1111111";
                
AffDizane <=    "0000001" when dizaine =X"00"   else
                "1001111" when dizaine =X"01"   else
                "0010010" when dizaine =X"02"   else
                "0000110" when dizaine =X"03"   else
                "1001100" when dizaine =X"04"   else
                "0100100" when dizaine =X"05"   else
                "0100000" when dizaine =X"06"   else
                "0001111" when dizaine =X"07"   else
                "0000000" when dizaine =X"08"   else
                "0000100" when dizaine =X"09"   else
                "1111111";
                
AffUnite <=     "0000001" when unite =X"00"   else
                "1001111" when unite =X"01"   else
                "0010010" when unite =X"02"   else
                "0000110" when unite =X"03"   else
                "1001100" when unite =X"04"   else
                "0100100" when unite =X"05"   else
                "0100000" when unite =X"06"   else
                "0001111" when unite =X"07"   else
                "0000000" when unite =X"08"   else
                "0000100" when unite =X"09"   else
                "1111111";     

--interface avalon
--écriture registres
process_write: process (clk, reset_n)
begin
if reset_n = '0' then
config <= (others => '0');
nios2_data_anemometre <= (others => '0');
clk_1Hz <= '0';
elsif clk'event and clk = '1' then
if chipselect ='1' and write_n = '0' then
if address = "00" then
config  <= writedata(2 downto 0);
end if;
--if address = "01" then
--nios2_data_anemometre  <= writedata(7 downto 0);
--end if;
end if;
end if;
end process;


--lecture registres
process_Read:PROCESS(address, config, s_data_anemometre)
 BEGIN
 case address is
 when "00" => readdata <= X"000000"&"00000"&config ;
 when "01" => readdata <= X"000000"&s_data_anemometre;
 when others => readdata <= (others => '0');
 end case;
 END PROCESS process_Read ;					 

END behv;
