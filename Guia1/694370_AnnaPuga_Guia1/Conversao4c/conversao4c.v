/*
Guia_0104
*/
/**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
*/
module Guia_0104;
// define data
integer i; // decimal
reg [7:0] b[5:0]; // binary
// actions
initial
begin : main


b[0] = 8'b00010111;
b[1] = 8'b00010011;
b[2] = 8'b00101101;
b[3] = 8'b00100101;
b[4] = 8'b00101111;

for(i = 0; i < 5; i++)
    $display("%12B (2) = %o (8) = %x (16) = %d%d%d%d(4) ", b[i], b[i], b[i], b[i][7:6], b[i][5:4], b[i][3:2], b[i][1:0]);

end // main
endmodule // Guia_0103