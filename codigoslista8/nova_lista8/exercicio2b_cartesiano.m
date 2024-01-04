clear;clc;
%robo cartesiano PPP
syms teta1 d1 d2 d3 a2 a3
A01 = denavit_simbolico(0,d1,0,90)%teta,d,a,alfa
A02 = A01*denavit_simbolico(90,d2,0,90)
A03 = A02*denavit_simbolico(0,d3,0,0)

K = [0;
     0;
     1]
   
Z0 = K

Z1 = [A01(1,1) A01(1,2) A01(1,3);
      A01(2,1)  A01(2,2) A01(2,3);
      A01(3,1) A01(3,2) A01(3,3)]*K
  
Z2 = [A02(1,1) A02(1,2) A02(1,3);
      A02(2,1)  A02(2,2) A02(2,3);
     A02(3,1) A02(3,2) A02(3,3)]*K


 
J = [  Z0                   Z1                   Z2       
       0                     0                   0]
simplify(J)
         


