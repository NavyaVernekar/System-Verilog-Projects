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
            @(posedge vif.sclk);
            wait(!vif.cs);
            wait(vif.cs);
            trans.in = vif.data;
            trans.data = vif.data;
            trans.display("monitor");
            mon2scb.put(trans);
       end
     endtask
            
endclass