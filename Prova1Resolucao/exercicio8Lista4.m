d06 = [214.2;
       589.62;
       1100]
d6  = 92
R06 = [0 -1 0;
       0 0  0;
       -1 0 1]
k = [0;
     0;
     1]

Pc = d06 - d6*R06*k

nx = 0
ny = 0
nz = -1
ay = 0
ax = 0
oy = 0
ox = -1
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))