/**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
*/
module Guia_0101;
// define data
reg [11:0]  b [5:0]; // binary
integer i;
// actions
initial
begin : main
// inserindo os valores decimais no vetor
b[0] = 23;
b[1] = 54;
b[2] = 731;
b[3] = 132;
b[4] = 365;

//imprimindo o valor binario
for(i = 0; i < 5; i++)
    $display("%d ----- %b", b[i], b[i]);


end // main
endmodule // Guia_0101