interface intf(input clk,rst);
logic [3:0] a,b;
logic [6:0] c;
logic valid;

modport driver (input a, input b);
modport monitor ( output a,output b, output c);
endinterface