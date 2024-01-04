clear;clc;
syms y b r
transn = [1 0 0 r;
          0 1 0 0;
          0 0 1 0;
          0 0 0 1]
 rotz = [cos(y) -sin(y) 0 0;
         sin(y)  cos(y) 0 0;
         0      0       1 0;
         0      0       0 1]   
  roty = [ cos(b) 0 sin(b) 0;
           0 1 0 0;
          -sin(b) 0 cos(b) 0;
           0      0 0 1] 
  T = rotz*roty*transn
  