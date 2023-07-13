module coloum_tb();
  reg [2:0] input_number;
  wire [15:0] output_data;

  // Instantiate the DUT (Design Under Test)
  coloum_pattern dut (
    .input_number(input_number),
    .output_data(output_data)
  );

  // Stimulus
  initial begin
    // Test input values
    input_number = 3'b000;
    #10;
  

    input_number = 3'b001;
    #10;


    input_number = 3'b011;
    #10;
	 


    input_number = 3'b110;
    #10;


    input_number = 3'b101;
    #10;


    input_number = 3'b010;
    #10;


    input_number = 3'b100;
    #10;


    // Add more test cases as needed

    // End simulation
    $finish;
  end
endmodule