module coloum_pattern_tb();
 logic clk, reset;
 logic [0:0]output_data[0:15];





    // Set up the clock
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

  coloum_pattern dut(.clk(clk), .reset(reset), .output_data(output_data));
  
      // Set up the inputs to the design. Each line is a clock cycle.
  initial begin
    // Defining ALL input signals at t = 0 will avoid red (undefined) signals
    // in your simulation.
	 reset = 1; 
    @(posedge clk); reset <= 1;
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0; 
    @(posedge clk); reset <= 1; 
    @(posedge clk); 
    @(posedge clk); 
	 $stop;  // pause the simulation
  end
endmodule 