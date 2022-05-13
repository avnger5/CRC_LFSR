# CRC_LFSR
Implementation  of CRC code in Verilog

CODES

/////////////////////////////////
Generator polynomial 1+y+y^8+y^9

/////////////////////Serial CRC implementation////////////////////////////////////////////
serial_CRC.v
serial_CRC_test.v

////////////////////CRC implementation with 2 level pipelining////////////////////////////
crc_2_level_pipeline.v
crc_2_level_pipeline_test.v

////////////////////CRC implementation with 4 level pipelining and retimimg////////////////
CRC_4_level_pipeline.v
CRC_4_level_pipeline_test.v

////////////////////CRC implementation with 3 level unfolding////////////////////////////
Three_parallel_CRC.v
Three_parallel_CRC_test.v

////////////////////CRC implementation with 3 level unfolding and retimimg////////////////
Three_parallel_CRC_retimed.v
Three_parallel_CRC_retimed_test.v


/////////////////////////////////
Generator polynomial 1+y+y^7+y^9

/////////////////////Serial CRC implementation////////////////////////////////////////////
SerialCRC_genpoly2.v
SerialCRC_genpoly2_test.v





/////////////////////////////////
Generator polynomial 1+y+y^3+y^5


/////////////////////Serial CRC implementation////////////////////////////////////////////
Serial_CRC_eq2.v
Serial_CRC_eq2_test.v

/////////////////////CRC implementation with 2 level unfolding////////////////////////////
CRC_Unfold2_eq2.v
CRC_Unfold2_eq2_test.v

/////////////////////CRC implementation with 3 level unfolding////////////////////////////
CRC_unfold3_eq2.v
CRC_unfold3_eq2_test.v




///////////////////////////////
STEPS TO RUN THE CODE

1.  The first code given in the subtopics is the verilog code for the generator polynomial given above.
2.  The code follwing that with test.v is the testbench code which is used to test the verilog code
3.  All the testbench code are given for the following generator polynomial.
4.  copy both test.v and .v file and run the testbench code using xilinx ISE software.






