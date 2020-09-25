module SoP (output s, input x, y, z); // mintermos
// m 0 1 2 3 4
assign s = (~x & ~y & z) | (~x & y & z) | (x & ~y & ~z) | (x & y & z);
endmodule // SoP

module b3;
reg x, y, z;
wire s;
// instancias
SoP SOP1 (s, x, y, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Soma de Produtos");
// monitoramento
$display(" x  y  z =  SoP(1,3,4,7) ");
$monitor("%2b %2b %2b =  %2b", x, y, z, s);
// sinalizacao
#1 x=0; y=0; z=0;
#1 x=0; y=0; z=1;
#1 x=0; y=1; z=0;
#1 x=0; y=1; z=1;
#1 x=1; y=0; z=0;
#1 x=1; y=0; z=1;
#1 x=1; y=1; z=0;
#1 x=1; y=1; z=1;
end
endmodule // test_module