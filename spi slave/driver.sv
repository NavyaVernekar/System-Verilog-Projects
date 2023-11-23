class driver;
    virtual intf vif;
    transaction trans;
    mailbox gen2dri;
    int count;
    int i;
       
    function new(virtual intf vif,mailbox mbox);
    this.vif = vif;
    gen2dri = mbox;
    endfunction
    
    task reset;
    wait(vif.rst);
    $display ("DRIVER Reset started");
    vif.mosi <= 0;
    vif.data <= 0;
    vif.cs <= 1;
    wait(!vif.rst);
    $display ("DRIVER Reset ended");
    endtask
    
    task main;
    forever begin
    gen2dri.get(trans);
    @(posedge vif.sclk);
    vif.cs <= 0;
    repeat(16) begin
        @(posedge vif.sclk);
         vif.mosi = trans.in[i];
         i ++;
    end
    i=0;
    trans.display("Driver");
    vif.cs <= 1;
    count ++;
    end
    endtask
    
endclass