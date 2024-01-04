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
    
 H02 = H01*H12
 H03 = H02*H23
 
 R01 = [0 -1 0;
       0 0 -1;
       1 0 0]
    
R02 = [ 0    -1  0;
        0    0  -1;
        1    0  0]

K = [0;
     0;
     1]
 
O0 = [0;
      0;
      0]

O1 = [0;
      0;
      200]
  
O2 = [0;
      0;
      300]
  
O3 = [ -50;
       0;
       300]
   
Z0 = [0;
      0;
      1]

Z1 = R01*K

Z2 = R02*K


J = [cross(Z0,(O3 - O0))  cross(Z1,(O3 - O1))  cross(Z2,(O3 - O2))
             Z0                   Z1                   Z2       ]
         
 q = [4;
      3;
      0]
  
V = J*q