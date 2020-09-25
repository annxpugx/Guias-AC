/**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
*/
module Guia_0102;
// define data
integer i = 0; // decimal
reg [11:0] b [5:0]; // binary (bits) 
// actions
initial
begin : main

// inserindo os valores em binario no vetor
b[0] = 12'b00010111;
b[1] = 12'b00110110;
b[2] = 12'b001011011011;
b[3] = 12'b10000100;
b[4] = 12'b000101101101;

//imprimindo o valor decimal
for(i = 0; i < 5; i++)
    $display("%12b ----- %d", b[i], b[i]);

end // main
endmodule // Guia_0102