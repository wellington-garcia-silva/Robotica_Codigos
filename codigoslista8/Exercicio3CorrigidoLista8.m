clear;
clc;
syms teta1 teta2 d3 
H01 = [cos(teta1) -sin(teta1) 0 300*cos(teta1);
       sin(teta1)  cos(teta1) 0 300*sin(teta1);
       0           0          1 0;
       0           0          0 1]
   
H12 = [cos(teta2) sin(teta2)   0  200*cos(teta2);
       sin(teta2) -cos(teta2)  0  200*sin(teta2);
       0          0           -1  0;
       0          0            0  1]
   
H23 = [1 0 0 0;
       0 1 0 0
       0 0 1 d3;
       0 0 0 1]
 
H1 = H01
H2 = H01*H12
H3 = H01*H12*H23

K = [0;
     0;
     1]
 
O0 = [0;0;0];
O1 = [H1(1,4);H1(2,4);H1(3,4)]
O2 = [H2(1,4);H2(2,4);H2(3,4)]
O3 = [H3(1,4);H3(2,4);H3(3,4)]
   
Z0 = K
   
Z1 = [H1(1,1) H1(1,2) H1(1,3);
      H1(2,1)  H1(2,2) H1(2,3);
      H1(3,1) H1(3,2) H1(3,3)]*K
  
Z2 = [H2(1,1) H2(1,2) H2(1,3);
      H2(2,1)  H2(2,2) H2(2,3);
      H2(3,1) H2(3,2) H2(3,3)]*K
  


J = [cross(Z0,(O3 - O0))  cross(Z1,(O3 - O1))  Z2
              Z0                   Z1           0]
