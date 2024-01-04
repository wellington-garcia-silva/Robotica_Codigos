clear;clc;
%caso2: r33^2 < 1
T = [1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]
B = 1 - (T(3,3)*T(3,3))
teta = atan2d(sqrt(B),T(3,3))
phi = atan2d(T(2,3),T(13))
psi = atan2d(T(3,2),T(3,1))