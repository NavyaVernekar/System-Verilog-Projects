`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 15:36:23
// Design Name: 
// Module Name: driver
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


class driver;
    virtual intf vif;
    transaction trans;
    mailbox gen2dri;
    int count;
       
    function new(virtual intf vif,mailbox mbox);
    this.vif = vif;
    gen2dri = mbox;
    endfunction
    
    task reset;
    wait(vif.rst);
    $display ("DRIVER Reset started");
    vif.a <= 0;
    vif.b <= 0;
    vif.valid <= 0;
    wait(!vif.rst);
    $display ("DRIVER Reset ended");
    endtask
    
    task main;
    forever begin
    gen2dri.get(trans);
    @(posedge vif.clk);
    vif.valid = 1;
    vif.a <= trans.a;
    vif.b <= trans.b;
    @(posedge vif.clk);
    vif.valid <= 0;
    @(posedge vif.clk);
    trans.display("Driver");
    count ++;
    end
    endtask
    
    
    
endclass
