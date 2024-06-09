module fourbit_adder_subtractor_tb;
  wire [3:0]s;
  wire c;
  reg [3:0]a;
  reg [3:0]b;
  reg k;
  integer j;
  adder_subtr inst1(a,b,k,s,c);
    initial begin
      for(j=0;j<512;j=j+1)
        begin
          {a,b,k}=j;
          #10;
        end
    end
