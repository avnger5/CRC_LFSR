`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:28:03 04/10/2022
// Design Name:   CRC_4_level
// Module Name:   C:/Users/hp/Desktop/Mapping DSP algo to Architecture/project/Project/four_level_pipeline/CRC_test.v
// Project Name:  four_level_pipeline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CRC_4_level
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CRC_test;

	// Inputs
	reg clk;
	reg reset;
	reg [9:0] data_in;

	// Outputs
	wire [8:0] data_out;
	//wire [8:0] out;

	// Instantiate the Unit Under Test (UUT)
	CRC_4_level uut (
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

