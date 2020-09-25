/**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
*/
/*
Guia_0103
*/
module Guia_0103;
// define data
integer i; // decimal
reg [11:0] b[5:0]; // binary
// actions
initial
begin : main
b[0] = 23;
b[1] = 54;
b[2] = 731;
b[3] = 132;
b[4] = 365;

for(i = 0; i < 5; i++)
    $display("d = %d (10) = %12B (2) = %o (8) = %x (16)", b[i], b[i], b[i], b[i]);

end // main
endmodule // Guia_0103