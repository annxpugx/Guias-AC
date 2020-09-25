module fxyz (output s1, output s2, input x, y, w, z);
assign s1 = (~x & ~y & ~w & ~z) | (~x & ~y & ~w & z) | (~x & ~y & w & ~z) | (~x & ~y & w & z) | (~x & y & ~w & z) | (x & ~y & ~w & ~z) | (x & ~y & w & ~z) | (x & y & ~w & ~z); //x'.y'.z' + x'.y.z' + x.y.z'
assign s2 = (~x & ~y) | ~w & ((~x & z) | (x & ~z)) | (~y & ~z & x) ;
endmodule // fxyz

module c3;
reg x, y, w, z;
wire s1, s2;
// instancias
fxyz FXY (s1, s2, x, y, w, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; w=1'bx; z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Test boolean expression");
// monitoramento
$display(" x  y  w  z =   nao_simpl\tsimpl");
$monitor("%2b %2b %2b %2b = \t  %2b  \t\t%2b", x, y, w, z, s1, s2);
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