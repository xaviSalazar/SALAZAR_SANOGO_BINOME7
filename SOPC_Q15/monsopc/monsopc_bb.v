
module monsopc (
	clk_clk,
	reset_reset_n,
	boutons_export,
	leds_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[1:0]	boutons_export;
	output	[7:0]	leds_export;
endmodule
