R1 = denavit(-90,480,0,0)
R2 = denavit(-90,0,0,90)
R3 = denavit(90,300,0,0)

Rt = R1*R2*R3

H06 = [0 0.5 0.866025403 392.79;
       0 -0.866025403 0.5 226.78;
       1 0 0 878.79;
       0 0 0 1]

R36 = Rt*H06

nx = 0
ny = 1
nz = 0
ay = 0
ax = 0.5
oy = 0
ox = -0.9
tetaA = atan2d(ny,nx)
tetaN = atan2d((-ay*cosd(tetaA) + ax*sind(tetaA)) , (oy*cosd(tetaA)-ox*sind(tetaA)))
tetaO = atan2d((-nz),(nx*cosd(35) + ny*sind(tetaA)))