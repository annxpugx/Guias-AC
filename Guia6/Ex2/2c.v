module PoS (output S1, output S2, input X, Y, Z); // MAXTERMOS
// M 5 6 7
assign S1 = (X|Y|~Z) & (X|~Y|~Z) & (~X|Y|Z) & (~X|Y|~Z);
assign S2 = (X | ~Z) & (~X | Y);
endmodule // PoS

module c2;
reg X, Y, Z;
wire S1, S2;
// instancias
PoS POS1(S1, S2, X, Y, Z);
// valores iniciais
initial begin: start
X=1'bx; Y=1'bx; Z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Produto da Soma");
// monitoramento
$display(" X  Y  Z =   nao_simpl  simpl ");
$monitor("%2b %2b %2b =\t%2b \t %2b", X, Y, Z, S1, S2);
// sinalizacao
#1 X=0; Y=0; Z =0;
#1 X=0; Y=0; Z =1;
#1 X=0; Y=1; Z =0;
#1 X=0; Y=1; Z =1;
#1 X=1; Y=0; Z =0;
#1 X=1; Y=0; Z =1;
#1 X=1; Y=1; Z =0;
#1 X=1; Y=1; Z =1;
end
endmodule // test_module