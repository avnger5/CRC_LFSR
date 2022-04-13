`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:34:28 04/13/2022
// Design Name:   Serial_CRC_eq2
// Module Name:   C:/Users/hp/Desktop/Mapping DSP algo to Architecture/project/Project/Serial_CRC_eq2/Serial_CRC_eq2_test.v
// Project Name:  Serial_CRC_eq2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Serial_CRC_eq2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Serial_CRC_eq2_test;

	// Inputs
	reg clk;
	reg reset;
	reg [5:0] data_in;

	// Outputs
	wire [4:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Serial_CRC_eq2 uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		//data_in = 10'b101011;
		data_in = 10'b111001;
		#10
		reset = 0;
	
		
		#10
		reset = 0;
		
		#100;
        
		// Add stimulus here

	end
      
		always #10 clk = ~clk;
      
endmodule


