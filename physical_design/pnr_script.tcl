# Load OpenROAD Environment
read_lef $env(SKY130_PDK_PATH)/sky130_fd_sc_hd/tech/sky130_fd_sc_hd.lef
read_def my_design_synth.def

# Floorplanning
initialize_floorplan -die_area {0 0 100 100} -core_area {5 5 95 95}

# Placement
place_io
global_placement -density 0.6
detailed_placement
write_def my_design_placed.def

# Clock Tree Synthesis (CTS)
clock_tree_synthesis

# Routing
route_design
write_def my_design_routed.def
