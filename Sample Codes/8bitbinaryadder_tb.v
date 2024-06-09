module bin_add_tb;
reg [7:0]a,b;
reg cin;
wire [7:0]sum;
wire cout;
integer i;

bin_add inst1(a,b,cin,sum,cout);

initial begin
for(i=0;i<131072;i=i+1)
begin
{a,b,cin}=i;
#20;
end
end
endmodule
