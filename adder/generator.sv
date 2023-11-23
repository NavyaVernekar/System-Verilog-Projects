`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 14:51:17
// Design Name: 
// Module Name: generator
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


class generator ;
rand transaction trans;
mailbox gen2dri;
int count;
event end_gen;

function new(mailbox mbox);
gen2dri = mbox;
endfunction

task main;
repeat(count) begin
trans = new;
if(!trans.randomize() ) $fatal("gen:: trans randomization failed");
gen2dri.put(trans);
trans.display("Generator");
end
->end_gen;
endtask

endclass
