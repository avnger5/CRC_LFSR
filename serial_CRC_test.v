`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:08 04/09/2022
// Design Name:   CRC_serial
// Module Name:   C:/Users/hp/Desktop/Mapping DSP algo to Architecture/project/Project/CRC3/crc_test.v
// Project Name:  CRC3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CRC_serial
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

///SERIAL CRC WORKING
//Verilog test bench code for generator polynomial 1+y+y8+y9
//Serial CRC circuit 

module serial_CRC_test;

	// Inputs
	reg clk;
	reg reset;
	reg [9:0] data_in;

	// Outputs
	wire [8:0] data_out;
	//wire [8:0] out;


	// Instantiate the Unit Under Test (UUT)
	serial_CRC uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.data_out(data_out)
	);
//		.out(out)
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		data_in = 10'b1100000011;
		//data_in = 10'b1011001011;
		
		#1
		reset = 0;
	
        
		// Add stimulus here

	end
      
		always #1 clk = ~clk;
      
endmodule

