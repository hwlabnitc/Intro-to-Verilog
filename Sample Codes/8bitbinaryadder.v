module bin_add(
    input [7:0]a,b,
    input cin,
    output reg[7:0]sum,
    output reg cout);
	 
always @ (a or b or cin)
   {cout,sum}= a + b + cin;
endmodule
