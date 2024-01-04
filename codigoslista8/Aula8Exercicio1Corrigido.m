clear;
clc;
teta1 = 30
teta2 = 30
a1 = 2
a2 = 2
A01 = [cosd(teta1) -sind(teta2) 0 a1*cosd(teta1);
       sind(teta1) cosd(teta1)  0 a1*sind(teta1);
       0           0            0 0             ;
       0           0            0 1]
   
 A02 = [cosd(teta1+teta2)   -sind(teta1+teta2) 0 (a2*cosd(teta1+teta2)+a1*cosd(teta1));
        sind(teta1+teta2)   cosd(teta1+teta2)  0 (a2*sind(teta1+teta2)+a1*sind(teta1));
        0                             0        1                 0                  ;
        0                             0        0                 1]

K = [0;
     0;
     1]
 
O0 = [0;0;0];
O1 = [A01(1,4);A01(2,4);A01(3,4)]
O2 = [A02(1,4);A02(2,4);A02(3,4)]
%O3 = [A03(1,4);A03(2,4);A03(3,4)]
   
Z0 = K

Z1 = [A01(1,1) A01(1,2) A01(1,3);
      A01(2,1)  A01(2,2) A01(2,3);
      A01(3,1) A01(3,2) A01(3,3)]*K
  



J = [cross(Z0,(O2 - O0))  cross(Z1,(O2 - O1))
             Z0                   Z1        ]
         
 q = [4;
      3]
  
V = J*q