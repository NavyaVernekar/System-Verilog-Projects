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
    vif.in <= 4'd0;
    vif.s <= 2'd0;
    wait(!vif.rst);
    $display ("DRIVER Reset ended");
    endtask
    
    task main;
    forever begin
    gen2dri.get(trans);
    vif.in = 4'b1011;;
    @(posedge vif.clk);
    vif.s <= trans.s;
    @(posedge vif.clk);
    trans.display("Driver");
    count ++;
    end
    endtask
    
    
    
endclass