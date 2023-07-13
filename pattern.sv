//module pattern(	
//	output logic [2:0] pattern,
//	input logic clk,
//	input logic reset 
//); 
//		
//	always @(posedge clk) begin 
//
//		if(reset)begin
//			pattern = 3'b000;
//		end 
//		else begin 
//			pattern <= {pattern[1], ~(pattern[2] ^ pattern[1])};
//		end 
//	end
//endmodule

module pattern #(parameter WIDTH=3) (Q, clk, reset);
output logic [WIDTH-1:0] Q; // present state
input logic clk; // clock input
input logic reset;
always_ff @(posedge clk)
if(reset) begin 
	Q <= 3'b000;
end
else Q <= {Q[WIDTH-2:0], ~(Q[WIDTH-1] ^ Q[WIDTH-2])};
endmodule
