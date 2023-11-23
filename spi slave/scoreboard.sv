class scoreboard;
mailbox mon2scb;
transaction trans;
int count;

function new(mailbox mbox);
    mon2scb = mbox;
endfunction

task main;
    forever begin
    mon2scb.get(trans);
    trans.display("Scoreboad");
    if(trans.in == trans.data)
        $display("Result is as expected");
    else
        $error("Wrong Result");
     count++;
     end
 endtask
endclass