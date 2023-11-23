`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 15:19:20
// Design Name: 
// Module Name: mux
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


module mux(op,s,in,clk,rst);
input [3:0] in;
input [1:0] s;
input clk,rst;
output reg op;

always@(posedge clk)
if(rst)
    op=0;
else
case(s)
    2'b00: op=in[0];
    2'b01: op=in[1];
    2'b10: op=in[2];
    2'b10: op=in[3];
endcase

endmodule
