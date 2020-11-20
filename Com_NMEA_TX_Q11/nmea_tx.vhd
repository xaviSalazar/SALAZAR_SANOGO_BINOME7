LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY nmea_tx IS

port (
-----------------INTERFACE----------------------------
----------------------------------------------------
clk_50M, chipselect, write_n, reset_n: in std_logic;
address: in std_logic_vector (2 downto 0);
writedata : in std_logic_vector (31 downto 0);
readdata : out std_logic_vector (31 downto 0);
-----------------------------------------------------
-----------------TRANSMISSION-------------------------------
txd, done_probe: out std_logic;
-----------------------------------------------------------
clk76800    : out std_logic

);
END nmea_tx;

ARCHITECTURE arch_nmea_tx OF nmea_tx IS
signal s_count76800 : integer range 0 to 325;
signal s_clk76800   : std_logic;
signal s_count4800 : integer range 0 to 8;
signal s_clk4800   : std_logic;
signal s_count1 : integer range 0 to 50000000;
signal s_clk1   : std_logic;
signal done, fin_tx : std_logic;
signal start_stop   : std_logic := '1';
signal  raz_n  : std_logic;
signal count_bit : std_logic_vector (5 downto 0);
 -----------------------------------------------------------
signal synchro   : std_logic_vector(7 downto 0) := X"AA";
signal centaine  : std_logic_vector(7 downto 0) := X"0A";
signal dizaine   : std_logic_vector(7 downto 0) := X"0B";
signal unite     : std_logic_vector(7 downto 0) := X"0C";
 -----------------------------------------------------------
 signal trame : std_logic_vector (40 downto 0);
 signal etat_nios: integer range 1 to 3;
 
BEGIN

done_probe <= done;

--0000000000000000000000000000000000000000000000000000000000000000
--*************************************************
-- process generation horloge � 76800 hz � partir 50MHz
--*************************************************
	gen_clk16 : PROCESS (clk_50M, raz_n)
	BEGIN
       IF raz_n = '0' THEN
          s_count76800 <= 0;
       ELSIF rising_edge(clk_50M) THEN
         if s_count76800 = 325 then
			s_count76800 <= 0;
			s_clk76800 <= not(s_clk76800);
		else
			s_count76800 <= s_count76800+1;
		end if;
       END IF;
    END PROCESS;
	
--**************************************************
--0000000000000000000000000000000000000000000000000000000000000000
 clk76800 <= s_clk76800;

--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************   
-- process generation horloge data de 4800 bauds � partir 76800hz
--*************************************************
gen_4800: PROCESS (s_clk76800, raz_n)
	BEGIN
		IF raz_n = '0' THEN
          s_count4800 <= 0;
		ELSIF rising_edge(s_clk76800) THEN
		if s_count4800 = 8 then
			s_count4800 <= 0;
			s_clk4800 <= not(s_clk4800);
		else
			s_count4800 <= s_count4800+1;
		end if;
		END IF;
    END PROCESS;
--    clk_bit <= s_count16(3);-- pour visu du clock bit
--*************************************************


--**************************************************   
-- process generation horloge data de 1Hz � partir 50Mhz pour envoyer la trame toutes les 1s
--*************************************************
clk_1: PROCESS (clk_50M, raz_n)
	BEGIN
       IF raz_n = '0' THEN
          s_count1 <= 0;
       ELSIF rising_edge(clk_50M) THEN
         if s_count1 = 50000000 then
			s_count1 <= 0;
			s_clk1 <= not(s_clk1);
		else
			s_count1 <= s_count1+1;
		end if;
       END IF;
    END PROCESS;
--*************************************************
--0000000000000000000000000000000000000000000000000000000000000000

-- process remise � zero
--*************************************************
config: PROCESS (reset_n)
	BEGIN
       IF reset_n = '1' THEN
         raz_n <= '1';
			--start_stop <= '1';
		 else
		    if reset_n = '0' then
			      raz_n <= '0';
			      --start_stop <= '0';
			  end if;
       END IF;
    END PROCESS;
--*************************************************



--0000000000000000000000000000000000000000000000000000000000000000
--**************************************************
-- process  comptage des bits �mis
--*************************************************
comptage_bit: process (done, s_clk4800)

begin
	if done ='1' then count_bit <= (others =>'0');
	fin_tx <= '0';
	elsif rising_edge(s_clk4800) then
		if  count_bit < "100111"  then count_bit <= count_bit + "000001"; --pourquoi 39 bits et non 40
		else fin_tx <= '1';
		end if;
	End if ;
end process; 
--******************************************************
--0000000000000000000000000000000000000000000000000000000000000000



--0000000000000000000000000000000000000000000000000000000000000000
--******************************************************
-- machine � �tats gestion interface nios
--*************************************************
gestion_nios:	process (clk_50M, raz_n, s_clk1)
	begin 
	if raz_n ='0' then 
		etat_nios <= 1;
		done <='1';
	elsif rising_edge(clk_50M) then
		case etat_nios is
		when 1 =>
			if start_stop ='1' then 
			etat_nios <=2	;
			done <= '0';
			end if;
		when 2 =>	
			if fin_tx ='1' then 
			start_stop <= '0';
			etat_nios <=3	;
			done <= '1';
			end if;
		when 3 =>	
			if start_stop ='0' then 
			 if s_count1 = 50000000 then
			 start_stop <= '1';
			 etat_nios<=1	;
			 done <= '1';
			 end if;
			end if;
		when others =>	etat_nios <=1;
		end case;
		
	end if;
	end process gestion_nios;

--******************************************************
--0000000000000000000000000000000000000000000000000000000000000000



--0000000000000000000000000000000000000000000000000000000000000000
--******************************************************
-- machine � �tats gestion emission
--*************************************************
gestion_emission:	process (s_clk4800, done, synchro, centaine, dizaine, unite )
	
	begin 
	if done = '1' then 
          trame <= '1'&unite&'0'&'1'&dizaine&'0'&'1'&centaine&'0'&'1'&synchro&'0'&'1'; 
        elsif rising_edge(s_clk4800) then 
          trame <= '1' & trame(40 downto 1); 
        end if; 
    end process gestion_emission; 
    txd <= trame(0);
	

--******************************************************


end    ARCHITECTURE arch_nmea_tx;















































--LIBRARY ieee;
--USE ieee.std_logic_1164.ALL;
--USE ieee.std_logic_unsigned.ALL;
--
--ENTITY nmea_tx IS
--
--port (
-------------------INTERFACE----------------------------
------------------------------------------------------
--clk, chipselect, write_n, reset_n: in std_logic;
-- address: in std_logic_vector (2 downto 0);
--writedata : in std_logic_vector (31 downto 0);
--readdata : out std_logic_vector (31 downto 0);
-------------------------------------------------------
-------------------TRANSMISSION-------------------------------
--txd, done_probe: out std_logic
-------------------------------------------------------------
--
--);
--END nmea_tx;
--
--ARCHITECTURE arch_nmea_tx OF nmea_tx IS
--signal s_count : integer range 0 to 651;
--signal s_clk16, done, start, fin_tx : std_logic;
--signal  raz_n  : std_logic;
-- signal s_count16 : std_logic_vector (3 downto 0);
-- signal count_bit : std_logic_vector (5 downto 0);
-- -----------------------------------------------------------
-- signal d_s , d_h, d_m, d_l  : std_logic_vector(7 downto 0);
-- -----------------------------------------------------------
-- signal config : std_logic_vector (2 downto 0);
-- signal tmp : std_logic_vector (40 downto 0);
-- signal etat_nios: integer range 1 to 3;
-- 
--BEGIN
--
----0000000000000000000000000000000000000000000000000000000000000000
----*************************************************
---- cr�ation de la data � transmettre: data_tx
----*************************************************
----data_tx <= '0'&data_s(7 downto 0)&'1'&'0'&d_h(7 downto 0)&'1'&'0'&d_m(7 downto 0)&'1'&'0'&d_l(7 downto 0)&'1';
----0000000000000000000000000000000000000000000000000000000000000000
--
--done_probe <= done;
--
--
----0000000000000000000000000000000000000000000000000000000000000000
----*************************************************
---- process generation horloge � 76800 hz � partir 50MHz
----*************************************************
--	gen_clk16 : PROCESS (clk, raz_n)
--	BEGIN
--       IF raz_n = '0' THEN
--          s_count <= 0;
--       ELSIF clk'EVENT AND clk = '1' THEN
--         if s_count = 650 then
--			s_count <= 0;
--			s_clk16 <= '1';
--		else
--			s_count <= s_count+1;
--			s_clk16 <= '0';
--		end if;
--       END IF;
--    END PROCESS;
----**************************************************
----0000000000000000000000000000000000000000000000000000000000000000
--
--
----0000000000000000000000000000000000000000000000000000000000000000
----**************************************************   
---- process generation horloge data de 4800 bauds � partir 76800hz
----*************************************************
--gen_4800: PROCESS (s_clk16, raz_n)
--	BEGIN
--		IF raz_n = '0' THEN
--          s_count16 <= "0000";
--		ELSIF s_clk16'EVENT AND s_clk16 = '1' THEN
--			s_count16 <= s_count16 +  "0001";
--		END IF;
--    END PROCESS;
----    clk_bit <= s_count16(3);-- pour visu du clock bit
----*************************************************
----0000000000000000000000000000000000000000000000000000000000000000
--
--
--
----0000000000000000000000000000000000000000000000000000000000000000
----**************************************************
---- process  comptage des bits �mis
----*************************************************
--comptage_bit: process (done, s_count16(3))
--
--begin
--	if done ='1' then count_bit <= (others =>'0');
--	fin_tx <= '0';
--	elsif s_count16(3) 'event and s_count16(3) = '1' then
--		if  count_bit < "100111"  then count_bit <= count_bit + "000001";
--		else fin_tx <= '1';
--		end if;
--	End if ;
--end process; 
----******************************************************
----0000000000000000000000000000000000000000000000000000000000000000
--
--
--
----0000000000000000000000000000000000000000000000000000000000000000
----******************************************************
---- machine � �tats gestion interface nios
----*************************************************
--gestion_nios:	process (clk, raz_n)
--	begin 
--	if raz_n ='0' then 
--		etat_nios <= 1;
--		done <='1';
--	elsif clk'event and clk = '1' then
--		case etat_nios is
--		when 1 =>
--			if start ='1' then 
--			etat_nios <=2	;
--			done <= '0';
--			end if;
--		when 2 =>	
--			if fin_tx ='1' then 
--			etat_nios <=3	;
--			done <= '1';
--			end if;
--		when 3 =>	
--			if start ='0' then 
--			etat_nios<=1	;
--			done <= '1';
--			end if;
--		when others =>	etat_nios <=1;
--		end case;
--		
--	end if;
--	end process gestion_nios;
--
----******************************************************
----0000000000000000000000000000000000000000000000000000000000000000
--
--
--
----0000000000000000000000000000000000000000000000000000000000000000
----******************************************************
---- machine � �tats gestion emission
----*************************************************
--gestion_emission:	process (s_count16(3), done, d_s, d_h, d_m, d_l )
--	
--	begin 
--	if done = '1' then 
--          tmp <= '1'&D_l&'0'&'1'&D_m&'0'&'1'&D_h&'0'&'1'&D_s&'0'&'1'; 
--        elsif (s_count16(3)'event and s_count16(3)='1') then 
--          tmp <= '1' & tmp(40 downto 1); 
--        end if; 
--    end process gestion_emission; 
--    txd <= tmp(0);
--	
--
----******************************************************
----0000000000000000000000000000000000000000000000000000000000000000
--
--
----0000000000000000000000000000000000000000000000000000000000000000
---- 				interface bus avalon
----******************************************************
---- �criture registres
----*******************************************************
--ecriture: process (clk, reset_n)
--	begin
--	if reset_n = '0' then
--	config <= (others => '0');
--	elsif clk'event and clk = '1' then
--		if chipselect ='1' and write_n = '0' then
--			case address is
--			when "000" =>
--			config (2 downto 0)<= (writedata (2 downto 0));
--			when "001" =>
--			d_s (7 downto 0)<= (writedata (7 downto 0));
--			when "010" =>
--			d_h (7 downto 0)<= (writedata (7 downto 0));
--			when "011" =>
--			d_m (7 downto 0)<= (writedata (7 downto 0));
--			when "100" =>
--			d_l (7 downto 0)<= (writedata (7 downto 0));
--			when others => 
--			config <= (others => '0');
--			end case;
--		end if;
--	end if;
--end process ecriture;
----****************************************************************
--raz_n <= config (0);
--start <= config (1);
----*****************************************************************
----	lecture des registres
----*****************************************************************
--lecture: process (address, done, start, raz_n)
--	begin
--		case address is
--			when "000" =>
--			readdata(2 downto 0) <= done&start&raz_n;
--			when "001" =>
--			readdata(7 downto 0) <= d_s ;
--			when "010" =>
--			readdata(7 downto 0) <= d_h ;
--			when "011" =>
--			readdata(7 downto 0) <= d_m ;
--			when "100" =>
--			readdata(7 downto 0) <= d_l ;
--			when others => 
--			readdata <= (others => '0');
--			end case;
--end process lecture;
----**********************************************************************
----00000000000000000000000000000000000000000000000000000000000000000000000
--
--
--end    ARCHITECTURE arch_nmea_tx;