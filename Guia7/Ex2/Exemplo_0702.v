// -------------------------
// Exemplo_0702 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// Previsão de testes:
// a b s r
// 0 0 0 0
// 0 0 1 1
// 0 1 0 1
// 0 1 1 0
// 1 0 0 1
// 1 0 1 0
// 1 1 0 1
// 1 1 1 0
// -------------------------
// multiplexer
// -------------------------
module mux ( output r,
input a,
input b,
input select );
// definir dados locais
wire r0;
wire r1;
// descrever por portas
or(r0, a, b);
nor(r1, a, b);

assign r = (select) ? r1 : r0;
endmodule // mux

module test_f7;
// ------------------------- definir dados
reg a;
reg b;
reg s;
wire r;
mux MUX1 ( r, a, b, s );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0702 - Anna Puga - 694370");
$display(" a  b  s  resp");

#1 $monitor("%2b %2b %2b %3b", a, b, s, r);

a = 1'b0; b = 1'b0; s = 1'b0;
#1 s = 1'b1;
#1 a = 1'b0; b = 1'b1; s = 1'b0;
#1 s = 1'b1;
#1 a = 1'b1; b = 1'b0; s = 1'b0;
#1 s = 1'b1;
#1 a = 1'b1; b = 1'b1; s = 1'b0;
#1 s = 1'b1;

// projetar testes do modulo
end
endmodule // test_f7