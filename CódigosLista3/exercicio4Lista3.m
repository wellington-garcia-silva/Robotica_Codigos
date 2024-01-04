psi = 50
teta = 40 
phi = 30
rotz1 = [cosd(phi) -sind(phi) 0 0;
         sind(phi)  cosd(phi) 0 0;
         0      0       1 0;
         0      0       0 1]
roty = [cosd(teta) 0 sind(teta) 0;
         0 1 0 0;
         -sind(teta) 0 cosd(teta) 0;
         0 0 0 1] 
rotz2 = [cosd(psi) -sind(psi) 0 0;
         sind(psi)  cosd(psi) 0 0;
         0      0       1 0;
         0      0       0 1]
Rzyz = rotz1*roty*rotz2

nx = 0.0434
ny = 0.9096
nz = -0.413
ay = 0.3214
ax = 0.5557
oy = 0.2633
ox = -0.8296
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))