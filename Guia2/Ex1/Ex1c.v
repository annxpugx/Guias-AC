module Guia_0201;
// define data
real x = 0 ; // decimal
real power2 = 1.0; // power of 2
integer y = 7 ; // counter
integer i = 0;
reg [7:0] b [0:4]; 
 // binary (only fraction part, Big Endian)
// actions
initial
begin : main

b[0] = 8'b11011000;
b[1] = 8'b01110000;
b[2] = 8'b01001000;
b[3] = 8'b01011000;
b[4] = 8'b10010000;

while (i <= 4)
begin
x = 0;
power2 = 1;
y = 7;
    while(y >= 0)
    begin
    power2 = power2 / 2.0;
    if ( b[i][y] == 1 )
        begin
            x = x + power2;
            $display ( "x = %f", x );
        end
    y = y-1;
    end
    $display ( "FIM" );
    i = i+1;
end // end while
end // main
endmodule // Guia_0201