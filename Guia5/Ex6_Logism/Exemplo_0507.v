// -------------------------
// Exemplo_0507 - GATES
// Nome: Anna Puga Campos Rodrigues
// Matricula: 694370
// -------------------------
// -------------------------
// previsão de testes
//      m a b s
//      0 0 0 1
//      1 0 1 0 
//      2 1 0 0
//      3 1 1 1
//
// -------------------------
module NAND ( output s,
input a,
input b );
// descrever por portas
wire init;
wire inter_1;
wire inter_2;
wire final;
nand nand_inicial (init, a, b);
nand nand_itermed_1 ( inter_1, a, init); 
nand nand_itermed_2 ( inter_2, init, b);
nand nand_final_1 ( final, inter_1, inter_2);
nand nand_final_2 ( s, final, final);
endmodule // NAND
// ------------------------- definir dados
module EX_6;
reg x;
reg y;
wire s;
NAND MODULO1 (s, x, y);
// ------------------------- parte principal
initial
begin : main
$display("Exemplo_0507 - Anna Puga Campos Rodrigues - 694370");
$display("proposicao ~(a ^ b) - nand");
$display("   x    y    resposta");
// projetar testes do modulo
$monitor("%4b %4b %7b ", x, y, s);
   x = 1'b0; y = 1'b0;
#1 x = 1'b0; y = 1'b1;
#1 x = 1'b1; y = 1'b0;
#1 x = 1'b1; y = 1'b1;
end
endmodule // EX_6