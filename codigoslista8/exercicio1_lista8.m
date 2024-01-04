syms a1 a2 a3 teta1 teta2
A01 = denavit(0,0,2,0)%teta,d,a,alfa
A02 = A01*denavit(0,0,2,0)
A03 = A02*denavit(0,0,2,0)

Rt = A01*A12*A23


R01 = [1 0 0;
       0 1 0;
       0 0 0]
    
R02 = [ 1    0  0;
        0    1  0;
        0    0  1]

K = [0;
     0;
     1]
 
O0 = [0;
      0;
      0]

O1 = [2;
      0;
      0]
  
O2 = [4;
      0;
      0]
  
O3 = [ 6;
       0;
       0]
   
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