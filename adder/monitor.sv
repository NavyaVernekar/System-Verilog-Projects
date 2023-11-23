`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2023 14:25:18
// Design Name: 
// Module Name: monitor
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


class monitor;
    transaction trans;
    mailbox mon2scb;
    virtual intf vif;
    
    function new(virtual intf vif,mailbox mbox);
        mon2scb = mbox;
        this.vif = vif;
     endfunction
     
     task main;
        forever begin
            trans = new;
            @(posedge vif.clk);
            wait(vif.valid);
            trans.a = vif.a;
            trans.b = vif.b;
            @(posedge vif.clk);
            trans.c = vif.c;
            @(posedge vif.clk);
            mon2scb.put(trans);
            trans.display("Monitor");
       end
     endtask
            
endclass
