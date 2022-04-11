`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:15:47 04/11/2022
// Design Name:   Three_parallel_CRC_retimed
// Module Name:   C:/Users/hp/Desktop/Mapping DSP algo to Architecture/project/Project/Three_parallel_CRC_retimed/Three_parallel_CRC_retimed_test.v
// Project Name:  Three_parallel_CRC_retimed
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Three_parallel_CRC_retimed
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Three_parallel_CRC_retimed_test;

	// Inputs
	reg clk;
	reg reset;
	reg [8:0] data_in;

	// Outputs
	wire [8:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Three_parallel_CRC_retimed uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		
		clk = 0;
		reset = 1;
		//data_in = 10'b1100000011;
		data_in = 9'b101011010;
		//data_in = 10'b1011001011;
		#10
		reset = 0;
	
		
		#10
		reset = 0;
		
		#100;

	end
      
		always #10 clk = ~clk;
      
endmodule

