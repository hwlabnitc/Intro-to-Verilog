module bcd_adder(input [3:0]a,b,input cin,output reg [3:0]sum,output reg cout);
reg [4:0] sum1;
always @(a,b,cin)
	begin
   sum1 = a+b+cin
	if(sum1 > 9)    
   begin
		sum1 = sum1+6; 
      cout= 1;
      sum = sum1[3:0];    
   end
   else   
	begin
      cout= 0;
      sum = sum1[3:0];
   end
	end
endmodule
     
