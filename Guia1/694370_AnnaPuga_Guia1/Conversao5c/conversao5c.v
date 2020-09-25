/**
    Arquitetura de Computadores I - Guia_01.
    Nome: Anna Puga Campos Rodrigues; Matricula: 694370
*/
module Guia_0105;
// define data
reg [0:8][7:0] s = "PUC-Minas"; // 3 characters (8 bits)
// actions
initial
begin : main
$display ( "s = [%2x] [%2x] [%2x] [%2x] [%2x] [%2x] [%2x] [%2x] [%2x]" , s[0], s[1], s[2], s[3], s[4], s[5], s[6], s[7], s[8] );
s = "2020-2";
$display ( "s = [%2x] [%2x] [%2x] [%2x] [%2x] [%2x]" , s[3], s[4], s[5], s[6], s[7], s[8] );
s = "Brasil";
$display ( "s = [%b] [%8b] [%8b] [%8b] [%8b] [%8b]" , s[3], s[4], s[5], s[6], s[7], s[8] );
s[0] = 12'o116;
s[1] = 12'o157;
s[2] = 12'o151;
s[3] = 12'o164;
s[4] = 12'o145;
$display ( "s = %s%s%s%s%s" , s[0], s[1], s[2], s[3], s[4] );
s[0] = 12'h42;
s[1] = 12'h2e;
s[2] = 12'h48;
s[3] = 12'h2e;
s[4] = 12'h2d;
s[5] = 12'h4d;
s[6] = 12'h47;
$display ( "s = %s%s%s%s%s%s%s" , s[0], s[1], s[2], s[3], s[4], s[5], s[6] );
end // main
endmodule // Guia_0105