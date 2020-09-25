// -------------------------
// Exemplo_0509 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// -------------------------
// previsão de testes
//      m a b s
//      0 0 0 1
//      1 0 1 1 
//      2 1 0 1
//      3 1 1 0
//
// -------------------------
module NAND ( output s,
input a,
input b );
// descrever por portas
nand NAND1 ( s, a, b);
endmodule // NAND
// ------------------------- definir dados
module EX_8;
reg x;
reg y;
wire s;
NAND MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0508 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao (~a | ~b) - nand"); //(~a | ~b) = ~(a & b)
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_8