`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:58 04/11/2022 
// Design Name: 
// Module Name:    Three_parallel_CRC 
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

//Verilog code for generator polynomial 1+y+y8+y9 with 3 level unfolding


module Three_parallel_CRC(clk,reset,data_in,data_out);

input clk,reset;
input [8:0] data_in ;
output reg [8:0] data_out;
reg [9:0] data_reg;
reg d1,d2,d3,d4,d5,d6,d7,d8,d9;

always @(posedge clk or posedge reset)
begin
if(reset)
	begin
	data_out <= 9'd0;
	//out <= 9'd0;
	d1 <= 0;
	d2 <= 0;
	d3 <= 0;
	d4 <= 0;
	d5 <= 0;
	d6 <= 0;
	d7 <= 0;
	d8 <= 0;
	d9 <= 0;
	$display("1  data_out = %b ",data_out);
	data_reg <= data_in;
	$display("1  data_in = %b ",data_reg);
	end
else
	begin
	
		d1 <= data_reg[8];
		d2 <= data_reg[7];
		d3 <= data_reg[6];
		d4 <= data_out[5]^data_out[4]^data_reg[8]^d8^d7^d1^data_out[8];
		d5 <= data_out[3]^data_out[4]^data_reg[7]^d9^data_reg[8]^d2^d4;
		d6 <= data_out[3]^data_out[2]^data_reg[6]^data_out[5]^data_out[4]^data_reg[8]^data_reg[7]^d3^d5;
		d7 <= data_reg[6];
		d8 <= data_out[3]^data_out[4]^data_reg[7];
		d9 <= data_out[3]^data_out[2]^data_reg[6];
		
		data_out[0] <= d3^d5;
		data_out[1] <= d3^d5^d2^d4;
		data_out[2] <= d1^data_out[8]^d2^d4;
		data_out[3] <= d1^data_out[8]^data_out[0];
		data_out[4] <= data_out[1];
		data_out[5] <= data_out[2];
		data_out[6] <= data_out[3];
		data_out[7] <= data_out[4];
		data_out[6] <= d6;
		

		//101011010
		data_reg <= data_reg<<3;
		//data_reg <= {data_reg[6:0],data_reg[9],data_reg[8],data_reg[7]};				
		$display($time," output = %b ",data_out);
		//$display($time," output = %b%b%b%b%b%b%b%b%b ",data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]);
		
	end
	//out <= ~data_out;
	//$display("2  out = %b ",out);
end

endmodule
