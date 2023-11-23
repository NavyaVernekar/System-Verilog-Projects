`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 13:01:43
// Design Name: 
// Module Name: top_testbench
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



module top_testbench();
bit sclk,rst;

intf inf (sclk,rst);
testcase test (inf);
slave dut (.mosi(inf.mosi),
           .sclk(inf.sclk),
           .cs(inf.cs),
            .rst(inf.rst),
            .data(inf.data));
       
initial begin
sclk =0;
rst =1;
#20 
rst =0;
end

always #5 sclk =~sclk;
endmodule
