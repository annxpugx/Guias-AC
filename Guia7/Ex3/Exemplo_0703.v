// -------------------------
// Exemplo_0703 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// Previsão de testes:
// a b s1 s2 r
// 0 0  0 0  0
// 0 0  0 1  0
// 0 0  1 0  1
// 0 0  1 1  1
// 0 1  0 0  0
// 0 1  0 1  1
// 0 1  1 0  1
// 0 1  1 1  0
// 1 0  0 0  0
// 1 0  0 1  1
// 1 0  1 0  1
// 1 0  1 1  0
// 1 1  0 0  1
// 1 1  0 1  1
// 1 1  1 0  0
// 1 1  1 1  0
// -------------------------
// multiplexer
// -------------------------
module mux (output r,
input a,
input b,
input select1, 
input select2);
// definir dados locais
wire ra;
wire rb;
wire rc;
wire rd;
wire r0;
wire r1;

// descrever por portas
and(ra, a, b);
nand(rb, a, b);

assign r0 = (select1)? rb : ra;

or(rc, a, b);
nor(rd, a, b);

assign r1 = (select1)? rd : rc;

assign r = (select2)? r1 : r0;
endmodule // mux

module test_f7;
// ------------------------- definir dados
reg a;
reg b;
reg s1;
reg s2;
wire r;
mux MUX1( r, a, b, s1, s2 );
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0703 - Anna Puga - 694370");
$display(" a  b  s1 s2  resp");

#1$monitor("%2b %2b %2b %2b %3b", a, b, s1, s2, r);

 
    a = 1'b0; b = 1'b0; s1 = 1'b0; s2 = 1'b0;
#1                                 s2 = 1'b1;          
#1                      s1 = 1'b1; s2 = 1'b0;
#1                                 s2 = 1'b1;          
#1 a = 1'b0; b = 1'b1;  s1 = 1'b0; s2 = 1'b0;
#1                                 s2 = 1'b1;
#1                      s1 = 1'b1; s2 = 1'b0;         
#1                                 s2 = 1'b1;
#1 a = 1'b1; b = 1'b0;  s1 = 1'b0; s2 = 1'b0;          
#1                                 s2 = 1'b1;
#1                      s1 = 1'b1; s2 = 1'b0;          
#1                                 s2 = 1'b1;
#1 a = 1'b1; b = 1'b1;  s1 = 1'b0; s2 = 1'b0;
#1                                 s2 = 1'b1;          
#1                      s1 = 1'b1; s2 = 1'b0;
#1                                 s2 = 1'b1;                   
// projetar testes do modulo
end
endmodule // test_f7