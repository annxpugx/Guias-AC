module fxyz (output s1, output s2, input x, y, z);
assign s1 = (x|y) | (x & ~y); // ( x + y ) + ( x . y' )
assign s2 = x | (y & 1); //x + (y . 1)
endmodule // fxyz

module b2;
reg x, y, z;
wire s1, s2;
// instancias
fxyz FXY (s1, s2, x, y, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Test boolean expression");
$display("\n s1 = ( x + y ) + ( x . y' ) --- s2 = x + (y . 1)\n");
// monitoramento
$display(" x  y  z =   nao_simpl  simpl");
$monitor("%2b %2b %2b =\t%2b \t %2b", x, y, z, s1, s2);
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