module pll_c64 (
		input  wire  inclk0,   
		output wire  c0, 
        output wire  c1, 
		output wire  locked    
	);

	altera_pll #(
		.fractional_vco_multiplier("true"),
		.reference_clock_frequency("50.0 MHz"),
		.operation_mode("direct"),
		.number_of_clocks(2),
		.output_clock_frequency0("63.0000000 MHz"),
		.phase_shift0("0 ps"),
		.duty_cycle0(50),
		.output_clock_frequency1("32.7270000 MHz"),
		.phase_shift1("0 ps"),
		.duty_cycle1(50),
		.pll_type("General"),
		.pll_subtype("General")
	) altera_pll_i (
		.outclk	({c1,c0}),
		.locked	(locked),
		.fboutclk	( ),
		.fbclk	(1'b0),
		.refclk	(inclk0)
	);



endmodule

