TUR = [0 -1 0 2;
       1 0 0 -1;
       0 0 1 0;
       0 0 0 1]
TUH = [1 0 0 1;
       0 0 -1 4;
       0 1 0 0;
       0 0 0 1]
T = inv(TUR)*TUH

nx = 0
ny = -1
nz = 0
ay = 0
ax = -1
oy = 0
ox = 0
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))