module PoS (output S1, output S2, input X, Y, W, Z); // MAXTERMOS
// M 5 6 7
assign S1 = (X|~Y|W|Z) & (~X|Y|W|Z) & (~X|Y|W|~Z) & (~X|~Y|W|Z) & (~X|~Y|W|~Z);
assign S2 = W | ((~Y | Z) & ~X); 
endmodule // PoS

module b4;
reg X, Y, W, Z;
wire S1, S2;
// instancias
PoS POS1(S1, S2, X, Y, W, Z);
// valores iniciais
initial begin: start
X=1'bx; Y=1'bx; Z=1'bx; W=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Produto da Soma");
// monitoramento
$display(" X  Y  W  Z =   nao_simpl\tsimpl");
$monitor("%2b %2b %2b %2b = \t  %2b  \t\t%2b", X, Y, W, Z, S1, S2);
// sinalizacao
#1 X=0; Y=0; W=0; Z=0;
#1 X=0; Y=0; W=0; Z=1;
#1 X=0; Y=0; W=1; Z=0;
#1 X=0; Y=0; W=1; Z=1;
#1 X=0; Y=1; W=0; Z=0;
#1 X=0; Y=1; W=0; Z=1;
#1 X=0; Y=1; W=1; Z=0;
#1 X=0; Y=1; W=1; Z=1;
#1 X=1; Y=0; W=0; Z=0;
#1 X=1; Y=0; W=0; Z=1;
#1 X=1; Y=0; W=1; Z=0;
#1 X=1; Y=0; W=1; Z=1;
#1 X=1; Y=1; W=0; Z=0;
#1 X=1; Y=1; W=0; Z=1;
#1 X=1; Y=1; W=1; Z=0;
#1 X=1; Y=1; W=1; Z=1;
end
endmodule // test_module