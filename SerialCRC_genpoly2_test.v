`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:31:29 04/12/2022
// Design Name:   SerialCRC_eq2
// Module Name:   C:/Users/hp/Desktop/Mapping DSP algo to Architecture/project/Project/SerialCRC_part2/SerialCRC_eq2_test.v
// Project Name:  SerialCRC_part2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SerialCRC_eq2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SerialCRC_eq2_test;

	// Inputs
	reg clk;
	reg reset;
	reg [9:0] data_in;

	// Outputs
	wire [8:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	SerialCRC_genpoly2 uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		data_in = 10'b1010000011;
		//data_in = 10'b1011111011;
		//data_in = 10'b1111000011;
		
		#1
		reset = 0;
		


	end
      
		always #1 clk = ~clk;
      
endmodule

