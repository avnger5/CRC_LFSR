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

module crc_test;

	// Inputs
	reg clk;
	reg reset;
	reg [9:0] data_in;

	// Outputs
	wire [8:0] data_out;
	//wire [8:0] out;

	// Instantiate the Unit Under Test (UUT)
	crc_2_level uut (
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
		
		#10
		reset = 0;
	
		
		#10
		reset = 0;
		
		#100;
        
		// Add stimulus here

	end
      
		always #10 clk = ~clk;
      
endmodule

