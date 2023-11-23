`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 14:46:44
// Design Name: 
// Module Name: transacation
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


class transaction;
rand bit [3:0] a;
rand bit [3:0] b;
bit [6:0] c;

function void display (input string name);
$display("---------------------------------------------");
$display("-%s",name);
$display("---------------------------------------------");
$display("-a=%0d,b=%0d",a,b);
$display("c=%0d",c);
$display("---------------------------------------------");
endfunction
endclass
