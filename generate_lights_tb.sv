module generate_lights_tb();
 logic clk;
	logic reset;
    logic [15:0][15:0] GrnPixels; // 16x16 array of green LEDs
	 logic [15:0][15:0] RedPixels;
	 logic out;
	 
	 
	   parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
	 
	 
	 
	 generate_lights dut(.clk(clk), .reset(reset), .GrnPixels(GrnPixels), .RedPixels(RedPixels), .out(out));
	 
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
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0;
    @(posedge clk); reset <= 0;
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