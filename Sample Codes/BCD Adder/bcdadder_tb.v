module bcdadder_tb;
    reg [3:0]a,b;
    reg cin;
    wire [3:0]sum;
    wire cout;

    bcd_adder inst1(a,b, cin,sum, cout );

    initial begin
        a = 0;b = 0;cin = 0;   
		  #10;
        a = 7;b = 2;cin = 0;   
		  #10;
        a = 2;b = 3;cin = 1;   
		  #10;
    end
      
endmodule
