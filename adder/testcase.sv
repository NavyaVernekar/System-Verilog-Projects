`include "environment.sv"
program testcase(intf intf_inst);
environment env;

initial begin
env = new(intf_inst);
env.gen.count = 10;
env.run;
end

endprogram