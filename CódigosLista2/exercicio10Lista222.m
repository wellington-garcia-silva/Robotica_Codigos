nx = 0.0434
ny = 0.9096
nz = -0.4132
ay = 0.3214
ax = 0.5567
oy = 0.2633
ox = -0.8296
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))