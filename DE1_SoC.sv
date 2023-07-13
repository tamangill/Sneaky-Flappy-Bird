// Top-level module that defines the I/Os for the DE-1 SoC board
module DE1_SoC (HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, SW, LEDR, GPIO_1, CLOCK_50);
    output logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	 output logic [9:0]  LEDR;
    input  logic [3:0]  KEY;
    input  logic [9:0]  SW;
    output logic [35:0] GPIO_1;
    input logic CLOCK_50;

	 // Turn off HEX displays

    assign HEX3 = '1;
    assign HEX4 = '1;
    assign HEX5 = '1;
	 
	 
	 /* Set up system base clock to 1526 Hz (50 MHz / 2**(14+1))
	    ===========================================================*/
	 logic [31:0] clk;
	 logic SYSTEM_CLOCK;
	 
	 clock_divider divider (.clock(CLOCK_50), .divided_clocks(clk));
	 
	 assign SYSTEM_CLOCK = clk[14]; // 1526 Hz clock signal	 
	 
	 /* If you notice flickering, set SYSTEM_CLOCK faster.
	    However, this may reduce the brightness of the LED board. */
	
	 
	 /* Set up LED board driver
	    ================================================================== */
	 logic [15:0][15:0]RedPixels; // 16 x 16 array representing red LEDs
    logic [15:0][15:0]GrnPixels; // 16 x 16 array representing green LEDs
	 logic RST;                   // reset - toggle this on startup
	 
	 assign RST = ~KEY[0];
	 
	 /* Standard LED Driver instantiation - set once and 'forget it'. 
	    See LEDDriver.sv for more info. Do not modify unless you know what you are doing! */
	 LEDDriver Driver (.CLK(SYSTEM_CLOCK), .RST, .EnableCount(1'b1), .RedPixels, .GrnPixels, .GPIO_1);
	 
	 
	 /* LED board test submodule - paints the board with a static pattern.
	    Replace with your own code driving RedPixels and GrnPixels.
		 
	 	 KEY0      : Reset
		 =================================================================== */
	 //LED_test test (.RST(~KEY[0]), .RedPixels, .GrnPixels);
	 logic out;
	 logic dead; 
	 logic clk1,clk2,clk3; 
	 
	 always_comb begin 
		if(SW[1] == 1) begin
			clk1 = clk[24];
		end
		
	  else if(SW[2] == 1) begin
			clk1 = clk[22];
		end
		else if(SW[3] == 1) begin
			clk1 = clk[21];
		end
		
		else begin
			clk1 = clk[24];
		end
	 end 
	 
	 always_comb begin 
		if(SW[4] == 1) begin
			clk2 = clk[22];
		end
		
	  else if(SW[5] == 1) begin
			clk2 = clk[21];
		end
		else if(SW[6] == 1) begin
			clk2 = clk[20];
		end
		
		else begin
			clk2 = clk[23];
		end
	 end 
	 
	 always_comb begin 
		if(SW[7] == 1) begin
			clk3 = clk[20];
		end
	
		
		else begin
			clk3 = clk[25];
		end
	 end 
	 
	 
	 generate_lights lights(.clk(clk1), .reset(~KEY[0]),.is_dead(LEDR[9]), .GrnPixels(GrnPixels), .out(out));
	 bird bird1(.clk(clk2),.reset(~KEY[0]), .GrnPixels(GrnPixels), .up(~KEY[3]), .isDead(LEDR[9]),.RedPixels(RedPixels));
	 ScoreDisplay score(.clk(clk3), .reset(~KEY[0]), .is_dead(LEDR[9]), .hex0(HEX0), .hex1(HEX1), .hex2(HEX2));
	 
	 
endmodule 