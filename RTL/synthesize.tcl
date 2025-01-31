# Load OpenROAD
source /path/to/OpenROAD/init.tcl

# Define Technology Library
set tech_lib "/path/to/skywater_013.lib"
read_liberty $tech_lib

# Read RTL Design
read_verilog design.v  ;# Replace with your RTL file

# Read Timing Constraints
read_sdc constraints.sdc  

# Run Synthesis
synth_design -top top_module -flatten

# Write out synthesized netlist
write_verilog synthesized_netlist.v
