module fxyz (output s,
input x, y, z);
assign s = z & ~(x & y); //( x . y )' . z
endmodule // fxyz

module d1;
reg x, y, z;
wire s;
// instancias
fxyz FXY (s, x, y, z);
// valores iniciais
initial begin: start
x=1'bx; y=1'bx; z=1'bx;// indefinidos
end
// parte principal
initial begin: main
// identificacao
$display("Test boolean expression");
$display("\n s = ( x . y )' . z\n");
// monitoramento
$display(" x  y  z =  resposta ");
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