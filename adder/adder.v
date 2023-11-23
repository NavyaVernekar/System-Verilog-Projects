`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 13:35:44
// Design Name: 
// Module Name: adder
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


module adder(clk,reset,a,b,valid,c);
input clk,reset,valid;
input [3:0] a,b;
output reg [6:0] c;
reg [6:0] sum=0;

always@(posedge clk) begin
    if(reset)
        c=4'b0;
    else if(valid) 
        sum=a+b;
    else if (!valid) 
          c=sum;
end

endmodule
