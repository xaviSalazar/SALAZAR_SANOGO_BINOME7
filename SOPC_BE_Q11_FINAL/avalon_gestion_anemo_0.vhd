-- avalon_gestion_anemo_0.vhd

-- This file was auto-generated as part of a generation operation.
-- If you edit it your changes will probably be lost.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avalon_gestion_anemo_0 is
	port (
		clk                : in  std_logic                     := '0';             --          clock.clk
		reset_n            : in  std_logic                     := '0';             --          reset.reset_n
		chipselect         : in  std_logic                     := '0';             -- avalon_slave_0.chipselect
		write_n            : in  std_logic                     := '0';             --               .write_n
		writedata          : in  std_logic_vector(31 downto 0) := (others => '0'); --               .writedata
		readdata           : out std_logic_vector(31 downto 0);                    --               .readdata
		address            : in  std_logic_vector(1 downto 0)  := (others => '0'); --               .address
		in_freq_anemometre : in  std_logic                     := '0';             --    conduit_end.export
		data_valid         : out std_logic;                                        --  conduit_end_2.export
		data_anemometre    : out std_logic_vector(7 downto 0);                     --  conduit_end_3.export
		AffCentaine        : out std_logic_vector(6 downto 0);                     --  conduit_end_4.export
		AffDizane          : out std_logic_vector(6 downto 0);                     --  conduit_end_5.export
		AffUnite           : out std_logic_vector(6 downto 0);                     --  conduit_end_6.export
		leds_config        : out std_logic_vector(1 downto 0);                     --  conduit_end_8.export
		BCD7SEGMENT        : out std_logic_vector(6 downto 0);                     --  conduit_end_9.export
		multiplex          : out std_logic_vector(2 downto 0)                      -- conduit_end_10.export
	);
end entity avalon_gestion_anemo_0;

architecture rtl of avalon_gestion_anemo_0 is
	component avalon_gestion_anemo is
		port (
			clk                : in  std_logic                     := 'X';             -- clk
			reset_n            : in  std_logic                     := 'X';             -- reset_n
			chipselect         : in  std_logic                     := 'X';             -- chipselect
			write_n            : in  std_logic                     := 'X';             -- write_n
			writedata          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			readdata           : out std_logic_vector(31 downto 0);                    -- readdata
			address            : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- address
			in_freq_anemometre : in  std_logic                     := 'X';             -- export
			data_valid         : out std_logic;                                        -- export
			data_anemometre    : out std_logic_vector(7 downto 0);                     -- export
			AffCentaine        : out std_logic_vector(6 downto 0);                     -- export
			AffDizane          : out std_logic_vector(6 downto 0);                     -- export
			AffUnite           : out std_logic_vector(6 downto 0);                     -- export
			leds_config        : out std_logic_vector(1 downto 0);                     -- export
			BCD7SEGMENT        : out std_logic_vector(6 downto 0);                     -- export
			multiplex          : out std_logic_vector(2 downto 0)                      -- export
		);
	end component avalon_gestion_anemo;

begin

	avalon_gestion_anemo_0 : component avalon_gestion_anemo
		port map (
			clk                => clk,                --          clock.clk
			reset_n            => reset_n,            --          reset.reset_n
			chipselect         => chipselect,         -- avalon_slave_0.chipselect
			write_n            => write_n,            --               .write_n
			writedata          => writedata,          --               .writedata
			readdata           => readdata,           --               .readdata
			address            => address,            --               .address
			in_freq_anemometre => in_freq_anemometre, --    conduit_end.export
			data_valid         => data_valid,         --  conduit_end_2.export
			data_anemometre    => data_anemometre,    --  conduit_end_3.export
			AffCentaine        => AffCentaine,        --  conduit_end_4.export
			AffDizane          => AffDizane,          --  conduit_end_5.export
			AffUnite           => AffUnite,           --  conduit_end_6.export
			leds_config        => leds_config,        --  conduit_end_8.export
			BCD7SEGMENT        => BCD7SEGMENT,        --  conduit_end_9.export
			multiplex          => multiplex           -- conduit_end_10.export
		);

end architecture rtl; -- of avalon_gestion_anemo_0
