module SoP (output s, input x, y, w, z); // mintermos
// m 0 1 2 3 4
assign s = (~x & ~y & ~w & z) | (~x & ~y & w & ~z) | (~x & ~y & w & z) | (~x & y & ~w & z) | (~x & y & w & z) | (x & ~y & w & z);
endmodule // SoP

module e3;
reg x, y, w, z;
wire s;
// instancias
SoP SOP1 (s, x, y, w, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Soma de Produtos");
// monitoramento
$display(" x  y  w  z =  SoP( 1, 2, 3, 5, 7, 11 )");
$monitor("%2b %2b %2b %2b =  %2b", x, y, w, z, s);
// sinalizacao
#1 x=0; y=0; w=0; z=0;
#1 x=0; y=0; w=0; z=1;
#1 x=0; y=0; w=1; z=0;
#1 x=0; y=0; w=1; z=1;
#1 x=0; y=1; w=0; z=0;
#1 x=0; y=1; w=0; z=1;
#1 x=0; y=1; w=1; z=0;
#1 x=0; y=1; w=1; z=1;
#1 x=1; y=0; w=0; z=0;
#1 x=1; y=0; w=0; z=1;
#1 x=1; y=0; w=1; z=0;
#1 x=1; y=0; w=1; z=1;
#1 x=1; y=1; w=0; z=0;
#1 x=1; y=1; w=0; z=1;
#1 x=1; y=1; w=1; z=0;
#1 x=1; y=1; w=1; z=1;
end
endmodule // test_module