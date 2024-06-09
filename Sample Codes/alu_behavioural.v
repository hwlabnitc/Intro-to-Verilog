module alu(input [7:0]a,b,
input [1:0]ch,
output reg [8:0]out);

always @(*)
begin
case(ch)
2'b00:out=a+b;
2'b01:out=(~a)+b+1;
2'b10:out=a^b;
2'b11:out=a<<b;
end
endmodule
