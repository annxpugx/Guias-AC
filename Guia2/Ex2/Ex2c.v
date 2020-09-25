/*
Guia_0202
*/
module Guia_0202;
// define data
integer y = 4 ; // counter
real x [0:4];
reg [7:0] b [0:4];
integer i = 0;
real keep;
// actions
initial
begin : main
x[0] = 0.62500;
x[1] = 0.81250;
x[2] = 0.75000;
x[3] = 0.25000;
x[4] = 0.015625;
while (i <= 4)
begin    
    y = 7;
    while (y >= 0 && x[i] > 0)
    begin
        if ( x[i]*2 >= 1 )
            begin
            b[i][y] = 1;
            x[i] = x[i]*2.0 - 1.0;
            end
        else
            begin
            b[i][y] = 0;
            x[i] = x[i]*2.0;
            end // end if
    y=y-1;
    end // end while;
    $display ( "b = 0,%b[2]", b[i] );
    i = i + 1;
end
end // main
endmodule // Guia_0202