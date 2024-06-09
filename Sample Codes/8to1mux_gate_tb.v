module alu_tb;
  reg ts2,ts1,ts0,td0,td1,td2,td3,td4,td5,td6,td7;
  wire ty;
  mux m1(ts2,ts1,ts0,td0,td1,td2,td3,td4,td5,td6,td7,ty);
  integer i;
  initial
    begin
     for(i=0;i<2048;i=i+1)
    begin
      
      {ts0,ts1,ts2,td0,td1,td2,td3,td4,td5,td6,td7}=i;
      #10;
    end
    end
