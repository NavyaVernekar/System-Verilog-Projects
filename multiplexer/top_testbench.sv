`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 21:53:33
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
 mux dut (.op(inf.op),
          .s(inf.s),
          .in(inf.in),
          .clk(inf.clk),
          .rst(inf.rst));
initial begin
clk =0;
rst =1;
#20 
rst =0;
end

always #5 clk =~clk;
endmodule
