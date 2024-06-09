module mux(s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7,y);
  input s2,s1,s0,d0,d1,d2,d3,d4,d5,d6,d7;
  output y;
  wire s2c,s1c,s0c,w0,w1,w2,w3,w4,w5,w6,w7;
  not(s2c,s2);
  not(s1c,s1);
  not(s0c,s0);
  and(w0,s2c,s1c,s0c,d0);
  and(w1,s2c,s1c,s0,d1);
  and(w2,s2c,s1,s0c,d2);
  and(w3,s2c,s1,s0,d3);
  and(w4,s2,s1c,s0c,d4);
  and(w5,s2,s1c,s0,d5);
  and(w6,s2,s1,s0c,d6);
  and(w7,s2,s1,s0,d7);
  or(y,w0,w1,w2,w3,w4,w5,w6,w7);
endmodule
