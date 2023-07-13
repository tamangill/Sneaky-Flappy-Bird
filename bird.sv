module bird(
	input logic clk,
	input logic reset,
	input logic  [15:0][15:0] GrnPixels,
	input logic up,
	output logic isDead, 
	output logic [15:0][15:0] RedPixels
	
);  

	enum logic [4:0] {S0 = 5'b00000, S1 = 5'b00001, S2 = 5'b00010, S3 = 5'b00011, S4 = 5'b00100, S5 = 5'b00101, S6 = 5'b00110, S7 = 5'b00111, S8 = 5'b01000, S9 = 5'b01001, S10 = 5'b01010,S11 = 5'b01011, S12 = 5'b01100, S13 = 5'b01101, S14 = 5'b01110, S15 = 5'b01111, S16 = 5'b10000} ps, ns;

	
	always_comb begin
	begin
		case(ps)
		S0: begin
		  RedPixels[00] = {3'b000,1'b1, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S0;
		end 
		else
		begin
			ns = S1;
		end
			
		if(GrnPixels[00][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end 
			
		end
		S1: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b1, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S0;
		end 
		else
		begin
			ns = S2;
			end
			
			
		if(GrnPixels[01][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end 
		else 
		begin
			isDead = 0; 
		end
		end
		S2: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b1, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S1;
		end 
		else
		begin
			ns = S3;
			end
			
		if(GrnPixels[02][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end 
		else 
		begin
			isDead = 0; 
		end
			
		end
		
		S3: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b1, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S2;
		end 
		else
		begin
			ns = S4;
			end
			
			
	  if(GrnPixels[03][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end
		end
		S4: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b1, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S3;
		end 
		else
		begin
			ns = S5;
			end
			
		if(GrnPixels[04][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end 
		else 
		begin
			isDead = 0; 
		end
		end
		
		
		S5: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b1, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S4;
		end 
		else
		begin
			ns = S6;
			end
		if(GrnPixels[05][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end
		end
		
		S6: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b1, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S5;
		end 
		else
		begin
			ns = S7;
			end
		if(GrnPixels[06][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end
		end 
		
		
		S7: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b1, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S6;
		end 
		else
		begin
			ns = S8;
			end
		if(GrnPixels[07][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end
		end 
		
		S8: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b1, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S7;
		end 
		else
		begin
			ns = S9;
			end
		if(GrnPixels[08][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end
		end 
		
		S9: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b1, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S8;
		end 
		else
		begin
			ns = S10;
			end
		if(GrnPixels[09][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end
		end 
		
		S10: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b1,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S9;
		end 
		else
		begin
			ns = S11;
			end
		if(GrnPixels[10][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16; 
			end 
		else 
		begin
			isDead = 0; 
		end
		end 
		
		
		
		S11: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b1,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S10;
		end 
		else
		begin
			ns = S12;
			end
		if(GrnPixels[11][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end
		else 
		begin
			isDead = 0; 
		end
		end
		
		
		S12: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b1,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S11;
		end 
		else
		begin
			ns = S13;
			end
		if(GrnPixels[12][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end 
		else 
		begin
			isDead = 0; 
		end
		end	
		
		
		S13: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b1,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S12;
		end 
		else
		begin
			ns = S14;
			end
		if(GrnPixels[13][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end 
		else 
		begin
			isDead = 0; 
		end
		end	
		
		
		S14: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b1,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
		if(up) begin 
			ns = S13;
		end 
		else
		begin
			ns = S15;
			end
		if(GrnPixels[14][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end 
		else 
		begin
			isDead = 0; 
		end
		end	
		
		S15: begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b1,12'b000000000000};
		if(up) begin 
			ns = S14;
		end 
		else
		begin
			ns = S15;
			end
		if(GrnPixels[15][12] == 1'b1) 
			begin
			isDead = 1;
			ns = S16;
			end 
		else 
		begin
			isDead = 0; 
		end
		end
		
		
		
		S16: begin
		  RedPixels[00] = {3'b111,1'b1, 12'b111111111111};
		  RedPixels[01] = {3'b111,1'b1, 12'b111111111111};
		  RedPixels[02] = {3'b111,1'b1, 12'b111111111111};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b001,1'b0, 12'b111001000010};
		  RedPixels[05] = {3'b111,1'b0, 12'b100010101110};
		  RedPixels[06] = {3'b101,1'b0, 12'b111011101010};
	     RedPixels[07] = {3'b101,1'b0, 12'b100010101010};
	     RedPixels[08] = {3'b111,1'b0, 12'b111010101110};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b111,1'b1,12'b111111111111};
	     RedPixels[11] = {3'b111,1'b1,12'b111111111111};
		  RedPixels[12] = {3'b111,1'b1,12'b111111111111};
		  RedPixels[13] = {3'b111,1'b1,12'b111111111111};
		  RedPixels[14] = {3'b111,1'b1,12'b111111111111};
		  RedPixels[15] = {3'b111,1'b1,12'b111111111111};
		if(up) begin 
			ns = S16;
		end 
		else
		begin
			ns = S16;
			end
		isDead = 1; 
		end
		
		default:
			begin
		  RedPixels[00] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[01] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[02] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[03] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[04] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[05] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[06] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[07] = {3'b000,1'b1, 12'b000000000000};
	     RedPixels[08] = {3'b000,1'b0, 12'b000000000000};
	     RedPixels[09] = {3'b000,1'b0, 12'b000000000000};
		  RedPixels[10] = {3'b000,1'b0,12'b000000000000};
	     RedPixels[11] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[12] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[13] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[14] = {3'b000,1'b0,12'b000000000000};
		  RedPixels[15] = {3'b000,1'b0,12'b000000000000};
			ns = S0; 
			isDead = 0; 
			end
		endcase  
end
end
  always_ff @(posedge clk)
    if (reset)
    ps <= S7; 
    else
    ps <= ns;

	
endmodule 