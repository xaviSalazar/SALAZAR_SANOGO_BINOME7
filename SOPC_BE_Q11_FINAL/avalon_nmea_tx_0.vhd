-- avalon_nmea_tx_0.vhd

-- This file was auto-generated as part of a generation operation.
-- If you edit it your changes will probably be lost.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avalon_nmea_tx_0 is
	port (
		clk        : in  std_logic                     := '0';             --          clock.clk
		chipselect : in  std_logic                     := '0';             -- avalon_slave_0.chipselect
		write_n    : in  std_logic                     := '0';             --               .write_n
		address    : in  std_logic_vector(2 downto 0)  := (others => '0'); --               .address
		writedata  : in  std_logic_vector(31 downto 0) := (others => '0'); --               .writedata
		readdata   : out std_logic_vector(31 downto 0);                    --               .readdata
		reset_n    : in  std_logic                     := '0';             --          reset.reset_n
		txd        : out std_logic;                                        --    conduit_end.export
		done_probe : out std_logic                                         --  conduit_end_1.export
	);
end entity avalon_nmea_tx_0;

architecture rtl of avalon_nmea_tx_0 is
	component avalon_nmea_tx is
		port (
			clk        : in  std_logic                     := 'X';             -- clk
			chipselect : in  std_logic                     := 'X';             -- chipselect
			write_n    : in  std_logic                     := 'X';             -- write_n
			address    : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- address
			writedata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			readdata   : out std_logic_vector(31 downto 0);                    -- readdata
			reset_n    : in  std_logic                     := 'X';             -- reset_n
			txd        : out std_logic;                                        -- export
			done_probe : out std_logic                                         -- export
		);
	end component avalon_nmea_tx;

begin

	avalon_nmea_tx_0 : component avalon_nmea_tx
		port map (
			clk        => clk,        --          clock.clk
			chipselect => chipselect, -- avalon_slave_0.chipselect
			write_n    => write_n,    --               .write_n
			address    => address,    --               .address
			writedata  => writedata,  --               .writedata
			readdata   => readdata,   --               .readdata
			reset_n    => reset_n,    --          reset.reset_n
			txd        => txd,        --    conduit_end.export
			done_probe => done_probe  --  conduit_end_1.export
		);

end architecture rtl; -- of avalon_nmea_tx_0
