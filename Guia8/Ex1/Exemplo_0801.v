// -------------------------
// Exemplo_0801 - FULL ADDER
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// PREVISAO DE TESTES
//  0 + 1  = 00001
//  1 + 2  = 00011
//  2 + 3  = 00101
//  3 + 4  = 00111
//  4 + 5  = 01001
//  5 + 6  = 01011
//  6 + 7  = 01101
//  7 + 8  = 01111
//  8 + 9  = 10001
//  9 + 10 = 10011
// 10 + 11 = 10101
// 11 + 12 = 10111
// 12 + 13 = 11001
// 13 + 14 = 11011
// 14 + 15 = 11101
// -------------------------
// half adder
// -------------------------
module halfAdder (output carryOut,
output sum,
input a,
input b);
// descrever por portas
xor XOR1 (sum, a, b);
and AND (carryOut, a, b);
endmodule // halfAdder

module fullAdder ( output carryOut,
output sum,
input a,
input b,
input carryIn );

wire saidaXorAB;
wire saidaAnd1;
wire saidaAnd2;
wire saidaAnd3;
wire parcial;
// descrever por portas e/ou modulos

xor(saidaXorAB, a, b);
xor(sum, saidaXorAB, carryIn);
and(saidaAnd1, b, carryIn);
and(saidaAnd2, a, carryIn);
and(saidaAnd3, a, b);
or(parcial, saidaAnd1, saidaAnd2);
or(carryOut, parcial, saidaAnd3);

endmodule // fullAdder

module test_fullAdder;
// ------------------------- definir dados
reg [3:0] x;
reg [3:0] y;
wire [3:0] carry; // “vai-um”
wire [4:0] soma;
//halfAdder HA0 ( carry[0], soma[0], x[0], y[0] );
fullAdder FA0 ( carry[3], soma[3], x[3], y[3], 1'b0);
fullAdder FA1 ( carry[2], soma[2], x[2], y[2], carry[3]);
fullAdder FA2 ( carry[1], soma[1], x[1], y[1], carry[2]);
fullAdder FA3 ( carry[0], soma[0], x[0], y[0], carry[1]);
// ------------------------- parte principal
initial begin
$display("Exemplo0801 - Anna Puga - 694370");
$display("Test ALU’s full adder");

$monitor("%b%b%b%b + %b%b%b%b = %b%b%b%b%b", x[0], x[1], x[2], x[3], y[0], y[1], y[2], y[3], carry[0], soma[0], soma[1], soma[2], soma[3]);
// projetar testes do somador completo
    x[0] = 0; y[0] = 0;  
    x[1] = 0; y[1] = 0; 
    x[2] = 0; y[2] = 0; 
    x[3] = 0; y[3] = 1;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 0; y[1] = 0; 
    x[2] = 0; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 0; y[1] = 0; 
    x[2] = 1; y[2] = 1; 
    x[3] = 0; y[3] = 1;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 0; y[1] = 1; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 0; y[2] = 0; 
    x[3] = 0; y[3] = 1;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 0; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 0; y[3] = 1;

#1  x[0] = 0; y[0] = 1;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 0; y[1] = 0; 
    x[2] = 0; y[2] = 0; 
    x[3] = 0; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 0; y[1] = 0; 
    x[2] = 0; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 0; y[1] = 0; 
    x[2] = 1; y[2] = 1; 
    x[3] = 0; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 0; y[1] = 1; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 1; 
    x[2] = 0; y[2] = 0; 
    x[3] = 0; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 1; 
    x[2] = 0; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 0; y[3] = 1;

end
endmodule // test_fullAdder