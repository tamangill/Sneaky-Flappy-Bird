# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.

vlog "./generate_lights.sv"
vlog "./generate_lights_tb.sv"
vlog "./coloum_pattern.sv"
vlog "./LFSR.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work generate_lights_tb

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do generate_lights_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
