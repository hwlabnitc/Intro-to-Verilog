module fulladder(input  a, b, cin,output reg s, cout);
always @(a or b or cin)
  begin 
  s = a ^ b ^ cin; 
  cout = a&b | (a^b) & cin; 
  end
endmodule
