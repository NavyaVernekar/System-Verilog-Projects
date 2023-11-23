`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2023 15:56:16
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
bit clk,rst;

intf inf (clk,rst);
testcase test (inf);
adder dut(.clk(inf.clk),
      .reset(inf.rst),
       .a(inf.a),
       .b(inf.b),
       .valid(inf.valid),
       .c(inf.c));
       
initial begin
clk =0;
rst =1;
#20 
rst =0;
end

always #5 clk =~clk;
endmodule
