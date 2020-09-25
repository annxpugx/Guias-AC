// -------------------------
// Exemplo_0508 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// -------------------------
// previsão de testes
//      m a b s
//      0 0 0 1
//      1 0 1 0
//      2 1 0 1
//      3 1 1 1
//
// -------------------------
module NOR ( output s,
input a,
input b );
// descrever por portas
wire nor_2, nor_1;
nor NOR1 ( nor_2, b, b ); 
nor NOR2 ( nor_1 , a, nor_2);
nor NOR2 ( s , nor_1, nor_1);
endmodule // NOR
// ------------------------- definir dados
module EX_7;
reg x;
reg y;
wire s;
NOR MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0508 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao (a | ~b) - nor");
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_7