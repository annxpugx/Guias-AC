// -------------------------
// Exemplo_0803 - Comparador de Igualdade
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// PREVISAO DE TESTES
// 15 = 3  ? 0 
// 15 = 5  ? 0
// 15 = 15 ? 1


module comparadorIgualdade ( output resp,
input a1, a2, a3, a4, a5,
input b1, b2, b3, b4, b5);

wire xnor1;
wire xnor2;
wire xnor3;
wire xnor4;
wire xnor5;

xnor(xnor1, a1, b1);
xnor(xnor2, a2, b2);
xnor(xnor3, a3, b3);
xnor(xnor4, a4, b4);
xnor(xnor5, a5, b5);

and(resp, xnor1, xnor2, xnor3, xnor4, xnor5);


endmodule

module test_comparador;
// ------------------------- definir dados
reg [4:0] x;
reg [4:0] y;
wire resp;

comparadorIgualdade COMP(resp, x[0], x[1], x[2], x[3], x[4], y[0], y[1], y[2], y[3], y[4]);
// ------------------------- parte principal
initial begin
$display("Exemplo0803 - Anna Puga - 694370");
$display("Comparador de igualdade");

$monitor("%b%b%b%b%b = %b%b%b%b%b ?  %b ( 0 = false / 1 = true )", x[0], x[1], x[2], x[3] ,x[4], y[0], y[1], y[2], y[3], y[4], resp);

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