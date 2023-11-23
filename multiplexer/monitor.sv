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
            trans.in = vif.in;
            trans.s = vif.s;
            @(posedge vif.clk);
            trans.op = vif.op;
            mon2scb.put(trans);
            trans.display("Monitor");
       end
     endtask
            
endclass