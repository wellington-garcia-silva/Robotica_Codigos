teta = 40
phi = 30
psi = 50
RYP = [cosd(phi)*cosd(teta)  (-cosd(phi)*sind(teta)*sind(psi)-sind(phi)*sind(teta)*cosd(psi))  (cosd(phi)*sind(teta)*cosd(psi)+sind(phi)*sind(psi));
       sind(phi)*cosd(teta)  (-sind(phi)*sind(teta)*sind(psi) +cosd(phi)*cosd(psi))            (sind(phi)*sind(teta)*sind(psi)-cosd(phi)*cosd(psi));
       -sind(teta)            cosd(teta)*sind(psi)                                              (cosd(teta)*sind(psi))]  
nx = 0.6634
ny = 0.383
nz = -0.6428
ay = -0.3105
ax = 0.7408
oy = 0.3105
ox = -0.633
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))