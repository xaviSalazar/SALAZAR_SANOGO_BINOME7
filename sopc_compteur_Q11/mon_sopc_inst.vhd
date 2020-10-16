  --Example instantiation for system 'mon_sopc'
  mon_sopc_inst : mon_sopc
    port map(
      out_port_from_the_LED => out_port_from_the_LED,
      clk_0 => clk_0,
      in_port_to_the_KEY => in_port_to_the_KEY,
      reset_n => reset_n
    );


