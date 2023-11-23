class transaction;
bit [3:0] in;
rand bit [1:0] s;
bit op;

function void display (input string name);
$display("---------------------------------------------");
$display("-%s",name);
$display("---------------------------------------------");
$display("-in=%b,s=%0d",in,s);
$display("op=%b",op);
$display("---------------------------------------------");
endfunction
endclass