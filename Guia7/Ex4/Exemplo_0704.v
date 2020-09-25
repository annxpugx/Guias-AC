// -------------------------
// Exemplo_0704 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// Previsão de testes:
// a b s1  r
// 0 0 00  0
// 0 0 01  1
// 0 0 10  0
// 0 0 11  1
// 0 1 00  1
// 0 1 01  0
// 0 1 10  1
// 0 1 11  0
// 1 0 00  1
// 1 0 01  0
// 1 0 10  1
// 1 0 11  0
// 1 1 00  1
// 1 1 01  0
// 1 1 10  0
// 1 1 11  1
// -------------------------
// multiplexer
// -------------------------
module mux (output r,
input a,
input b,
input select1, select2);
// definir dados locais
wire ra;
wire rb;
wire rc;
wire rd;

// descrever por portas
or(ra, a, b);
nor(rb, a, b);
xor(rc, a, b);
xnor(rd, a, b);

assign r = (select1 && select2)? rd : (select2)? rb : (select1)? rc : ra;

endmodule // mux

module test_f7;
// ------------------------- definir dados
reg a;
reg b;
reg s1;
reg s2;
wire r;
mux MUX1( r, a, b, s1, s2);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0704 - Anna Puga - 694370");
$display(" a  b  s   resp");

#1$monitor("%2b %2b  %b%b %3b", a, b, s1, s2, r);

 
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