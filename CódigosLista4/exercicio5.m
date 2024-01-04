
rotx = [1 0          0          0;
        0 cos(teta) -sin(teta) 0;
        0 sin(teta)  cos(teta)  0;
        0 0          0          1]
roty = [cos(phi) 0 sin(phi) 0;
         0 1 0 0;
         -sin(phi) 0 cos(phi) 0;
         0 0 0 1] 
rotz = [cosd(pi) -sind(pi) 0 0;
         sind(pi)  cosd(pi) 0 0;
         0      0       1 0;
         0      0       0 1]
roty2 = [cosd(-pi) 0 sind(-pi) 0;
         0 1 0 0;
         -sind(-pi) 0 cosd(-pi) 0;
         0 0 0 1] 
rotx2 = [1 0          0          0;
        0 cos(-teta) -sin(-teta) 0;
        0 sin(-teta)  cos(-teta)  0;
        0 0          0          1]
 R = rotx*roty*rotz*roty2*rotx2