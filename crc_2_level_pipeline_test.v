`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:29 04/10/2022
// Design Name:   crc_2_level
// Module Name:   C:/Users/hp/Desktop/Mapping DSP algo to Architecture/project/Project/twolevelcrc/crc_test.v
// Project Name:  twolevelcrc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: crc_2_level
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//Verilog test bench code for generator polynomial 1+y+y8+y9 with 2 level pipelining
//Serial CRC circuit with 2 level pipelining

module crc_2_level_pipeline_test;

	// Inputs
	reg clk;
	reg reset;
	reg [9:0] data_in;

	// Outputs
	wire [8:0] data_out;
	//wire [8:0] out;

	// Instantiate the Unit Under Test (UUT)
	crc_2_level_pipeline uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		data_in = 10'b1100000011;
		
		#1
		reset = 0;
	
		

        
		// Add stimulus here

	end
      
		always #1 clk = ~clk;
      
endmodule

