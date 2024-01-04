clear;
clc;
H01 = denavit(0,2,0,-90)%teta,d,a,alfa
H02 = H01*denavit(90,0,0,90)
H03 = H02*denavit(0,0,0,0)

R01 = [ 1    0  0;
        0    0  1;
        0    -1  0]
    
R02 = [ 0    0  1;
        0    1  0;
        -1   0  0]
    

K = [0;
     0;
     1]
 
O0 = [0;
      0;
      0]

O1 = [0;
      0;
      2]
  
O2 = [0;
      0;
      2]
  
O3 = [ 0;
       0;
       2]
   
Z0 = [0;
      0;
      1]

Z1 = R01*K

Z2 = R02*K


J = [cross(Z0,(O3 - O0))  cross(Z1,(O3 - O1))  cross(Z2,(O3 - O2))
             Z0                   Z1                   Z2       ]
         
 q = [4;
      3;
      1]
  
V = J*q