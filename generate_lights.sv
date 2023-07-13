module generate_lights(
	input logic clk,
	input logic reset,
	input logic is_dead,
   output logic [15:0][15:0] GrnPixels, // 16x16 array of green LEDs
	//
	output logic out
); 
	logic [0:0]output_data[0:15];
	logic enable; 

	enum logic [4:0] {S0 = 5'b00000, S1 = 5'b00001, S2 = 5'b00010, S3 = 5'b00011, S4 = 5'b00100, S5 = 5'b00101, S6 = 5'b00110, S7 = 5'b00111, S8 = 5'b01000, S9 = 5'b01001, S10 = 5'b01010,S11 = 5'b01011, S12 = 5'b01100, S13 = 5'b01101, S14 = 5'b01110, S15 = 5'b01111, S16 = 5'b10000} ps, ns;
	assign out = (ns == S0);

	coloum_pattern test(.clk(clk), .reset(reset), .enable(enable), .output_data(output_data));
	
	always@*
	begin
		case(ps)
		S0: 
		begin

			begin
		  enable = 0; 
		  GrnPixels[00] = {13'b0000000000000,output_data[0], output_data[0],output_data[0]};
		  GrnPixels[01] = {13'b0000000000000,output_data[1], output_data[1],output_data[1]};
		  GrnPixels[02] = {13'b0000000000000,output_data[2], output_data[2],output_data[2]};
		  GrnPixels[03] = {13'b0000000000000,output_data[3], output_data[3],output_data[3]};
		  GrnPixels[04] = {13'b0000000000000,output_data[4], output_data[4],output_data[4]};
		  GrnPixels[05] = {13'b0000000000000,output_data[5], output_data[5],output_data[5]};
		  GrnPixels[06] = {13'b0000000000000,output_data[6], output_data[6],output_data[6]};
	     GrnPixels[07] = {13'b0000000000000,output_data[7], output_data[7],output_data[7]};
	     GrnPixels[08] = {13'b0000000000000,output_data[8], output_data[8],output_data[8]};
	     GrnPixels[09] = {13'b0000000000000,output_data[9], output_data[9],output_data[9]};
		  GrnPixels[10] = {13'b0000000000000,output_data[10], output_data[10],output_data[10]};
	     GrnPixels[11] = {13'b0000000000000,output_data[11], output_data[11],output_data[11]};
		  GrnPixels[12] = {13'b0000000000000,output_data[12], output_data[12],output_data[12]};
		  GrnPixels[13] = {13'b0000000000000,output_data[13], output_data[13],output_data[13]};
		  GrnPixels[14] = {13'b0000000000000,output_data[14], output_data[14],output_data[14]};
		  GrnPixels[15] = {13'b0000000000000,output_data[15], output_data[15],output_data[15]};
		  end
		 if(is_dead)begin
			ns = S16;
		  end
		  else
		  ns = S1; 
			
		end
		
		S1:
		begin
		enable = 0; 
		  GrnPixels[00] = {12'b000000000000,output_data[0], output_data[0],output_data[0], 1'b0};
		  GrnPixels[01] = {12'b000000000000,output_data[1], output_data[1],output_data[1], 1'b0};
		  GrnPixels[02] = {12'b000000000000,output_data[2], output_data[2],output_data[2], 1'b0};
		  GrnPixels[03] = {12'b000000000000,output_data[3], output_data[3],output_data[3], 1'b0};
		  GrnPixels[04] = {12'b000000000000,output_data[4], output_data[4],output_data[4], 1'b0};
		  GrnPixels[05] = {12'b000000000000,output_data[5], output_data[5],output_data[5], 1'b0};
		  GrnPixels[06] = {12'b000000000000,output_data[6], output_data[6],output_data[6], 1'b0};
	     GrnPixels[07] = {12'b000000000000,output_data[7], output_data[7],output_data[7], 1'b0};
	     GrnPixels[08] = {12'b000000000000,output_data[8], output_data[8],output_data[8], 1'b0};
	     GrnPixels[09] = {12'b000000000000,output_data[9], output_data[9],output_data[9], 1'b0};
		  GrnPixels[10] = {12'b000000000000,output_data[10], output_data[10],output_data[10], 1'b0};
	     GrnPixels[11] = {12'b000000000000,output_data[11], output_data[11],output_data[11], 1'b0};
		  GrnPixels[12] = {12'b000000000000,output_data[12], output_data[12],output_data[12], 1'b0};
		  GrnPixels[13] = {12'b000000000000,output_data[13], output_data[13],output_data[13], 1'b0};
		  GrnPixels[14] = {12'b000000000000,output_data[14], output_data[14],output_data[14], 1'b0};
		  GrnPixels[15] = {12'b000000000000,output_data[15], output_data[15],output_data[15], 1'b0};
		  if(is_dead)begin
			ns = S16;
		  end
		  else
		  ns = S2;
		end
		
		S2: 
		begin
		enable = 0; 
		  GrnPixels[00] = {11'b00000000000,output_data[0], output_data[0],output_data[0], 2'b00};
		  GrnPixels[01] = {11'b00000000000,output_data[1], output_data[1],output_data[1], 2'b00};
		  GrnPixels[02] = {11'b00000000000,output_data[2], output_data[2],output_data[2], 2'b00};
		  GrnPixels[03] = {11'b00000000000,output_data[3], output_data[3],output_data[3], 2'b00};
		  GrnPixels[04] = {11'b00000000000,output_data[4], output_data[4],output_data[4], 2'b00};
		  GrnPixels[05] = {11'b00000000000,output_data[5], output_data[5],output_data[5], 2'b00};
		  GrnPixels[06] = {11'b00000000000,output_data[6], output_data[6],output_data[6], 2'b00};
	     GrnPixels[07] = {11'b00000000000,output_data[7], output_data[7],output_data[7], 2'b00};
	     GrnPixels[08] = {11'b00000000000,output_data[8], output_data[8],output_data[8], 2'b00};
	     GrnPixels[09] = {11'b00000000000,output_data[9], output_data[9],output_data[9], 2'b00};
		  GrnPixels[10] = {11'b00000000000,output_data[10], output_data[10],output_data[10], 2'b00};
	     GrnPixels[11] = {11'b00000000000,output_data[11], output_data[11],output_data[11], 2'b00};
		  GrnPixels[12] = {11'b00000000000,output_data[12], output_data[12],output_data[12], 2'b00};
		  GrnPixels[13] = {11'b00000000000,output_data[13], output_data[13],output_data[13], 2'b00};
		  GrnPixels[14] = {11'b00000000000,output_data[14], output_data[14],output_data[14], 2'b00};
		  GrnPixels[15] = {11'b00000000000,output_data[15], output_data[15],output_data[15], 2'b00};
		 if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S3;
		end
		
		S3:
		begin
		enable = 0; 
		  GrnPixels[00] = {10'b0000000000,output_data[0], output_data[0],output_data[0], 3'b000};
		  GrnPixels[01] = {10'b0000000000,output_data[1], output_data[1],output_data[1], 3'b000};
		  GrnPixels[02] = {10'b0000000000,output_data[2], output_data[2],output_data[2], 3'b000};
		  GrnPixels[03] = {10'b0000000000,output_data[3], output_data[3],output_data[3], 3'b000};
		  GrnPixels[04] = {10'b0000000000,output_data[4], output_data[4],output_data[4], 3'b000};
		  GrnPixels[05] = {10'b0000000000,output_data[5], output_data[5],output_data[5], 3'b000};
		  GrnPixels[06] = {10'b0000000000,output_data[6], output_data[6],output_data[6], 3'b000};
	     GrnPixels[07] = {10'b0000000000,output_data[7], output_data[7],output_data[7], 3'b000};
	     GrnPixels[08] = {10'b0000000000,output_data[8], output_data[8],output_data[8], 3'b000};
	     GrnPixels[09] = {10'b0000000000,output_data[9], output_data[9],output_data[9], 3'b000};
		  GrnPixels[10] = {10'b0000000000,output_data[10], output_data[10],output_data[10], 3'b000};
	     GrnPixels[11] = {10'b0000000000,output_data[11], output_data[11],output_data[11], 3'b000};
		  GrnPixels[12] = {10'b0000000000,output_data[12], output_data[12],output_data[12], 3'b000};
		  GrnPixels[13] = {10'b0000000000,output_data[13], output_data[13],output_data[13], 3'b000};
		  GrnPixels[14] = {10'b0000000000,output_data[14], output_data[14],output_data[14], 3'b000};
		  GrnPixels[15] = {10'b0000000000,output_data[15], output_data[15],output_data[15], 3'b000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S4;
		end
		
		S4:
		begin
		enable = 0; 
		  GrnPixels[00] = {9'b0000000000,output_data[0], output_data[0],output_data[0], 4'b0000};
		  GrnPixels[01] = {9'b0000000000,output_data[1], output_data[1],output_data[1], 4'b0000};
		  GrnPixels[02] = {9'b0000000000,output_data[2], output_data[2],output_data[2],4'b0000};
		  GrnPixels[03] = {9'b0000000000,output_data[3], output_data[3],output_data[3], 4'b0000};
		  GrnPixels[04] = {9'b0000000000,output_data[4], output_data[4],output_data[4], 4'b0000};
		  GrnPixels[05] = {9'b0000000000,output_data[5], output_data[5],output_data[5], 4'b0000};
		  GrnPixels[06] = {9'b0000000000,output_data[6], output_data[6],output_data[6], 4'b0000};
	     GrnPixels[07] = {9'b0000000000,output_data[7], output_data[7],output_data[7], 4'b0000};
	     GrnPixels[08] = {9'b0000000000,output_data[8], output_data[8],output_data[8], 4'b0000};
	     GrnPixels[09] = {9'b0000000000,output_data[9], output_data[9],output_data[9], 4'b0000};
		  GrnPixels[10] = {9'b0000000000,output_data[10], output_data[10],output_data[10], 4'b0000};
	     GrnPixels[11] = {9'b0000000000,output_data[11], output_data[11],output_data[11], 4'b0000};
		  GrnPixels[12] = {9'b0000000000,output_data[12], output_data[12],output_data[12], 4'b0000};
		  GrnPixels[13] = {9'b0000000000,output_data[13], output_data[13],output_data[13], 4'b0000};
		  GrnPixels[14] = {9'b0000000000,output_data[14], output_data[14],output_data[14], 4'b0000};
		  GrnPixels[15] = {9'b0000000000,output_data[15], output_data[15],output_data[15], 4'b0000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S5;
		end
		
		
		S5:
		begin
		enable = 0; 
		  GrnPixels[00] = {8'b000000000,output_data[0], output_data[0],output_data[0], 5'b00000};
		  GrnPixels[01] = {8'b000000000,output_data[1], output_data[1],output_data[1], 5'b00000};
		  GrnPixels[02] = {8'b000000000,output_data[2], output_data[2],output_data[2], 5'b00000};
		  GrnPixels[03] = {8'b000000000,output_data[3], output_data[3],output_data[3], 5'b00000};
		  GrnPixels[04] = {8'b000000000,output_data[4], output_data[4],output_data[4], 5'b00000};
		  GrnPixels[05] = {8'b000000000,output_data[5], output_data[5],output_data[5], 5'b00000};
		  GrnPixels[06] = {8'b000000000,output_data[6], output_data[6],output_data[6], 5'b00000};
	     GrnPixels[07] = {8'b000000000,output_data[7], output_data[7],output_data[7], 5'b00000};
	     GrnPixels[08] = {8'b000000000,output_data[8], output_data[8],output_data[8], 5'b00000};
	     GrnPixels[09] = {8'b000000000,output_data[9], output_data[9],output_data[9], 5'b00000};
		  GrnPixels[10] = {8'b000000000,output_data[10], output_data[10],output_data[10], 5'b00000};
	     GrnPixels[11] = {8'b000000000,output_data[11], output_data[11],output_data[11], 5'b00000};
		  GrnPixels[12] = {8'b000000000,output_data[12], output_data[12],output_data[12], 5'b00000};
		  GrnPixels[13] = {8'b000000000,output_data[13], output_data[13],output_data[13], 5'b00000};
		  GrnPixels[14] = {8'b000000000,output_data[14], output_data[14],output_data[14], 5'b00000};
		  GrnPixels[15] = {8'b000000000,output_data[15], output_data[15],output_data[15], 5'b00000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S6;
		end
		
			S6:
		begin
		enable = 0; 
		  GrnPixels[00] = {7'b00000000,output_data[0], output_data[0],output_data[0], 6'b000000};
		  GrnPixels[01] = {7'b00000000,output_data[1], output_data[1],output_data[1], 6'b000000};
		  GrnPixels[02] = {7'b00000000,output_data[2], output_data[2],output_data[2], 6'b000000};
		  GrnPixels[03] = {7'b00000000,output_data[3], output_data[3],output_data[3], 6'b000000};
		  GrnPixels[04] = {7'b00000000,output_data[4], output_data[4],output_data[4], 6'b000000};
		  GrnPixels[05] = {7'b00000000,output_data[5], output_data[5],output_data[5], 6'b000000};
		  GrnPixels[06] = {7'b00000000,output_data[6], output_data[6],output_data[6], 6'b000000};
	     GrnPixels[07] = {7'b00000000,output_data[7], output_data[7],output_data[7], 6'b000000};
	     GrnPixels[08] = {7'b00000000,output_data[8], output_data[8],output_data[8], 6'b000000};
	     GrnPixels[09] = {7'b00000000,output_data[9], output_data[9],output_data[9], 6'b000000};
		  GrnPixels[10] = {7'b00000000,output_data[10], output_data[10],output_data[10], 6'b000000};
	     GrnPixels[11] = {7'b00000000,output_data[11], output_data[11],output_data[11], 6'b000000};
		  GrnPixels[12] = {7'b00000000,output_data[12], output_data[12],output_data[12], 6'b000000};
		  GrnPixels[13] = {7'b00000000,output_data[13], output_data[13],output_data[13], 6'b000000};
		  GrnPixels[14] = {7'b00000000,output_data[14], output_data[14],output_data[14], 6'b000000};
		  GrnPixels[15] = {7'b00000000,output_data[15], output_data[15],output_data[15], 6'b000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S7;
		end
		
		S7:
		begin
		enable = 0; 
		  GrnPixels[00] = {7'b00000000,output_data[0], output_data[0],output_data[0], 6'b000000};
		  GrnPixels[01] = {7'b00000000,output_data[1], output_data[1],output_data[1], 6'b000000};
		  GrnPixels[02] = {7'b00000000,output_data[2], output_data[2],output_data[2], 6'b000000};
		  GrnPixels[03] = {7'b00000000,output_data[3], output_data[3],output_data[3], 6'b000000};
		  GrnPixels[04] = {7'b00000000,output_data[4], output_data[4],output_data[4], 6'b000000};
		  GrnPixels[05] = {7'b00000000,output_data[5], output_data[5],output_data[5], 6'b000000};
		  GrnPixels[06] = {7'b00000000,output_data[6], output_data[6],output_data[6], 6'b000000};
	     GrnPixels[07] = {7'b00000000,output_data[7], output_data[7],output_data[7], 6'b000000};
	     GrnPixels[08] = {7'b00000000,output_data[8], output_data[8],output_data[8], 6'b000000};
	     GrnPixels[09] = {7'b00000000,output_data[9], output_data[9],output_data[9], 6'b000000};
		  GrnPixels[10] = {7'b00000000,output_data[10], output_data[10],output_data[10], 6'b000000};
	     GrnPixels[11] = {7'b00000000,output_data[11], output_data[11],output_data[11], 6'b000000};
		  GrnPixels[12] = {7'b00000000,output_data[12], output_data[12],output_data[12], 6'b000000};
		  GrnPixels[13] = {7'b00000000,output_data[13], output_data[13],output_data[13], 6'b000000};
		  GrnPixels[14] = {7'b00000000,output_data[14], output_data[14],output_data[14], 6'b000000};
		  GrnPixels[15] = {7'b00000000,output_data[15], output_data[15],output_data[15], 6'b000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S8;
		end
		
		
		S8:
		begin
		enable = 0; 
		  GrnPixels[00] = {6'b0000000,output_data[0], output_data[0],output_data[0],  7'b0000000};
		  GrnPixels[01] = {6'b0000000,output_data[1], output_data[1],output_data[1], 7'b0000000};
		  GrnPixels[02] = {6'b0000000,output_data[2], output_data[2],output_data[2], 7'b0000000};
		  GrnPixels[03] = {6'b0000000,output_data[3], output_data[3],output_data[3], 7'b0000000};
		  GrnPixels[04] = {6'b0000000,output_data[4], output_data[4],output_data[4], 7'b0000000};
		  GrnPixels[05] = {6'b0000000,output_data[5], output_data[5],output_data[5], 7'b0000000};
		  GrnPixels[06] = {6'b0000000,output_data[6], output_data[6],output_data[6], 7'b0000000};
	     GrnPixels[07] = {6'b0000000,output_data[7], output_data[7],output_data[7], 7'b0000000};
	     GrnPixels[08] = {6'b0000000,output_data[8], output_data[8],output_data[8], 7'b0000000};
	     GrnPixels[09] = {6'b0000000,output_data[9], output_data[9],output_data[9], 7'b0000000};
		  GrnPixels[10] = {6'b0000000,output_data[10], output_data[10],output_data[10], 7'b0000000};
	     GrnPixels[11] = {6'b0000000,output_data[11], output_data[11],output_data[11], 7'b0000000};
		  GrnPixels[12] = {6'b0000000,output_data[12], output_data[12],output_data[12], 7'b0000000};
		  GrnPixels[13] = {6'b0000000,output_data[13], output_data[13],output_data[13], 7'b0000000};
		  GrnPixels[14] = {6'b0000000,output_data[14], output_data[14],output_data[14], 7'b0000000};
		  GrnPixels[15] = {6'b0000000,output_data[15], output_data[15],output_data[15], 7'b0000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S9;
		end
		
		S9:
		begin
		enable = 0; 
		  GrnPixels[00] = {5'b000000,output_data[0], output_data[0],output_data[0], 8'b00000000};
		  GrnPixels[01] = {5'b000000,output_data[1], output_data[1],output_data[1], 8'b00000000};
		  GrnPixels[02] = {5'b000000,output_data[2], output_data[2],output_data[2], 8'b00000000};
		  GrnPixels[03] = {5'b000000,output_data[3], output_data[3],output_data[3], 8'b00000000};
		  GrnPixels[04] = {5'b000000,output_data[4], output_data[4],output_data[4], 8'b00000000};
		  GrnPixels[05] = {5'b000000,output_data[5], output_data[5],output_data[5], 8'b00000000};
		  GrnPixels[06] = {5'b000000,output_data[6], output_data[6],output_data[6], 8'b00000000};
	     GrnPixels[07] = {5'b000000,output_data[7], output_data[7],output_data[7], 8'b00000000};
	     GrnPixels[08] = {5'b000000,output_data[8], output_data[8],output_data[8], 8'b00000000};
	     GrnPixels[09] = {5'b000000,output_data[9], output_data[9],output_data[9], 8'b00000000};
		  GrnPixels[10] = {5'b000000,output_data[10], output_data[10],output_data[10], 8'b00000000};
	     GrnPixels[11] = {5'b000000,output_data[11], output_data[11],output_data[11], 8'b00000000};
		  GrnPixels[12] = {5'b000000,output_data[12], output_data[12],output_data[12], 8'b00000000};
		  GrnPixels[13] = {5'b000000,output_data[13], output_data[13],output_data[13], 8'b00000000};
		  GrnPixels[14] = {5'b000000,output_data[14], output_data[14],output_data[14], 8'b00000000};
		  GrnPixels[15] = {5'b000000,output_data[15], output_data[15],output_data[15], 8'b00000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S10;
		end
		
		S10:
		begin
		enable = 0; 
		  GrnPixels[00] = {4'b00000,output_data[0], output_data[0],output_data[0], 9'b000000000};
		  GrnPixels[01] = {4'b00000,output_data[1], output_data[1],output_data[1], 9'b000000000};
		  GrnPixels[02] = {4'b00000,output_data[2], output_data[2],output_data[2], 9'b000000000};
		  GrnPixels[03] = {4'b00000,output_data[3], output_data[3],output_data[3], 9'b000000000};
		  GrnPixels[04] = {4'b00000,output_data[4], output_data[4],output_data[4], 9'b000000000};
		  GrnPixels[05] = {4'b00000,output_data[5], output_data[5],output_data[5], 9'b000000000};
		  GrnPixels[06] = {4'b00000,output_data[6], output_data[6],output_data[6], 9'b000000000};
	     GrnPixels[07] = {4'b00000,output_data[7], output_data[7],output_data[7], 9'b000000000};
	     GrnPixels[08] = {4'b00000,output_data[8], output_data[8],output_data[8], 9'b000000000};
	     GrnPixels[09] = {4'b00000,output_data[9], output_data[9],output_data[9], 9'b000000000};
		  GrnPixels[10] = {4'b00000,output_data[10], output_data[10],output_data[10], 9'b000000000};
	     GrnPixels[11] = {4'b00000,output_data[11], output_data[11],output_data[11], 9'b000000000};
		  GrnPixels[12] = {4'b00000,output_data[12], output_data[12],output_data[12], 9'b000000000};
		  GrnPixels[13] = {4'b00000,output_data[13], output_data[13],output_data[13], 9'b000000000};
		  GrnPixels[14] = {4'b00000,output_data[14], output_data[14],output_data[14], 9'b000000000};
		  GrnPixels[15] = {4'b00000,output_data[15], output_data[15],output_data[15], 9'b000000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S11;
		end
		
		S11:
		begin
		enable = 0; 
		  GrnPixels[00] = {3'b000,output_data[0], output_data[0],output_data[0], 10'b0000000000};
		  GrnPixels[01] = {3'b000,output_data[1], output_data[1],output_data[1], 10'b0000000000};
		  GrnPixels[02] = {3'b000,output_data[2], output_data[2],output_data[2], 10'b0000000000};
		  GrnPixels[03] = {3'b000,output_data[3], output_data[3],output_data[3], 10'b0000000000};
		  GrnPixels[04] = {3'b000,output_data[4], output_data[4],output_data[4], 10'b0000000000};
		  GrnPixels[05] = {3'b000,output_data[5], output_data[5],output_data[5], 10'b0000000000};
		  GrnPixels[06] = {3'b000,output_data[6], output_data[6],output_data[6], 10'b0000000000};
	     GrnPixels[07] = {3'b000,output_data[7], output_data[7],output_data[7], 10'b0000000000};
	     GrnPixels[08] = {3'b000,output_data[8], output_data[8],output_data[8], 10'b0000000000};
	     GrnPixels[09] = {3'b000,output_data[9], output_data[9],output_data[9], 10'b0000000000};
		  GrnPixels[10] = {3'b000,output_data[10], output_data[10],output_data[10], 10'b0000000000};
	     GrnPixels[11] = {3'b000,output_data[11], output_data[11],output_data[11], 10'b0000000000};
		  GrnPixels[12] = {3'b000,output_data[12], output_data[12],output_data[12], 10'b0000000000};
		  GrnPixels[13] = {3'b000,output_data[13], output_data[13],output_data[13], 10'b0000000000};
		  GrnPixels[14] = {3'b000,output_data[14], output_data[14],output_data[14], 10'b0000000000};
		  GrnPixels[15] = {3'b000,output_data[15], output_data[15],output_data[15], 10'b0000000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S12;
		end
		S12:
		begin
		enable = 0; 
		  GrnPixels[00] = {2'b00,output_data[0], output_data[0],output_data[0], 11'b00000000000};
		  GrnPixels[01] = {2'b00,output_data[1], output_data[1],output_data[1], 11'b00000000000};
		  GrnPixels[02] = {2'b00,output_data[2], output_data[2],output_data[2], 11'b00000000000};
		  GrnPixels[03] = {2'b00,output_data[3], output_data[3],output_data[3], 11'b00000000000};
		  GrnPixels[04] = {2'b00,output_data[4], output_data[4],output_data[4], 11'b00000000000};
		  GrnPixels[05] = {2'b00,output_data[5], output_data[5],output_data[5], 11'b00000000000};
		  GrnPixels[06] = {2'b00,output_data[6], output_data[6],output_data[6], 11'b00000000000};
	     GrnPixels[07] = {2'b00,output_data[7], output_data[7],output_data[7], 11'b00000000000};
	     GrnPixels[08] = {2'b00,output_data[8], output_data[8],output_data[8], 11'b00000000000};
	     GrnPixels[09] = {2'b00,output_data[9], output_data[9],output_data[9], 11'b00000000000};
		  GrnPixels[10] = {2'b00,output_data[10], output_data[10],output_data[10], 11'b00000000000};
	     GrnPixels[11] = {2'b00,output_data[11], output_data[11],output_data[11], 11'b00000000000};
		  GrnPixels[12] = {2'b00,output_data[12], output_data[12],output_data[12], 11'b00000000000};
		  GrnPixels[13] = {2'b00,output_data[13], output_data[13],output_data[13], 11'b00000000000};
		  GrnPixels[14] = {2'b00,output_data[14], output_data[14],output_data[14], 11'b00000000000};
		  GrnPixels[15] = {2'b00,output_data[15], output_data[15],output_data[15], 11'b00000000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S13;
		end
		
		
		S13:
		begin
		enable = 0; 
		  GrnPixels[00] = {1'b0,output_data[0], output_data[0],output_data[0], 12'b000000000000};
		  GrnPixels[01] = {1'b0,output_data[1], output_data[1],output_data[1], 12'b000000000000};
		  GrnPixels[02] = {1'b0,output_data[2], output_data[2],output_data[2], 12'b000000000000};
		  GrnPixels[03] = {1'b0,output_data[3], output_data[3],output_data[3], 12'b000000000000};
		  GrnPixels[04] = {1'b0,output_data[4], output_data[4],output_data[4], 12'b000000000000};
		  GrnPixels[05] = {1'b0,output_data[5], output_data[5],output_data[5], 12'b000000000000};
		  GrnPixels[06] = {1'b0,output_data[6], output_data[6],output_data[6], 12'b000000000000};
	     GrnPixels[07] = {1'b0,output_data[7], output_data[7],output_data[7], 12'b000000000000};
	     GrnPixels[08] = {1'b0,output_data[8], output_data[8],output_data[8], 12'b000000000000};
	     GrnPixels[09] = {1'b0,output_data[9], output_data[9],output_data[9], 12'b000000000000};
		  GrnPixels[10] = {1'b0,output_data[10], output_data[10],output_data[10], 12'b000000000000};
	     GrnPixels[11] = {1'b0,output_data[11], output_data[11],output_data[11], 12'b000000000000};
		  GrnPixels[12] = {1'b0,output_data[12], output_data[12],output_data[12], 12'b000000000000};
		  GrnPixels[13] = {1'b0,output_data[13], output_data[13],output_data[13], 12'b000000000000};
		  GrnPixels[14] = {1'b0,output_data[14], output_data[14],output_data[14], 12'b000000000000};
		  GrnPixels[15] = {1'b0,output_data[15], output_data[15],output_data[15], 12'b000000000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S14;
		end

		S14:
		begin
		enable = 0; 
		  GrnPixels[00] = {output_data[0], output_data[0],output_data[0], 13'b0000000000000};
		  GrnPixels[01] = {output_data[1], output_data[1],output_data[1], 13'b0000000000000};
		  GrnPixels[02] = {output_data[2], output_data[2],output_data[2], 13'b0000000000000};
		  GrnPixels[03] = {output_data[3], output_data[3],output_data[3], 13'b0000000000000};
		  GrnPixels[04] = {output_data[4], output_data[4],output_data[4], 13'b0000000000000};
		  GrnPixels[05] = {output_data[5], output_data[5],output_data[5], 13'b0000000000000};
		  GrnPixels[06] = {output_data[6], output_data[6],output_data[6], 13'b0000000000000};
	     GrnPixels[07] = {output_data[7], output_data[7],output_data[7], 13'b0000000000000};
	     GrnPixels[08] = {output_data[8], output_data[8],output_data[8], 13'b0000000000000};
	     GrnPixels[09] = {output_data[9], output_data[9],output_data[9], 13'b0000000000000};
		  GrnPixels[10] = {output_data[10], output_data[10],output_data[10], 13'b0000000000000};
	     GrnPixels[11] = {output_data[11], output_data[11],output_data[11], 13'b0000000000000};
		  GrnPixels[12] = {output_data[12], output_data[12],output_data[12], 13'b0000000000000};
		  GrnPixels[13] = {output_data[13], output_data[13],output_data[13], 13'b0000000000000};
		  GrnPixels[14] = {output_data[14], output_data[14],output_data[14], 13'b0000000000000};
		  GrnPixels[15] = {output_data[15], output_data[15],output_data[15], 13'b0000000000000};
			if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S15;
		end	
	

		S15:
		begin
		enable = 1; 
		  GrnPixels[00] = { output_data[0],output_data[0], 14'b00000000000000};
		  GrnPixels[01] = { output_data[1],output_data[1], 14'b00000000000000};
		  GrnPixels[02] = { output_data[2],output_data[2], 14'b00000000000000};
		  GrnPixels[03] = { output_data[3],output_data[3], 14'b00000000000000};
		  GrnPixels[04] = { output_data[4],output_data[4], 14'b00000000000000};
		  GrnPixels[05] = { output_data[5],output_data[5], 14'b00000000000000};
		  GrnPixels[06] = { output_data[6],output_data[6], 14'b00000000000000};
	     GrnPixels[07] = { output_data[7],output_data[7], 14'b00000000000000};
	     GrnPixels[08] = { output_data[8],output_data[8], 14'b00000000000000};
	     GrnPixels[09] = { output_data[9],output_data[9], 14'b00000000000000};
		  GrnPixels[10] = { output_data[10],output_data[10], 14'b00000000000000};
	     GrnPixels[11] = { output_data[11],output_data[11], 14'b00000000000000};
		  GrnPixels[12] = { output_data[12],output_data[12], 14'b00000000000000};
		  GrnPixels[13] = { output_data[13],output_data[13], 14'b00000000000000};
		  GrnPixels[14] = { output_data[14],output_data[14], 14'b00000000000000};
		  GrnPixels[15] = { output_data[15],output_data[15], 14'b00000000000000};
		 if(is_dead)begin
			ns = S16;
		  end
		  else
			ns = S0;
		end	
			S16: 
		begin

			begin
		  enable = 0; 
		  GrnPixels[00] = {16'b0000000000000000};
		  GrnPixels[01] = {16'b0000000000000000};
		  GrnPixels[02] = {16'b0000000000000000};
		  GrnPixels[03] = {16'b0000000000000000};
		  GrnPixels[04] = {16'b0000000000000000};
		  GrnPixels[05] = {16'b0000000000000000};
		  GrnPixels[06] = {16'b0000000000000000};
	     GrnPixels[07] = {16'b0000000000000000};
	     GrnPixels[08] = {16'b0000000000000000};
	     GrnPixels[09] = {16'b0000000000000000};
		  GrnPixels[10] = {16'b0000000000000000};
	     GrnPixels[11] = {16'b0000000000000000};
		  GrnPixels[12] = {16'b0000000000000000};
		  GrnPixels[13] = {16'b0000000000000000};
		  GrnPixels[14] = {16'b0000000000000000};
		  GrnPixels[15] = {16'b0000000000000000};
		  end
		 if(is_dead)begin
			ns = S16;
		  end
		  else ns = S1; 
			
		end

		default:
			begin
		GrnPixels[00] = {output_data[0], output_data[0],output_data[0] , output_data[0], 12'b000000000000};
		  GrnPixels[01] = {output_data[1], output_data[1],output_data[1], output_data[1], 12'b000000000000};
		  GrnPixels[02] = {output_data[2], output_data[2],output_data[2] , output_data[2], 12'b000000000000};
		  GrnPixels[03] = {output_data[3], output_data[3],output_data[3] , output_data[3], 12'b000000000000};
		  GrnPixels[04] = {output_data[4], output_data[4],output_data[4] , output_data[4], 12'b000000000000};
		  GrnPixels[05] = {output_data[5], output_data[5],output_data[5] , output_data[5], 12'b000000000000};
		  GrnPixels[06] = {output_data[6], output_data[6],output_data[6] , output_data[6], 12'b000000000000};
	     GrnPixels[07] = {output_data[7], output_data[7],output_data[7] , output_data[7],12'b000000000000};
	     GrnPixels[08] = {output_data[8], output_data[8],output_data[8] , output_data[8], 12'b000000000000};
	     GrnPixels[09] = {output_data[9], output_data[9],output_data[9] , output_data[9], 12'b000000000000};
		  GrnPixels[10] = {output_data[10], output_data[10],output_data[10] , output_data[10], 12'b000000000000};
	     GrnPixels[11] = {output_data[11], output_data[11],output_data[11] , output_data[11], 12'b000000000000};
		  GrnPixels[12] = {output_data[12], output_data[12],output_data[12] , output_data[12], 12'b000000000000};
		  GrnPixels[13] = {output_data[13], output_data[13],output_data[13] , output_data[13], 12'b000000000000};
		  GrnPixels[14] = {output_data[14], output_data[14],output_data[14] , output_data[14], 12'b000000000000};
		  GrnPixels[15] = {output_data[15], output_data[15],output_data[15] , output_data[15], 12'b000000000000};
			ns = S0; 
			end
		endcase 
end
  always_ff @(posedge clk)
    if (reset)
      ps <= S0;
    else
      ps <= ns;

	
endmodule 