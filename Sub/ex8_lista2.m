clear;clc;
nx = 0.527
ny = 0.369
nz = -0.766
ay = 0.439
ax = 0.628
oy = 0.819
ox = 0.574
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))