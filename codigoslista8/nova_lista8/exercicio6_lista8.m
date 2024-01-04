clc;
clear;
syms teta1 teta2 teta4 teta5 teta6 d2 d3 d6
A01 = denavit_simbolico(teta1,0,0,-90)%teta,d,a,alfa
A02 = A01*denavit_simbolico(teta2,d2,0,90)
A03 = A02*denavit_simbolico(0,d3,0,0)
A04 = A03*denavit_simbolico(teta4,0,0,-90)
A05 = A04*denavit_simbolico(teta5,0,0,90)
A06 = A05*denavit_simbolico(teta6,d6,0,0)

K = [0;
     0;
     1]
 
O0 = [0;0;0];
O1 = [A01(1,4);A01(2,4);A01(3,4)]
O2 = [A02(1,4);A02(2,4);A02(3,4)]
O3 = [A03(1,4);A03(2,4);A03(3,4)]
O4 = [A04(1,4);A04(2,4);A04(3,4)]
O5 = [A05(1,4);A05(2,4);A05(3,4)]
O6 = [A06(1,4);A06(2,4);A06(3,4)]
   
Z0 = K

Z1 = [A01(1,1) A01(1,2) A01(1,3);
      A01(2,1)  A01(2,2) A01(2,3);
      A01(3,1) A01(3,2) A01(3,3)]*K
  
Z2 = [A02(1,1) A02(1,2) A02(1,3);
      A02(2,1)  A02(2,2) A02(2,3);
      A02(3,1) A02(3,2) A02(3,3)]*K
  
Z3 = [A03(1,1) A03(1,2) A03(1,3);
      A03(2,1)  A03(2,2) A03(2,3);
      A03(3,1) A03(3,2) A03(3,3)]*K
  
Z4 = [A04(1,1) A04(1,2) A04(1,3);
      A04(2,1)  A04(2,2) A04(2,3);
      A04(3,1) A04(3,2) A04(3,3)]*K
  
Z5 = [A05(1,1) A05(1,2) A05(1,3);
      A05(2,1)  A05(2,2) A05(2,3);
      A05(3,1) A05(3,2) A05(3,3)]*K

J = [cross(Z0,(O6 - O0))  cross(Z1,(O6 - O1))         Z2   cross(Z3,(O6 - O3)) cross(Z4,(O6 - O4))  cross(Z5,(O6 - O5))
             Z0                   Z1                  O0        Z3                   Z4                   Z5  ]

simplify(J)
         
 q = [4;
      3;
      0;
      5;
      6
      1]
  
%V = J*q

