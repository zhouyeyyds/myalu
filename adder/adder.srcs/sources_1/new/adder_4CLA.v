`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/18 15:00:33
// Design Name: 
// Module Name: adder_4CLA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



/******************4λCLA����************************/
module adder_4CLA(c0,c1,c2,c3,c4,p1,p2,p3,p4,g1,g2,g3,g4);
   
	 input c0,g1,g2,g3,g4,p1,p2,p3,p4;
	 output c1,c2,c3,c4;
	 
	 assign c1 = g1 ^ (p1 & c0),
	        c2 = g2 ^ (p2 & g1) ^ (p2 & p1 & c0),
			c3 = g3 ^ (p3 & g2) ^ (p3 & p2 & g1) ^ (p3 & p2 & p1 & c0),
			c4 = g4^(p4&g3)^(p4&p3&g2)^(p4&p3&p2&g1)^(p4&p3&p2&p1&c0);
	 
endmodule 

