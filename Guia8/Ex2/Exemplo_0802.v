// -------------------------
// Exemplo_0802 - FULL SUBTRACTOR
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// PREVISAO DE TESTES
// 15 - 1  = 0 1110
// 15 - 2  = 0 1101
// 15 - 3  = 0 1100
// 15 - 4  = 0 1011
// 15 - 5  = 0 1010
// 15 - 6  = 0 1001
// 15 - 7  = 0 1000
// 15 - 8  = 0 0111
// 15 - 9  = 0 0110
// 15 - 10 = 0 0101
// 15 - 11 = 0 0100
// 15 - 12 = 0 0011
// 15 - 13 = 0 0010
// 15 - 14 = 0 0001
// 15 - 15 = 0 0000
// 10 - 15 = 1 1011
// -------------------------

module halfSubtractor (output borrowOut,
output diff,
input a,
input b);

wire notA;
// descrever por portas
xor XOR1 (diff, a, b);
not NOT1(notA, a);
and AND (borrowOut, notA, b);
endmodule 

module fullSubtractor ( output borrowOut,
output sum,
input a,
input b,
input borrowIn );

wire saidaXorAB;
wire saidaAnd1;
wire saidaAnd2;
wire saidaAnd3;
wire parcial;
// descrever por portas e/ou modulos

xor(saidaXorAB, a, b);
xor(sum, saidaXorAB, borrowIn);
and(saidaAnd1, b, borrowIn);
and(saidaAnd2, ~a, borrowIn);
and(saidaAnd3, ~a, b);
or(parcial, saidaAnd1, saidaAnd2);
or(borrowOut, parcial, saidaAnd3);

endmodule // fullSubtractor

module test_fullSubtractor;
// ------------------------- definir dados
reg [3:0] x;
reg [3:0] y;
wire [3:0] borrow; 
wire [4:0] soma;

fullSubtractor FS0 ( borrow[3], soma[3], x[3], y[3], 1'b0);
fullSubtractor FS1 ( borrow[2], soma[2], x[2], y[2], borrow[3]);
fullSubtractor FS2 ( borrow[1], soma[1], x[1], y[1], borrow[2]);
fullSubtractor FS3 ( borrow[0], soma[0], x[0], y[0], borrow[1]);
// ------------------------- parte principal
initial begin
$display("Exemplo0802 - Anna Puga - 694370");
$display("Test ALU’s full subtractor");

$monitor("%b%b%b%b - %b%b%b%b = %b %b%b%b%b", x[0], x[1], x[2], x[3], y[0], y[1], y[2], y[3], borrow[0], soma[0], soma[1], soma[2], soma[3]);

    x[0] = 1; y[0] = 0;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 0;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 0;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 0;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 1;

#1  x[0] = 1; y[0] = 1;  
    x[1] = 0; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 0; y[3] = 1;

end
endmodule // test_fullSubtractor