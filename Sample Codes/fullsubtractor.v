module fullsubr(input  a, b, bin,output reg dif, bout);
always @(a or b or bin)
  begin 
  dif = a ^ b ^ bin; 
  bout = (~a & b) | (~(a ^ b) & bin); 
  end
endmodule
