module PoS (output S, input X, Y, Z); // MAXTERMOS
// M 5 6 7
assign S = (X|Y|~Z) & (X|~Y|Z) & (X|~Y|~Z) & (~X|~Y|~Z);
endmodule // PoS

module a4;
reg X, Y, Z;
wire S;
// instancias
PoS POS1(S, X, Y, Z);
// valores iniciais
initial begin: start
X=1'bx; Y=1'bx; Z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Produto da Soma");
// monitoramento
$display(" X  Y  Z = PoS( 1, 2, 3, 7 ) ");
$monitor("%2b %2b %2b =  %2b", X, Y, Z, S);
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