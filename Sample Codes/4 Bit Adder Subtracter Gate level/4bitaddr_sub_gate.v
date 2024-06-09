module halfadder (input a, b, output sum, carry);
	xor x1(sum, a, b);
	and a1(carry, a, b);
endmodule

module fulladder ( input a, b, cin, output sum, carry);
	wire w1, w2, w3;
	halfadder ha1 ( a, b, w1, w2);
	halfadder ha2 ( w1, cin, sum, w3);
	or o1 (carry, w2, w3);
endmodule

module adder_subtr(a,b,cin,s,cout);
	 input [3:0] a, b;
	 input cin;
	output [4:0] s;
	 output cout;
	wire x1, x2, x3, x4;
	wire c1, c2, c3;
	xor x1 (x1, b[0], cin);
	xor x2 (x2, b[1], cin);
	xor x3 (x3, b[2], cin);
	xor x4 (x4, b[3], cin);
	
	fulladder fa1 ( a[0], x1, cin, s[0], c1);
	fulladder fa2 ( a[1], x2, c1, s[1], c2);
	fulladder fa3 ( a[2], x3, c2, s[2], c3);
	fulladder fa4 ( a[3], x4, c3, s[3], s[4]);
	
	xor xor5 (cout, c, c3);

endmodule
