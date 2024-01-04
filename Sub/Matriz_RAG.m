clear;clc;
T = [0.527 -0.574 0.628 6;
     0.369  0.819 0.439 6;
     -0.766 0     0.643 9;
     0      0     0     1]

nx = T(1,1)%nx = 0.527
ny = T(2,1)%ny = 0.369
nz = T(3,1)%nz = -0.766
ay = T(2,3)%ay = 0.439
ax = T(1,3)%ax = 0.628
oy = T(2,2)%oy = 0.819
ox = T(1,2)%ox = 0.574
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))