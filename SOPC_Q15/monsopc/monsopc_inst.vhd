	component monsopc is
		port (
			clk_clk        : in  std_logic                    := 'X';             -- clk
			reset_reset_n  : in  std_logic                    := 'X';             -- reset_n
			boutons_export : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			leds_export    : out std_logic_vector(7 downto 0)                     -- export
		);
	end component monsopc;

	u0 : component monsopc
		port map (
			clk_clk        => CONNECTED_TO_clk_clk,        --     clk.clk
			reset_reset_n  => CONNECTED_TO_reset_reset_n,  --   reset.reset_n
			boutons_export => CONNECTED_TO_boutons_export, -- boutons.export
			leds_export    => CONNECTED_TO_leds_export     --    leds.export
		);

