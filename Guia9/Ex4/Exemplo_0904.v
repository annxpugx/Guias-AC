// ---------------------------
// -- test clock generator (1)
// ---------------------------
module clock ( output clk );
reg clk;
initial
begin
clk = 1'b1;
end
always
begin
#50 clk = ~clk;
end
endmodule // clock ( )
module Exemplo_0901;
wire clk;
clock CLK1 ( clk );
initial begin
$dumpfile ( "Exemplo_0901.vcd" );
$dumpvars;
#500 $finish;
end
endmodule // Exemplo_0901 ( )