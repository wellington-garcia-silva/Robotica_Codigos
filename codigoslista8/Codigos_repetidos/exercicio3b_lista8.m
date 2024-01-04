clc;
clear;
teta1 = 0
teta2 = -90
d3 = 50
H01 = [cosd(teta1) -sind(teta1) 0 300*cosd(teta1);
       sind(teta1)  cosd(teta1) 0 300*sind(teta1);
       0 0 1 0;
       0 0 0 1]
 H12 = [cosd(teta2) sind(teta2) 0 200*cosd(teta2);
        sind(teta2) -cosd(teta2) 0 200*sind(teta2);
        0 0 -1 0;
        0 0  0 1]
    
 H23 = [1 0 0 0;
        0 1 0 0;
        0 0 1 d3;
        0 0 0 1]

A01 = H01
A02 = A01*H12
A03 = A02*H23

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

J = [cross(Z0,(O3 - O0))  cross(Z1,(O3 - O1))         Z2   
             Z0                   Z1                  O0]

%simplify(J)
         
 q = [0;
      1;
      20]
  
V = J*q

