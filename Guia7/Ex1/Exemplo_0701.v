// -------------------------
// Exemplo_0701 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// Previsão de testes:
//  a  b  and nand
//  0  0   0   1
//  0  1   0   1
//  1  0   0   1
//  1  1   1   0
// -------------------------
// multiplexer
// -------------------------
module paralela ( output ra, output rb,
input a,
input b);
// definir dados locais
// descrever por portas
and(ra, a, b);
nand(rb, a, b);

endmodule // mux

module test_f7;
// ------------------------- definir dados
reg a;
reg b;
wire ra; 
wire rb;
paralela par ( ra, rb, a, b);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0701 - Anna Puga - 694370");
$display(" a  b  and nand");

#1 $monitor("%2b %2b %3b %3b", a, b, ra, rb);

   a = 1'b0; b = 1'b0;
#1 a = 1'b0; b = 1'b1;
#1 a = 1'b1; b = 1'b0;
#1 a = 1'b1; b = 1'b1;


// projetar testes do modulo
end
endmodule // test_f7