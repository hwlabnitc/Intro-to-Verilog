module bin_sub(
    input [7:0]a,b,
    input cin,
    output reg[7:0]diff,
    output reg borr);
	 
always @ (a or b or cin)
   {borr,diff}= (~a) + b + cin;
endmodule
