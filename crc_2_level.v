`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:32 04/10/2022 
// Design Name: 
// Module Name:    crc_2_level 
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
module crc_2_level(clk,reset,data_in,data_out);

input clk,reset;
input [9:0] data_in ;
output reg [8:0] data_out;
reg [9:0] data_reg;
reg d1,d2;

always @(posedge clk or posedge reset)
begin
if(reset)
	begin
	data_out <= 0;
	$display("1  data_out = %b ",data_out);
	data_reg <= data_in;
	$display("1  data_in = %b ",data_reg);
	d1 <= 0;
	d2 <= 0;
	end
else
	begin
		
		d1 <= data_reg[9];
		data_out[0] <= d1^data_out[8];
		data_out[1] <= d1^data_out[8]^data_out[0];
		data_out[2] <= data_out[1];
		data_out[3] <= data_out[2];
		data_out[4] <= data_out[3];
		data_out[5] <= data_out[4];
		data_out[6] <= data_out[5];
		data_out[7] <= data_out[6];
		d2 <= data_out[7]^data_out[6]^data_reg[9]^d1^data_out[8];
		data_out[8] <= d2;
		
		//data_reg <= data_reg<<1;
		data_reg <= {data_reg[8:0],data_reg[9]};
		
		//out <= {data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]};
		
		$display($time," output = %b%b%b%b%b%b%b%b%b ",data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]);
		
	end
	//out <= ~data_out;
	//$display("2  out = %b ",out);
end

endmodule



