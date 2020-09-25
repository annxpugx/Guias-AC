// -------------------------
// Exemplo_0503 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// -------------------------
// previsão de testes
//      m a b s
//      0 0 0 0
//      1 0 1 0 
//      2 1 0 0
//      3 1 1 1
//
// -------------------------
module NAND ( output s,
input a,
input b );
wire nand_2;
// descrever por portas
nand NAND1 ( nand_2, a, b );
nand NAND2 ( s, nand_2, nand_2 );
endmodule // NAND
// ------------------------- definir dados
module EX_2;
reg x;
reg y;
wire s;
NAND MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0503 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao (a & b) - nand");
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_2