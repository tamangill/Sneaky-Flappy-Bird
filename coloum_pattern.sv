module coloum_pattern(
input logic clk, reset,
input logic enable,

output logic [0:0]output_data[0:15]
);

logic [2:0]input_number;

LFSR random_num (.Q(input_number), .clk(clk), .reset(reset), .enable(enable));

  always @*
    case (input_number)
      3'b000: 
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b0; // Output for input 0
				output_data[2] = 1'b0; // Output for input 0
				output_data[3] = 1'b0; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b1; // Output for input 0
				output_data[6] = 1'b1; // Output for input 0
				output_data[7] = 1'b1; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b1; // Output for input 0
				output_data[12] = 1'b1; // Output for input 0
				output_data[13] = 1'b1; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
			end
		
		
		
		
      3'b001: 
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b0; // Output for input 0
				output_data[5] = 1'b0; // Output for input 0
				output_data[6] = 1'b0; // Output for input 0
				output_data[7] = 1'b1; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b1; // Output for input 0
				output_data[12] = 1'b1; // Output for input 0
				output_data[13] = 1'b1; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
			end
      3'b010: 
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b1; // Output for input 0
				output_data[6] = 1'b1; // Output for input 0
				output_data[7] = 1'b0; // Output for input 0
				output_data[8] = 1'b0; // Output for input 0
				output_data[9] = 1'b0; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b1; // Output for input 0
				output_data[12] = 1'b1; // Output for input 0
				output_data[13] = 1'b1; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
			end
      3'b011:
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b1; // Output for input 0
				output_data[6] = 1'b1; // Output for input 0
				output_data[7] = 1'b1; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b0; // Output for input 0
				output_data[11] = 1'b0; // Output for input 0
				output_data[12] = 1'b0; // Output for input 0
				output_data[13] = 1'b1; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
			end
      3'b100:
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b1; // Output for input 0
				output_data[6] = 1'b1; // Output for input 0
				output_data[7] = 1'b1; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b1; // Output for input 0
				output_data[12] = 1'b1; // Output for input 0
				output_data[13] = 1'b0; // Output for input 0
				output_data[14] = 1'b0; // Output for input 0
				output_data[15] = 1'b0; // Output for input 0
			end
      3'b101:
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b1; // Output for input 0
				output_data[6] = 1'b1; // Output for input 0
				output_data[7] = 1'b1; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b0; // Output for input 0
				output_data[12] = 1'b0; // Output for input 0
				output_data[13] = 1'b0; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
			end
      3'b110:
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b0; // Output for input 0
				output_data[6] = 1'b0; // Output for input 0
				output_data[7] = 1'b0; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b1; // Output for input 0
				output_data[12] = 1'b1; // Output for input 0
				output_data[13] = 1'b1; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
			end
      3'b111:
			begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b1; // Output for input 0
				output_data[6] = 1'b1; // Output for input 0
				output_data[7] = 1'b1; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b1; // Output for input 0
				output_data[12] = 1'b1; // Output for input 0
				output_data[13] = 1'b1; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
			end
      default: 
		begin
				output_data[0] = 1'b1; // Output for input 0
				output_data[1] = 1'b1; // Output for input 0
				output_data[2] = 1'b1; // Output for input 0
				output_data[3] = 1'b1; // Output for input 0
				output_data[4] = 1'b1; // Output for input 0
				output_data[5] = 1'b1; // Output for input 0
				output_data[6] = 1'b1; // Output for input 0
				output_data[7] = 1'b1; // Output for input 0
				output_data[8] = 1'b1; // Output for input 0
				output_data[9] = 1'b1; // Output for input 0
				output_data[10] = 1'b1; // Output for input 0
				output_data[11] = 1'b1; // Output for input 0
				output_data[12] = 1'b1; // Output for input 0
				output_data[13] = 1'b1; // Output for input 0
				output_data[14] = 1'b1; // Output for input 0
				output_data[15] = 1'b1; // Output for input 0
		end
	 endcase
endmodule 