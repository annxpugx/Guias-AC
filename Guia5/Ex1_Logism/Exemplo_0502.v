// -------------------------
// Exemplo_0502 - GATES
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
module NOR ( output s,
input a,
input b );
// descrever por portas
wire nor_2;
nor NOR1 ( nor_2, a, b ); 
nor NOR2 ( s , nor_2, nor_2);
endmodule // NOR
// ------------------------- definir dados
module EX_1;
reg x;
reg y;
wire s;
NOR MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0502 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao (a | b) - nor");
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_1