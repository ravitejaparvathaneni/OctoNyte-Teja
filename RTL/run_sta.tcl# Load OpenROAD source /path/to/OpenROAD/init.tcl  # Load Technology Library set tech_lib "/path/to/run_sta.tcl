# Load OpenROAD
source /path/to/OpenROAD/init.tcl

# Load Technology Library
set tech_lib "/path/to/skywater_013.lib"
read_liberty $tech_lib

# Read the synthesized netlist
read_verilog synthesized_netlist.v

# Read Constraints
read_sdc constraints.sdc

# Run Static Timing Analysis
report_checks -path_delay min_max -format full -corner slow

# Export Timing Report
write_reports timing_report.rpt
