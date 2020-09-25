// -------------------------
// Exemplo_0505 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// -------------------------
// previsão de testes
//      m a b s
//      0 0 0 0
//      1 0 1 1 
//      2 1 0 1
//      3 1 1 1
//
// -------------------------
module NAND ( output s,
input a,
input b );
// descrever por portas
wire nand3;
wire nand2;
nand NAND3 ( nand3, a, a );
nand NAND2 ( nand2, b, b);
nand NAND1 ( s, nand3, nand2);
endmodule // NAND
// ------------------------- definir dados
module EX_4;
reg x;
reg y;
wire s;
NAND MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0505 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao (a | b) - nand");
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_4