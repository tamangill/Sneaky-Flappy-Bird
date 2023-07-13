module bird_tb;
  
  // Inputs
  reg clk;
  reg reset;
  reg [15:0][15:0] GrnPixels;
  reg up;
  
  // Outputs
  wire isDead;
  wire [15:0][15:0] RedPixels;
  
  // Instantiate the bird module
  bird dut (
    .clk(clk),
    .reset(reset),
    .GrnPixels(GrnPixels),
    .up(up),
    .isDead(isDead),
    .RedPixels(RedPixels)
  );
  
  // Clock generation
  always #5 clk = ~clk;
  
  // Test stimulus
  initial begin
    clk = 0;
    reset = 0;
    GrnPixels = 16'h0000;
    up = 0;
    
    // Wait for initial stabilization
    #10;
    
    // Reset the bird module
    reset = 1;
    #5;
    reset = 0;
    
    // Apply test inputs and observe outputs
    // Set GrnPixels to trigger different states
    #10;
    GrnPixels = 16'h0001;
    up = 1;
    #10;
    GrnPixels = 16'h0002;
    up = 0;
    #10;
    GrnPixels = 16'h0003;
    up = 1;
    #10;
    GrnPixels = 16'h0004;
    up = 0;
    
    // Add more test cases as needed
    
    // End the simulation
    #10;
    $finish;
  end
endmodule