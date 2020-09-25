// -------------------------
// Exemplo_0804 - Comparador de desigualdade
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// PREVISAO DE TESTES
// 15 != 3  ? 1 
// 15 != 5  ? 1
// 15 != 15 ? 0


module comparadorIgualdade ( output resp,
input a1, a2, a3, a4, a5,
input b1, b2, b3, b4, b5);

wire xor1;
wire xor2;
wire xor3;
wire xor4;
wire xor5;

xor(xor1, a1, b1);
xor(xor2, a2, b2);
xor(xor3, a3, b3);
xor(xor4, a4, b4);
xor(xor5, a5, b5);

or(resp, xor1, xor2, xor3, xor4, xor5);


endmodule

module test_comparador;
// ------------------------- definir dados
reg [4:0] x;
reg [4:0] y;
wire resp;

comparadorIgualdade COMP(resp, x[0], x[1], x[2], x[3], x[4], y[0], y[1], y[2], y[3], y[4]);
// ------------------------- parte principal
initial begin
$display("Exemplo0804 - Anna Puga - 694370");
$display("Comparador de desigualdade");

$monitor("%b%b%b%b%b != %b%b%b%b%b ?  %b ( 0 = false / 1 = true )", x[0], x[1], x[2], x[3] ,x[4], y[0], y[1], y[2], y[3], y[4], resp);

    x[0] = 0; y[0] = 0;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 0; 
    x[3] = 1; y[3] = 1;
    x[4] = 1; y[4] = 1;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 1; y[1] = 0; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 0;
    x[4] = 1; y[4] = 1;

#1  x[0] = 0; y[0] = 0;  
    x[1] = 1; y[1] = 1; 
    x[2] = 1; y[2] = 1; 
    x[3] = 1; y[3] = 1;
    x[4] = 1; y[4] = 1;
end
endmodule 