  --Example instantiation for system 'mon_sopc'
  mon_sopc_inst : mon_sopc
    port map(
      out_port_from_the_led => out_port_from_the_led,
      out_pwm_from_the_avalon_pwm_0 => out_pwm_from_the_avalon_pwm_0,
      clk_0 => clk_0,
      in_port_to_the_key => in_port_to_the_key,
      reset_n => reset_n
    );


