module Score (
  input wire clk,
  input wire reset,
  input wire is_dead,
  output wire [11:0] score
);

  reg [11:0] count;   // Counter to hold the score value

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 0;
    end else if (is_dead) begin
      count <= count;   // Don't increment the score if is_dead is active
    end else begin
      count <= count + 1;
    end
  end

  assign score = count;

endmodule 