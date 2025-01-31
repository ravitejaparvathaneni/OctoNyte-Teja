# Define clock with a period of 5ns (200 MHz)
create_clock -name clk -period 5 [get_ports clk]

# Define input delay (setup margin)
set_input_delay 1.0 -clock clk [get_ports data_in]

# Define output delay (hold margin)
set_output_delay 1.0 -clock clk [get_ports data_out]

# Define false paths (for paths that don’t affect timing)
set_false_path -from [get_ports debug_signal]
