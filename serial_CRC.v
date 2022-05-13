`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:21 04/09/2022 
// Design Name: 
// Module Name:    CRC_serial 
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

//Verilog code for generator polynomial 1+y+y8+y9
//Serial CRC circuit 

module serial_CRC(clk,reset,data_in,data_out);

input clk,reset;
input [9:0] data_in ;
output reg [8:0] data_out;//,out;
reg [9:0] data_reg;

always @(posedge clk or posedge reset)
begin
if(reset)
	begin
	data_out <= 0;
	$display("1  data_out = %b ",data_out);
	data_reg <= data_in;
	$display("1  data_in = %b ",data_reg);
	end
else
	begin
		
		data_out[0] <= data_out[8]^data_reg[9];
		data_out[1] <= data_out[0]^data_out[8]^data_reg[9];
		data_out[2] <= data_out[1];
		data_out[3] <= data_out[2];
		data_out[4] <= data_out[3];
		data_out[5] <= data_out[4];
		data_out[6] <= data_out[5];
		data_out[7] <= data_out[6];
		data_out[8] <= data_out[7]^data_out[8]^data_reg[9];
		
		//data_reg <= data_reg<<1;
		data_reg <= {data_reg[8:0],data_reg[9]};
		
		//out <= {data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]};
		
		$display($time," output = %b%b%b%b%b%b%b%b%b ",data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]);
		//$display($time, " output = %b%b%b%b%b%b%b%b%b ",data_out[0],data_out[1],data_out[2],data_out[3],data_out[4],data_out[5],data_out[6],data_out[7],data_out[8]);
		
	end
	//out <= ~data_out;
	//$display("2  out = %b ",out);
end

endmodule



