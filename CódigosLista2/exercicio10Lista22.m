 psi = 50
 teta = 40
 phi = 30
rotz1 = [cos(phi) -sin(phi) 0 0;
         sin(phi)  cos(phi) 0 0;
         0      0       1 0;
         0      0       0 1]
roty = [cos(teta) 0 sin(teta) 0;
         0 1 0 0;
         -sin(teta) 0 cos(teta) 0;
         0 0 0 1] 
rotz2 = [cos(psi) -sin(psi) 0 0;
         sin(psi)  cos(psi) 0 0;
         0      0       1 0;
         0      0       0 1]
Rzyz = rotz1*roty*rotz2

nx = -0.3585
ny = 0.5954
nz = -0.719
ay = -0.7362
ax = 0.1149
oy = 0.3217
ox = 0.9264
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))