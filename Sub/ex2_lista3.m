clear;clc;
T = [0.527  -0.574 0.628 4;
     0.369  0.819  0.439 6;
     -0.766 0      0.643 9;
     0      0      0     1]
nx = T(1,1)
ny = T(2,1)
nz = T(3,1)
ay = T(2,3)
ax = T(1,3)
oy = T(2,2)
ox = T(1,2)
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))