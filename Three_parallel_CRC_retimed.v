`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:26 04/11/2022 
// Design Name: 
// Module Name:    Three_parallel_CRC_retimed 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Three_parallel_CRC_retimed(clk,reset,data_in,data_out);

input clk,reset;
input [8:0] data_in ;
output reg [8:0] data_out;
reg [9:0] data_reg;
reg d1,d2,d3,d41,d42,d5,d6,d7,d8,d9,d10,d11,d121,d122,d13,d14,d15,d16,d17,d18;

always @(posedge clk or posedge reset)
begin
if(reset)
	begin
	data_out <= 9'd0;
	//out <= 9'd0;
	d1 <= 0;
	d2 <= 0;
	d3 <= 0;
	d41 <= 0;
	d42 <= 0;
	d5 <= 0;
	d6 <= 0;
	d7 <= 0;
	d8 <= 0;
	d9 <= 0;
	d10 <= 0;
	d11 <= 0;
	d121 <= 0;
	d122 <= 0;
	d13 <= 0;
	d14 <= 0;
	d15 <= 0;
	d16 <= 0;
	d17 <= 0;
	d18 <= 0;
	$display("1  data_out = %b ",data_out);
	data_reg <= data_in;
	$display("1  data_in = %b ",data_reg);
	end
else
	begin
	
		d1 <= data_reg[8];
		d2 <= d13^d1;
		d3 <= data_reg[8];
		d41 <= data_reg[6];
		d42 <= d41;
		d5 <= data_out[2]^data_out[1]^data_reg[8]^d11;
		d6 <= data_out[2]^data_out[1]^data_reg[8];
		d7 <= data_reg[7];
		d8 <= d7^d42^d2^d5;
		d9 <= d8^d3^d10^d11;
		d10 <= d17^d18;
		d11 <= data_reg[7]^data_out[0]^data_out[1]^d2;
		d121 <= data_reg[6];
		d122 <= d121;
		d13 <= d14^d15;
		d14 <= d122^d9;
		d15 <= d16^d6^d17^d18;
		d16 <= data_reg[7];
		d17 <= data_reg[6];
		d18 <= d2^data_out[0]^d2^d8;
		
		data_out[0] <= d122^d9;
		data_out[1] <= d122^d9^d8;
		data_out[2] <= d2^d8;
		data_out[3] <= data_out[0]^d2;
		data_out[4] <= data_out[1];
		data_out[5] <= data_out[2];
		data_out[6] <= data_out[3];
		data_out[7] <= data_out[4];
		data_out[8] <= d13;
		

		//101011010
		data_reg <= data_reg<<3;
		//data_reg <= {data_reg[5:0],data_reg[8],data_reg[7],data_reg[6]};				
		//$display($time," output = %b ",data_out);
		$display($time," output = %b%b%b%b%b%b%b%b%b ",data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]);
		
	end
	//out <= ~data_out;
	//$display("2  out = %b ",out);
end

endmodule
