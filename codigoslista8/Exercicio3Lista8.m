syms teta1 teta2 d3
H01 = [cos(teta1) -sin(teta1) 0 300*cos(teta1);
       sin(teta1)  cos(teta1) 0 300*sin(teta1);
       0           0          1 0;
       0           0          0 1]
   
H12 = [cos(teta2) sin(teta2)   0  200*cos(teta2);
       sin(teta2) -cos(teta2)  0  200*sin(teta2);
       0          0           -1  0;
       0          0            0  1]
   
H32 = [1 0 0 0;
       0 1 0 0
       0 0 1 d3;
       0 0 0 1]
   
R01 = [cos(teta1) -sin(teta1)  0;
       sin(teta1)  cos(teta1) 0;
       0           0          1]
       
l1 = [cos(teta2) sin(teta2)   0;
      sin(teta2) -cos(teta2)  0;
      0          0           -1]
  
R02 = R01*l1

l2 = [1 0 0 0;
       0 1 0 0
       0 0 1 d3]

R03 = R02*l2

K = [0;
     0;
     1]
 
O0 = [0;
      0;
      0]

O1 = [300*cos(teta1);
      300*sin(teta1);
      1]
  
O2 = [-1.73;
      0;
      3]
  
O3 = [-3.46;
       0;
       2]
   
Z0 = [0;
      0;
      1]

Z1 = R01*K

Z2 = R02*K

J = [cross(Z0,(O3 - O0))  cross(Z1,(O3 - O1))  cross(Z2,(O3 - O2))
             Z0                   Z1                   Z2       ]
