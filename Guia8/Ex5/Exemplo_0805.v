// -------------------------
// Exemplo_0801 - FULL ADDER
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// PREVISAO DE TESTES
// 00000 -> 1 00000
// 00001 -> 0 11111
// 00010 -> 0 11110
// 00011 -> 0 11101
// 00100 -> 0 11100
// 00101 -> 0 11011
// 00110 -> 0 11010
// 00111 -> 0 11001
// 01000 -> 0 11000
// 01001 -> 0 10111
// 01010 -> 0 10110
// 01011 -> 0 10101
// 01100 -> 0 10100
// 01101 -> 0 10011
// 01110 -> 0 10010
// 01111 -> 0 10001
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

module complemento ( output carryOut,
output sum,
input a,
input b,
input carryIn );

wire not_a;
not(not_a, a);

wire saidaXorAB;
wire saidaAnd1;
wire saidaAnd2;
wire saidaAnd3;
wire parcial;
// descrever por portas e/ou modulos

xor(saidaXorAB, not_a, b);
xor(sum, saidaXorAB, carryIn);
and(saidaAnd1, b, carryIn);
and(saidaAnd2, not_a, carryIn);
and(saidaAnd3, not_a, b);
or(parcial, saidaAnd1, saidaAnd2);
or(carryOut, parcial, saidaAnd3);

endmodule // complemento

module test_complemento;
// ------------------------- definir dados
reg [4:0] x;
wire [4:0] carry; // “vai-um”
wire [4:0] soma;

complemento FA1 ( carry[4], soma[4], x[4], 1'b1, 1'b0);
complemento FA2 ( carry[3], soma[3], x[3], 1'b0, carry[4]);
complemento FA3 ( carry[2], soma[2], x[2], 1'b0, carry[3]);
complemento FA4 ( carry[1], soma[1], x[1], 1'b0, carry[2]);
complemento FA5 ( carry[0], soma[0], x[0], 1'b0, carry[1]);
// ------------------------- parte principal
initial begin
$display("Exemplo0801 - Anna Puga - 694370");
$display("Test ALU’s full adder");

$monitor("%b%b%b%b%b -> %b %b%b%b%b%b", x[0], x[1], x[2], x[3], x[4], carry[0], soma[0], soma[1], soma[2], soma[3], soma[4]);
// projetar testes do somador completo
    x[0] = 0; x[1] = 0; x[2] = 0; x[3] = 0; x[4] = 0;

#1  x[0] = 0; x[1] = 0; x[2] = 0; x[3] = 0; x[4] = 1;

#1  x[0] = 0; x[1] = 0; x[2] = 0; x[3] = 1; x[4] = 0;

#1  x[0] = 0; x[1] = 0; x[2] = 0; x[3] = 1; x[4] = 1;

#1  x[0] = 0; x[1] = 0; x[2] = 1; x[3] = 0; x[4] = 0;

#1  x[0] = 0; x[1] = 0; x[2] = 1; x[3] = 0; x[4] = 1;

#1  x[0] = 0; x[1] = 0; x[2] = 1; x[3] = 1; x[4] = 0;

#1  x[0] = 0; x[1] = 0; x[2] = 1; x[3] = 1; x[4] = 1;

#1  x[0] = 0; x[1] = 1; x[2] = 0; x[3] = 0; x[4] = 0;

#1  x[0] = 0; x[1] = 1; x[2] = 0; x[3] = 0; x[4] = 1;

#1  x[0] = 0; x[1] = 1; x[2] = 0; x[3] = 1; x[4] = 0;

#1  x[0] = 0; x[1] = 1; x[2] = 0; x[3] = 1; x[4] = 1;

#1  x[0] = 0; x[1] = 1; x[2] = 1; x[3] = 0; x[4] = 0;

#1  x[0] = 0; x[1] = 1; x[2] = 1; x[3] = 0; x[4] = 1;

#1  x[0] = 0; x[1] = 1; x[2] = 1; x[3] = 1; x[4] = 0;

#1  x[0] = 0; x[1] = 1; x[2] = 1; x[3] = 1; x[4] = 1;

end
endmodule // test_complemento