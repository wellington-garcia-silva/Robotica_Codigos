clc;
clear;
t1 = 0
t2 = pi/2
t3 = pi/2
H01 = [cos(t1) 0  sin(t1)  0;
       sin(t1) 0  -cos(t1) 0;
       0       1  0        200;
       0       0  0        1]
   
 H12 = [cos(t2) -sin(t2) 0 100*cos(t2);
        sin(t2) cos(t2)  0 100*sin(t2);
         0      0        1 0;
         0      0        0 1]
 H23 = [cos(t3) -sin(t3) 0 50*cos(t3);
        sin(t3) cos(t3)  0 50*sin(t3);
        0       0        1  0;
        0       0        0  1]
    
 A01 = H01
 A02 = A01*H12
 A03 = A02*H23
 
 
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
 
O0 = [0;0;0];
O1 = [A01(1,4);A01(2,4);A01(3,4)]
O2 = [A02(1,4);A02(2,4);A02(3,4)]
O3 = [A03(1,4);A03(2,4);A03(3,4)]

J1 = [cross(Z0,(O2 - O0)); Z0] %Eixo Rotacional, se for Prismático Muda Para J1 = [Z0; 0]
J2 = [cross(Z1,(O2 - O1)); Z1] %Eixo Rotacional, se for Prismático Muda Para J2 = [Z1; 0]
J3 = [cross(Z2,(O3 - O2)); Z2] %Eixo Rotacional, se for Prismático Muda Para J3 = [Z2; 0]

J = [cross(Z0,(O3 - O0))  cross(Z1,(O3 - O1))  cross(Z2,(O3 - O2))  
             Z0                   Z1                   Z2 ]
         
 q = [4;
      3;
      0]
V = J*q