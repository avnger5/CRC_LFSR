`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:10 04/10/2022 
// Design Name: 
// Module Name:    CRC_4_level 
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
module CRC_4_level(clk,reset,data_in,data_out);

input clk,reset;
input [9:0] data_in ;
output reg [8:0] data_out;
reg [9:0] data_reg;
reg d1,d21,d22,d31,d32,d33,d41,d42,d5;

always @(posedge clk or posedge reset)
begin
if(reset)
	begin
	data_out <= 0;
	$display("1  data_out = %b ",data_out);
	data_reg <= data_in;
	$display($time,"  1  data_in = %b ",data_reg);
	d1 <= 0;
	d21 <= 0;
	d22 <= 0;
	d31 <= 0;
	d32 <= 0;
	d33 <= 0;
	d41 <= 0;
	d42 <= 0;
	d5 <= 0;
	end
else
	begin
		//////////////////////////////
		d1 <= data_reg[9];
		d21 <= d1;
		d22 <= d21;
		data_out[0] <= d22^data_out[8];
		data_out[1] <= d22^data_out[8]^data_out[0];
		data_out[2] <= data_out[1];
		data_out[3] <= data_out[2];
		data_out[4] <= data_out[3];
		data_out[5] <= data_out[4];
		data_out[6] <= data_out[5];
		data_out[7] <= data_out[6];
		d5 <= data_out[4];
		d41 <= data_out[4]^d5^data_reg[9];
		d42 <= d41;
		d31 <= d5^d42^d1^d22^data_out[8]^data_reg[9]^data_out[4]^d5;
		d32 <= d31;
		d33 <= d32;
		data_out[8] <= d33;
		////////////////////////////////

		
		/*  ////////////////////////////////////////////////CODE for 1+y+y7+y9
		data_out[0] <= data_reg[9];
		data_out[1] <= data_out[0]^data_reg[9];
		data_out[2] <= data_out[1];
		data_out[3] <= data_out[2];
		data_out[4] <= data_out[3];
		data_out[5] <= data_out[4];
		data_out[6] <= data_out[5];
		d20 <= data_out[4]^data_out[6]^d11^data_reg[9];
		d21 <= d20;
		data_out[7] <= d21;
		data_out[8] <= data_out[7];
		d10 <= data_reg[9]^data_out[8];
		d11 <= d10;
		
		/////////////////////////////////////////////////////CODE for 1+y+y7+y9
		d10 <= data_reg[9];
		d11 <= d10;
		data_out[0] <= d11^data_out[8];
		data_out[1] <= d11^data_out[8]^data_out[0];
		data_out[2] <= data_out[1];
		data_out[3] <= data_out[2];
		data_out[4] <= data_out[3];
		data_out[5] <= data_out[4];
		data_out[6] <= data_out[5];
		data_out[7] <= d21;
		data_out[8] <= data_out[7];
		d20 <= data_out[4]^data_out[6]^data_reg[9]^d11^data_out[8];
		d21 <= d20;
		*/
		
		//data_reg <= data_reg<<1;
		data_reg <= {data_reg[8:0],data_reg[9]};
		
		//out <= {data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]};
		$display($time," output = %b%b%b%b%b%b%b%b%b ",data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]);

		
	end
	//out <= ~data_out;
	//$display("2  out = %b ",out);
end

endmodule