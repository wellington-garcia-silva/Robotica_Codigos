psi = pi/4
teta = pi/2
phi = 0
rotz1 = [cos(phi) -sin(phi) 0 0;
         sin(phi)  cos(phi) 0 0;
         0      0       1 0;
         0      0       0 1]
roty = [cosd(teta) 0 sin(teta) 0;
         0 1 0 0;
         -sin(teta) 0 cos(teta) 0;
         0 0 0 1] 
rotz2 = [cos(psi) -sin(psi) 0 0;
         sin(psi)  cos(psi) 0 0;
         0      0       1 0;
         0      0       0 1]
Rzyz = rotz1*roty*rotz2