clear;clc;
%robo cilindrico RPP
syms  d1 d2 d3
A01 = denavit_simbolico(0,d1,0,0)%teta,d,a,alfa
A02 = A01*denavit_simbolico(0,d2,0,0)
A03 = A02*denavit_simbolico(0,d3,0,-90)

K = [0;
     0;
     1]
 
O0 = [0;0;0];
O1 = [A01(1,4);A01(2,4);A01(3,4)]
O2 = [A02(1,4);A02(2,4);A02(3,4)]
O3 = [A03(1,4);A03(2,4);A03(3,4)]
   
Z0 = K

Z1 = [A01(1,1) A01(1,2) A01(1,3);
      A01(2,1)  A01(2,2) A01(2,3);
      A01(3,1) A01(3,2) A01(3,3)]*K
  
Z2 = [A02(1,1) A02(1,2) A02(1,3);
      A02(2,1)  A02(2,2) A02(2,3);
      A02(3,1) A02(3,2) A02(3,3)]*K


J = [cross(Z0,(O3 - O0))    Z1  Z2  
             Z0             0  0]
         
simplify(J)
         


