module PoS (output S, input X , Y, W, Z); // MAXTERMOS
// M 5 6 7
assign S = (X|Y|W|Z) & (X|Y|W|~Z) & (X|Y|~W|Z) & (X|~Y|W|Z) & (X|~Y|~W|~Z)& (~X|~Y|W|Z) & (~X|~Y|~W|~Z);
endmodule // PoS

module e4;
reg X, Y, W, Z;
wire S;
// instancias
PoS POS1(S, X, Y, W, Z);
// valores iniciais
initial begin: start
X=1'bx; Y=1'bx; W = 1'bx; Z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Produto da Soma");
// monitoramento
$display(" X  Y  W  Z = PoS( 0, 1, 2, 4, 7, 12, 15 )");
$monitor("%2b %2b %2b %2b =  %2b", X , Y, W, Z, S);
// sinalizacao
#1 X = 0; Y=0; W=0; Z =0;
#1 X = 0; Y=0; W=0; Z =1;
#1 X = 0; Y=0; W=1; Z =0;
#1 X = 0; Y=0; W=1; Z =1;
#1 X = 0; Y=1; W=0; Z =0;
#1 X = 0; Y=1; W=0; Z =1;
#1 X = 0; Y=1; W=1; Z =0;
#1 X = 0; Y=1; W=1; Z =1;
#1 X = 1; Y=0; W=0; Z =0;
#1 X = 1; Y=0; W=0; Z =1;
#1 X = 1; Y=0; W=1; Z =0;
#1 X = 1; Y=0; W=1; Z =1;
#1 X = 1; Y=1; W=0; Z =0;
#1 X = 1; Y=1; W=0; Z =1;
#1 X = 1; Y=1; W=1; Z =0;
#1 X = 1; Y=1; W=1; Z =1;
end
endmodule // test_module