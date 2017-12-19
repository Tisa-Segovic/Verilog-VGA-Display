`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:00 12/14/2017 
// Design Name: 
// Module Name:    allModulesMain 
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
module allModulesMain(
	input clk,
	input button,
	output hs, vs,
	output[7:0] rgb,
	output[3:0] a,
	output[6:0] out	
	);
	
	wire w1;
	wire[9:0] w2, w3;
	wire[15:0] w4;
	//w1 = bright, w2= hCount, w3 = vCount, w4 = score;

	DisplayController dc(clk, hs, vs, w1, w2, w3);
	vgaBitChange vbc(clk, w1, button, w2, w3, rgb, w4);
	counterVerilog cv(clk, w4, a, out);

endmodule
