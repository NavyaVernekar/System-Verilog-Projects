class transaction;
rand bit [15:0] in;
bit [15:0] data;

function void display (input string name);
$display("---------------------------------------------");
$display("-%s",name);
$display("---------------------------------------------");
$display("in=%0b",in);
$display("data=%0b",data);
$display("---------------------------------------------");
endfunction
endclass