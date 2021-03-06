LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY nmea_rx_b IS

port (
clk, chipselect, write_n, reset_n: in std_logic;
writedata : in std_logic_vector (31 downto 0);
address: in std_logic_vector (2 downto 0);
rxd: in std_logic;
val_data, val_chaine: out std_logic;
readdata : out std_logic_vector (31 downto 0)
);
END nmea_rx_b;

ARCHITECTURE a_avalon_rxd OF nmea_rx_b IS
signal s_count : integer range 0 to 651;
signal s_clk16, val_dat, ack, chaine_valid  : std_logic;
signal raz, raz_bit, val_bit, repos, raz_n  : std_logic;
 signal s_count16, count_bit : std_logic_vector (3 downto 0);
 signal s_qout : std_logic_vector (9 downto 0);
 signal data , data_h, data_m, data_l, data_synchro, unused  : std_logic_vector(7 downto 0);
 signal s_qdec : std_logic_vector (1 downto 0);
 signal config : std_logic_vector (2 downto 0);
 signal etat: integer range 1 to 4;
 signal etat_chaine: integer range 0 to 9;
 
BEGIN

--0000000000000000000000000000000000000000000000000000000000000000
--*************************************************
-- process generation horloge à 76800 hz à partir 50MHz
--*************************************************
	gen_clk16 : PROCESS (clk, raz_n)
	BEGIN
       IF raz_n = '0' THEN
          s_count <= 0;
       ELSIF clk'EVENT AND clk = '1' THEN
         if s_count = 650 then
			s_count <= 0;
			s_clk16 <= '1';
		else
			s_count <= s_count+1;
			s_clk16 <= '0';
		end if;
       END IF;
    END PROCESS;
--**************************************************
--0000000000000000000000000000000000000000000000000000000000000000
val_data <= val_dat;
val_chaine<= chaine_valid;

--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************   
-- process generation horloge data de 4800 bauds
-- synchronisé sur bit de start (raz)
--*************************************************
gen_4800: PROCESS (s_clk16, raz)
	BEGIN
		IF raz = '1' THEN
          s_count16 <= "0000";
		ELSIF s_clk16'EVENT AND s_clk16 = '1' THEN
			s_count16 <= s_count16 +  "0001";
		END IF;
    END PROCESS;
--    clk_bit <= s_count16(3);-- pour visu du clock bit
--*************************************************
--0000000000000000000000000000000000000000000000000000000000000000


--0000000000000000000000000000000000000000000000000000000000000000
--*************************************************
-- process detection du bit de start
--*************************************************
gen_start: PROCESS (s_clk16)
	BEGIN
		if s_clk16 'event and s_clk16 = '1' then
		s_qdec(0) <= rxd ;
		s_qdec(1) <= s_qdec(0) ;
		End if ;
    END PROCESS;
raz <= s_qdec(1) and (not s_qdec(0));
--*************************************************
--0000000000000000000000000000000000000000000000000000000000000000


--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************
-- process registre à décalage sur le clock bit
--*************************************************
rec_dec: process (s_count16(3))
variable i: integer ;
begin
	if raz_n ='0' then s_qout <= (others =>'0');
	elsif s_count16(3) 'event and s_count16(3) = '1' then
	s_qout(9) <= s_qdec(1) ;
		For i in 1 to 9 loop
		s_qout(9-i) <= s_qout(9-i+1);
		end loop;
	End if ;
end process;
--******************************************************
--0000000000000000000000000000000000000000000000000000000000000000


--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************
-- process  comptage des bits valides
--*************************************************
comptage_bit: process (raz_bit, s_count16(3))

begin
	if raz_bit ='1' then count_bit <= (others =>'0');
	elsif s_count16(3) 'event and s_count16(3) = '1' then
		if val_bit='1' then count_bit <= count_bit + "0001";
		end if;
	End if ;
end process; 
--******************************************************
--0000000000000000000000000000000000000000000000000000000000000000



--0000000000000000000000000000000000000000000000000000000000000000
--******************************************************
-- machine à états gestion de l'uart
--*************************************************
gestion_uart:	process (s_clk16)
	begin 
	if s_clk16'event and s_clk16 = '1' then
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
--0000000000000000000000000000000000000000000000000000000000000000
--valid<=val_dat;--pour visu


--0000000000000000000000000000000000000000000000000000000000000000
--******************************************************
-- machine à états gestion chaîne caractères reçus
--*************************************************
gestion_chaine:	process (s_clk16, raz_n)
	begin 
	if raz_n ='0' then etat_chaine<=0	;
	data_h<="00000000";
	data_m<="00000000";
	data_l<="00000000";
	chaine_valid<='0';
	elsif s_clk16'event and s_clk16 = '1' then
		case etat_chaine is
		when 0 =>
			if val_dat ='1' then 
			etat_chaine<=1	;
			end if;
			chaine_valid<='0';
		when 1 =>	
			if data = data_synchro then 
			etat_chaine<=2	;
			else etat_chaine<=0;
			end if;
		when 2 =>	
			if val_dat ='1' then 
			etat_chaine<=3	;
			end if;
		when 3 =>	 
			etat_chaine<=4	;
			data_h <= data;
		when 4 =>
			if val_dat ='1' then 
			etat_chaine<=5	;
			end if;
		when 5 => 
			etat_chaine<=6	;
			data_m <= data;
		when 6 =>
			if val_dat ='1' then 
			etat_chaine<=7	;
			end if;
		when 7 => 
			etat_chaine<=8	;
			data_l <= data;
			chaine_valid<='1';
		when 8 =>
			if ack ='1' then 
			etat_chaine<=9	;
			chaine_valid<='0';
			end if;
		when 9 =>
			if ack ='0' then 
			etat_chaine<=0	;
			end if;
		when others =>	etat_chaine <=0;
		end case;
	end if;
	end process gestion_chaine;

--******************************************************
--0000000000000000000000000000000000000000000000000000000000000000

end    ARCHITECTURE a_avalon_rxd;

