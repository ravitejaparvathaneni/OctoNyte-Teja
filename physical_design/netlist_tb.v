`timescale 1ns/1ps  // Define time units and precision

module my_design_tb;
  reg clk, rst;
  wire [7:0] out_signal;

  // Instantiate synthesized netlist
  my_design_synth dut (
    .clk(clk),
    .rst(rst),
    .out_signal(out_signal)
  );

  // Clock Generation (10ns period, 5ns high, 5ns low)
  always #5 clk = ~clk;

  initial begin
    // Initialize signals before starting simulation
    clk = 0;
    rst = 1;

    // Dump waveform data
    $dumpfile("netlist_verification.vcd");
    $dumpvars(0, dut); // Dumps only the DUT variables

    // Reset sequence
    #20 rst = 0; // Hold reset high for 20ns
    
    // Run for 100ns after reset
    #100 $finish;
  end
endmodule
