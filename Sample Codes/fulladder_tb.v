module fulladder_tb;
reg a,b,cin;
wire sum,carry;
integer i;
fulladder inst(a,b,cin,sum,carry);
initial begin
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#10;
end
$finish();
end
                
endmodule
