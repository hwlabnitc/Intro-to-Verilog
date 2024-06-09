module alu_tb;
reg [7:0]a,b;
reg [1:0]ch;
wire [8:0]out;
integer i;
alu in1(a,b,ch,out);
initial begin
for(i=0;i<262144;i=i+1)
begin
{a,b,ch}=i;
#10;
end
end
endmodule
