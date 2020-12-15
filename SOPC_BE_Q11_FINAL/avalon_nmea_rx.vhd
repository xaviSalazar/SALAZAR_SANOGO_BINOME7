LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY avalon_nmea_rx IS

port (
clk, chipselect, write_n, reset_n: in std_logic;
address: in std_logic_vector (2 downto 0);
writedata : in std_logic_vector (31 downto 0);
readdata : out std_logic_vector (31 downto 0);
rxd: in std_logic;

val_data, val_chaine : out std_logic
--,val_valbit, sortie_raz_bit: out std_logic;
--sortie_qout : out std_logic_vector (9 downto 0);
--BCD7SEGMENT		 : out STD_LOGIC_VECTOR(0 to 6);
--multiplex		 : out STD_LOGIC_VECTOR(2 downto 0);
);
END avalon_nmea_rx;

ARCHITECTURE arch_nmea_rx OF avalon_nmea_rx IS

signal concatenado : std_LOGIC_VECTOR (7 downto 0);
signal s_count76800 : integer range 0 to 650;
signal s_clk76800   : std_logic;
--signal s_count : integer range 0 to 650;
--signal s_clk16 : std_logic;
signal s_count4800 : integer range 0 to 7;
signal s_clk4800   : std_logic;
signal val_dat, ack, chaine_valid  : std_logic;
signal raz_bit : std_logic;
signal raz,  val_bit, repos, raz_n  : std_logic;
 --signal s_count16 : std_logic_vector (3 downto 0); 
 signal count_bit : std_logic_vector (3 downto 0):="0000";
 signal s_qout : std_logic_vector (9 downto 0);
 signal data , centaine, dizaine, unite, unused  : std_logic_vector(7 downto 0);
 signal synchro: std_logic_vector(7 downto 0) := "00010000";
 
 signal s_qdec : std_logic_vector (1 downto 0);
 
 signal config : std_logic_vector (2 downto 0);
 signal etat: integer range 1 to 4;
 signal etat_chaine: integer range 0 to 9;
 --signal  contador: integer range 0 to 50000000;

--signal Centena, Decena, Unidad 		 :  STD_LOGIC_VECTOR(0 to 6);

--signal s_multiplex		 :  STD_LOGIC_VECTOR(2 downto 0);
 
BEGIN


--
--*************************************************
-- process generation horloge à 76800 hz à partir 50MHz
--*************************************************
	gen_clk76800 : PROCESS (clk, raz_n)
	BEGIN
       IF raz_n = '0' THEN
          s_count76800 <= 0;
       ELSIF rising_edge(clk) THEN
         if s_count76800 = 650 then --651 then
			s_count76800 <= 0;
			s_clk76800 <= '1';
		else
		   s_clk76800 <= '0';
			s_count76800 <= s_count76800+1;
		end if;
       END IF;
    END PROCESS;
--**************************************************
--
val_data <= val_dat;
val_chaine<= chaine_valid;

--]
--**************************************************   
-- process generation horloge data de 4800 bauds à partir 76800hz
-- synchronisé sur bit de start (raz)
--*************************************************
gen_4800: PROCESS (s_clk76800, raz)
	BEGIN
		IF (raz = '1') THEN
          s_count4800 <=  s_count4800;      
		ELSIF rising_edge(s_clk76800) THEN		
		if s_count4800 = 7 then
			s_count4800 <= 0;
			s_clk4800 <= not(s_clk4800);
		else
			s_count4800 <= s_count4800+1;
		end if;
		END IF;
    END PROCESS;
--    clk_bit <= s_clk4800;-- pour visu du clock bit
--*************************************************
--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************


--0000000000000000000000000000000000000000000000000000000000000000
--*************************************************
-- process detection du bit de start
--*************************************************
gen_start: PROCESS (s_clk76800)
	BEGIN
		if rising_edge(s_clk76800) then	
   s_qdec(0) <= rxd ; --valeur précédente de rxd
	s_qdec(1) <= s_qdec(0) ; 
		End if ;
    END PROCESS;
raz <= (s_qdec(1) and (not s_qdec(0))) when (count_bit = "0000" or count_bit = "1010");  --raz actif sur 1 à chaque bit de start
--*************************************************
--0000000000000000000000000000000000000000000000000000000000000000


--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************
-- process registre à décalage sur le clock bit
--*************************************************
rec_dec: process (s_clk4800)
variable i: integer ;
begin
	if raz_n ='0' then s_qout <= (others =>'0');
	elsif rising_edge(s_clk4800)  then
	s_qout(9) <= s_qdec(1) ;
		For i in 1 to 9 loop
		s_qout(9-i) <= s_qout(9-i+1); --octet reçu + 1 startt + 1 stop
		end loop;
	End if ;
	--sortie_qout <= s_qout;
end process;

--******************************************************
--0000000000000000000000000000000000000000000000000000000000000000


--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************
-- process  comptage des bits valides
--*************************************************
comptage_bit: process (raz_bit, s_clk4800)
begin
	if (raz_bit ='1') then count_bit <= (others =>'0');
	elsif rising_edge(s_clk4800) then
		if (val_bit='1' and count_bit <= "1010") then 
		     count_bit <= count_bit + "0001";
		end if;
	End if ;
	--sortie_count_bit <= count_bit;
end process; 
--******************************************************
--0000000000000000000000000000000000000000000000000000000000000000
--sortie_raz_bit <= raz_bit;
--val_valbit <= val_bit;

--******************************************************
-- machine à états gestion de l'uart
--*************************************************
gestion_uart:	process (s_clk76800)
	begin 
	if rising_edge(s_clk76800) then
		case etat is
		when 1 =>
			if raz ='1' then 
			etat<=2	;
			end if;
		when 2 =>	etat<=3	;
		when 3 =>	
		if count_bit >= "1010" then etat<=4	;
		end if;
		when 4 =>	etat<=1	;
		when others =>	etat <=1;
		end case;
		
		if val_dat ='1' then data  <= s_qout(8 downto 1) ;
		end if;
		
	end if;
	end process;
	
raz_bit <= '1' when etat = 2 else '0';
val_bit <= '1' when etat = 3 else '0';
val_dat <= '1' when etat = 4 else '0';
--******************************************************
--sortie_data <= data;

--process (clk)
--begin
--	if rising_edge(clk) then
--	  contador <= contador + 1;
--	  
--			if contador = 12500 then 
--			s_multiplex <= "011";
--			end if;
--			
--			if contador = 25000  then
--			s_multiplex <= "101";
--			end if;
--			
--			if contador = 37500 then
--			s_multiplex <= "110";
--			end if;
--			
--			if contador = 50000 then
--			contador <=0;
--			end if;
--	end if;
--	
--	multiplex <= s_multiplex;
--	
--end process;		

--0000000000000000000000000000000000000000000000000000000000000000
--******************************************************
-- machine à états gestion chaîne caractères reçus
--*************************************************
gestion_chaine:	process (s_clk76800, raz_n)
	begin 
	if raz_n ='0' then etat_chaine<=0	;
	centaine<="11111111";
	dizaine<="11111111";
	unite<="11111111";
	chaine_valid<='0';
	elsif rising_edge(s_clk76800) then
		case etat_chaine is
		when 0 =>
			if val_dat ='1' 
			then --les données sont copiées dans data à val_dat='1', donc on ne peut pas les
			etat_chaine<=1	;     --lire à val_dat='1', il faut attendre le prochain front montant de s_clk76800
			end if;
			chaine_valid<='0';
		when 1 =>	
			if data = synchro then 
			etat_chaine<=2	;
			else etat_chaine<=0;
			end if;
		when 2 =>	
			if val_dat ='1' then 
			etat_chaine<=3	;
			end if;
		when 3 =>	 
			etat_chaine<=4	;
			centaine <= data;
		when 4 =>
			if val_dat ='1' then 
			etat_chaine<=5	;
			end if;
		when 5 => 
			etat_chaine<=6	;
			dizaine <= data;
		when 6 =>
			if val_dat ='1' then 
			etat_chaine<=7	;
			end if;
		when 7 => 
			etat_chaine<=8	;
			unite <= data;
			chaine_valid<='1';
			--ack<='1'; --ajouté pour des besoins de test
		when 8 =>
			if ack ='1' then 
			etat_chaine<=9	;
			chaine_valid<='0';
			--ack<='0'; --ajouter pour des besoins de test
			end if;
		when 9 =>
			if ack ='0' then 
			etat_chaine<=0	;
			end if;
		when others =>	etat_chaine <=0;
		end case;
	end if;
	end process gestion_chaine;

--BCD7SEGMENT <= Centena when s_multiplex = "011" else 
--					Decena    when s_multiplex = "101" else 
--					Unidad    when s_multiplex = "110" else
--					"1111111";
--					
--    Centena <=  "0000001" when centaine =X"00"   else
--                "1001111" when centaine =X"01"   else
--                "0010010" when centaine =X"02"   else
--                "0000110" when centaine =X"03"   else
--                "1001100" when centaine =X"04"   else
--                "0100100" when centaine =X"05"   else
--                "0100000" when centaine =X"06"   else
--                "0001111" when centaine =X"07"   else
--                "0000000" when centaine = X"08"   else
--                "0000100" when centaine =X"09"   else
--                "1111111";
--                
--Decena <=       "0000001" when dizaine =X"00"   else
--                "1001111" when dizaine =X"01"   else
--                "0010010" when dizaine =X"02"   else
--                "0000110" when dizaine =X"03"   else
--                "1001100" when dizaine =X"04"   else
--                "0100100" when dizaine =X"05"   else
--                "0100000" when dizaine =X"06"   else
--                "0001111" when dizaine =X"07"   else
--                "0000000" when dizaine =X"08"   else
--                "0000100" when dizaine =X"09"   else
--                "1111111";
--                
--Unidad <=       "0000001" when unite =X"00"   else
--                "1001111" when unite =X"01"   else
--                "0010010" when unite =X"02"   else
--                "0000110" when unite =X"03"   else
--                "1001100" when unite =X"04"   else
--                "0100100" when unite =X"05"   else
--                "0100000" when unite =X"06"   else
--                "0001111" when unite =X"07"   else
--                "0000000" when unite =X"08"   else
--                "0000100" when unite =X"09"   else
--                "1111111";
					 
					 
					 --0000000000000000000000000000000000000000000000000000000000000000
-- 				interface bus avalon
--******************************************************
-- écriture registres
--*******************************************************
ecriture: process (clk, reset_n)
	begin
	if reset_n = '0' then
	config <= (others => '0');
	elsif clk'event and clk = '1' then
		if chipselect ='1' and write_n = '0' then
			case address is
			when "000" =>
			config (1 downto 0)<= (writedata (1 downto 0));
			when "001" =>
			synchro <= (writedata (7 downto 0));
			when others => 
			unused <= (others => '0');
			end case;
		end if;
	end if;
end process ecriture;
--****************************************************************
raz_n <= config (0);
ack <= config (1);
--*****************************************************************
--	lecture des registres
--*****************************************************************
lecture: process (address, val_dat, ack, raz_n)
	begin
		case address is
			when "000" =>
			readdata(2 downto 0) <= chaine_valid&config(1 downto 0);
			when "001" =>
			readdata(7 downto 0) <= synchro ;
			when "010" =>
			readdata(7 downto 0) <= centaine ;
			when "011" =>
			readdata(7 downto 0) <= dizaine ;
			when "100" =>
			readdata(7 downto 0) <= unite ;
			when others => 
			readdata <= (others => '0');
			end case;
end process lecture;
--**********************************************************************
--00000000000000000000000000000000000000000000000000000000000000000000000

					 
end    ARCHITECTURE arch_nmea_rx;

