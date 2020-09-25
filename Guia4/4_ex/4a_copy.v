module PoS (output S, input P, Q); // MAPTERMQS
// M 5 6 7
assign S = (~P & Q)|(P & Q);
endmodule // PoS

module a4;
reg P, Q;
wire S;
// instancias
PoS POS1(S, P, Q);
// valores iniciais
initial begin: start
P=1'bx; Q=1'bx;// Qndefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Produto da Soma");
// monitoramento
$display(" P  Q  PoS( 1, 2, 3, 7 ) ");
$monitor("%2b %2b =  %2b", P, Q, S);
// sinalizacao
#1 P=0; Q=0;
#1 P=0; Q=1;
#1 P=1; Q=0;
#1 P=1; Q=1;

end
endmodule // test_module