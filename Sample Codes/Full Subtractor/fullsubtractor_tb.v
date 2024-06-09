module fullsubr_tb;
reg a,b,bin;
wire dif,bout;
integer i;
fullsubtr inst(a,b,bin,dif,bout);
initial begin
for(i=0;i<8;i=i+1)
begin
{a,b,bin}=i;
#10;
end
$finish();
end
                
endmodule
