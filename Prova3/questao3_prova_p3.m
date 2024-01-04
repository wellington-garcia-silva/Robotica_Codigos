clear;clc;
syms r y b
rotz = [cos(y)   -sin(y) 0 0;
         sin(y)  cos(y) 0 0;
         0       0       1 0;
         0       0       0 1]
  roty = [ cos(b)  0 sin(b) 0;
           0             1 0            0;
           -sin(b) 0 cos(b) 0;
           0             0 0            1] 
 trans = [1 0 0 0;
         0 1 0 0;
         0 0 1 r;
         0 0 0 1]
  T = rotz*roty*trans