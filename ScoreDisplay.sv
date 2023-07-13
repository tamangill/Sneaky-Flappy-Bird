module ScoreDisplay (
  input logic clk,
  input logic reset,
  input logic is_dead,
  output logic [6:0] hex0,
  output logic [6:0] hex1,
  output logic [6:0] hex2
);

  reg [11:0] score;
  reg [3:0] bcd2;
  reg [3:0] bcd1;
  reg [3:0] bcd0;

  // Counter logic
  always @(posedge clk) begin
    if (!is_dead) begin
      if (score[3:0] >= 9)begin
        score <= score + 6;
		  score[7:4] <= score[7:4] + 1;
      end
		else if(score[7:4] >= 9) begin 
			score[11:8] <= score[11:8] + 1;
			score[7:4] <= score[7:4] + 6;
		end 
		else if(score[11:8] > 10) begin 
			score[11:8] <= score[11:8] + 6;
		end
		else if(reset) begin
			score <= 0; 
		end
		else begin
        score <= score + 1;
      end
    end
  end

  // BCD conversion logic
  always @* begin
    bcd0 = score[3:0];
    bcd1 = score[7:4];
    bcd2 = score[11:8];
  end

  // Instantiate three instances of seg7 for each digit
  seg7 seg0 (.bcd(bcd0), .leds(hex0));
  seg7 seg1 (.bcd(bcd1), .leds(hex1));
  seg7 seg2 (.bcd(bcd2), .leds(hex2));

endmodule 