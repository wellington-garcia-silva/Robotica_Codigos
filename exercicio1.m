tetaz = 55
tetay = 52
tetax = 15.32
d = 0
rotx = [1 0          0          0;
        0 cosd(tetax) -sin(tetax) 0;
        0 sin(tetax)  cos(tetax)  0;
        0 0          0          1]
 roty = [cosd(tetay) 0 sind(tetay) 0;
         0 1 0 0;
         -sind(tetay) 0 cosd(tetay) 0;
         0 0 0 1] 
 rotz = [cosd(teta) -sind(teta) 0 0;
         sind(teta)  cosd(teta) 0 0;
         0      0       1 0;
         0      0       0 1]
 R = rotz*roty*rotx