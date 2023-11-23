`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 12:26:21
// Design Name: 
// Module Name: slave
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


module slave(mosi,sclk,cs,rst,data);
input mosi,sclk,cs,rst;
output reg [15:0] data;
reg [3:0]i=0;
always@(posedge sclk)
if(rst)
    begin data=16'b0; i=0; end
else if(!cs)
    begin data[i]=mosi; i=i+1; end
else
   begin data=16'b0; i=0; end
endmodule
