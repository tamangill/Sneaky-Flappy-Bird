module ScoreDisplay_tb;
  reg clk;
  reg reset;
  reg is_dead;
  wire [6:0] hex0;
  wire [6:0] hex1;
  wire [6:0] hex2;

  ScoreDisplay dut (
    .clk(clk),
    .reset(reset),
    .is_dead(is_dead),
    .hex0(hex0),
    .hex1(hex1),
    .hex2(hex2)
  );

  always #5 clk = ~clk;

  initial begin
    clk = 0;
    reset = 1;
    is_dead = 0;
    #10 reset = 0; // de-assert reset
    #20 is_dead = 1; // set is_dead to 1 to stop incrementing score

    // Test scenario 1: Increment score
    #50 is_dead = 0; // set is_dead to 0 to allow score increment
    #100 is_dead = 1; // set is_dead to 1 to stop incrementing score

    // Test scenario 2: Reset score
    #50 reset = 1; // assert reset
    #10 reset = 0; // de-assert reset
    #100 is_dead = 0; // set is_dead to 0 to allow score increment
    #100 is_dead = 1; // set is_dead to 1 to stop incrementing score

    // Test scenario 3: Score exceeds 999 (maximum displayable value)
    #100 reset = 1; // assert reset
    #10 reset = 0; // de-assert reset
    #100 is_dead = 0; // set is_dead to 0 to allow score increment
    #1000; // Wait for score to exceed 999 (approximately)

    // Add more test scenarios as needed

    $finish; // end the simulation
  end
endmodule