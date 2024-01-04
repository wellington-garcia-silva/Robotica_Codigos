clc;
clear;
A01 = denavit_radianos(pi/4,0,150,0)%teta,d,a,alfa
A02 = A01*denavit_radianos(pi/6,0,200,0)


K = [0;
     0;
     1]
 
O0 = [0;0;0];
O1 = [A01(1,4);A01(2,4);A01(3,4)]
O2 = [A02(1,4);A02(2,4);A02(3,4)]
   
Z0 = K

Z1 = [A01(1,1) A01(1,2) A01(1,3);
      A01(2,1)  A01(2,2) A01(2,3);
      A01(3,1) A01(3,2) A01(3,3)]*K
  

J = [cross(Z0,(O2 - O0))  cross(Z1,(O2 - O1))  
             Z0                   Z1        ]
         
 q = [2;
      3]
  
V = J*q