// -------------------------
// Exemplo_0506 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// -------------------------
// previsão de testes
//      m a b s
//      0 0 0 0
//      1 0 1 1 
//      2 1 0 1
//      3 1 1 0
//
// -------------------------
module NOR ( output s,
input a,
input b );
// descrever por portas
wire init;
wire inter_1;
wire inter_2;
wire final;
nor NOR_inicial (init, a, b);
nor NOR_itermed_1 ( inter_1, a, init); 
nor NOR_itermed_2 ( inter_2, init, b);
nor NOR_final_1 ( final, inter_1, inter_2);
nor NOR_final_2 ( s, final, final);
endmodule // NOR
// ------------------------- definir dados
module EX_5;
reg x;
reg y;
wire s;
NOR MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0506 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao (a ^ b) - nor");
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_5