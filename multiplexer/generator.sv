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