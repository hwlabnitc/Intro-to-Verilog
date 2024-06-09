module bin_sub_tb;
reg [7:0]a,b;
reg cin;
wire [7:0]diff;
wire borr;
integer i;

bin_sub inst1(a,b,cin,diff,borr);

initial begin
cin=1'b1;
for(i=0;i<65536;i=i+1)
begin
{a,b}=i;
#20;
end
end
endmodule
