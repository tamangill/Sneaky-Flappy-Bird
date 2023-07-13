module LFSR #(parameter WIDTH=3) (Q, clk, reset, enable);
	output logic [WIDTH-1:0] Q; // present state
	input logic clk; // clock input
	input logic reset;
	input logic enable; 
	always_ff @(posedge clk)
		if(reset) begin 
			Q <= 3'b000;
		end
		else if(enable == 0) begin
			Q <= Q; 
		end 
		else Q <= {Q[WIDTH-2:0], ~(Q[WIDTH-1] ^ Q[WIDTH-2])};

	
	endmodule
