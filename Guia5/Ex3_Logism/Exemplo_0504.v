// -------------------------
// Exemplo_0504 - GATES
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
module NOR ( output s,
input a,
input b );
// descrever por portas
wire nor3;
wire nor2;
nor NOR3 ( nor3, a, a );
nor NOR2 ( nor2, b, b);
nor NOR1 ( s, nor3, nor2);
endmodule // NOR
// ------------------------- definir dados
module EX_3;
reg x;
reg y;
wire s;
NOR MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0504 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao (a & b) - nor");
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_3