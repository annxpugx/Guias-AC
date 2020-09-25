// -------------------------
// Exemplo_0705 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// Previsão de testes:
// a b  s   r
// 0 0 000  1
// 0 0 001  1 
// 0 0 010  0
// 0 0 011  1
// 0 0 100  0
// 0 0 101  1
// 0 0 110  0
// 0 0 111  1
// 0 1 000  1
// 0 1 001  0
// 0 1 010  1
// 0 1 011  0
// 0 1 100  0
// 0 1 101  1
// 0 1 110  1
// 0 1 111  0
// 1 0 000  0
// 1 0 001  1
// 1 0 010  1
// 1 0 011  0
// 1 0 100  0 
// 1 0 101  1
// 1 0 110  1
// 1 0 111  0
// 1 1 000  0
// 1 1 001  0
// 1 1 010  1
// 1 1 011  0
// 1 1 100  1
// 1 1 101  0
// 1 1 110  0
// 1 1 111  1 
// -------------------------
// multiplexer
// -------------------------
module mux (output r,
input a,
input b,
input select1, select2, select3);
// definir dados locais
wire ra;
wire rb;
wire rc;
wire rd;
wire re;
wire rf;
wire rg;
wire rh;

// descrever por portas
not(ra, a);
not(rb, b);
or(rc, a, b);
nor(rd, a, b);
and(re, a, b);
nand(rf, a, b);
xor(rg, a, b);
xnor(rh, a, b);

assign r = (select1)? ((select2)? ((select3)? rh : rg) : ((select3)?  rf : re)) : ((select2)? ((select3)? rd : rc) : ((select3)?  rb : ra));
endmodule // mux

module test_f7;
// ------------------------- definir dados
reg a;
reg b;
reg s1;
reg s2;
reg s3;
wire r;
mux MUX1( r, a, b, s1, s2, s3);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0705 - Anna Puga - 694370");
$display(" a  b   s  resp");

#1$monitor("%2b %2b  %b%b%b %3b", a, b, s1, s2, s3, r);

 
    a = 1'b0; b = 1'b0; s1 = 1'b0; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;         
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1;  
#1                      s1 = 1'b1; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;           
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1;

#1  a = 1'b0; b = 1'b1; s1 = 1'b0; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;         
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1;  
#1                      s1 = 1'b1; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;           
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1;

#1  a = 1'b1; b = 1'b0; s1 = 1'b0; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;         
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1;  
#1                      s1 = 1'b1; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;           
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1;

#1  a = 1'b1; b = 1'b1; s1 = 1'b0; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;         
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1;  
#1                      s1 = 1'b1; s2 = 1'b0; s3 = 1'b0;
#1                                            s3 = 1'b1;           
#1                                 s2 = 1'b1; s3 = 1'b0;
#1                                            s3 = 1'b1; 
// projetar testes do modulo
end
endmodule // test_f7