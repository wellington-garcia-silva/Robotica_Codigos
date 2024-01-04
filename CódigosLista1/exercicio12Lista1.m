teta = 90
P = [1;
     5;
     4;
     1]
 B = [0 1 0 1;
     1 0 0 1;
     0 0 -1 1;
     0 0 0 1]
rotx = [1 0          0          0;
        0 cosd(teta) -sind(teta) 0;
        0 sind(teta)  cosd(teta)  0;
        0 0          0          1]
transx = [1 0 0 3;
         0 1 0 0;
         0 0 1 0;
         0 0 0 1]
rotz = [cosd(teta) -sind(teta) 0 0;
         sind(teta)  cosd(teta) 0 0;
         0      0       1 0;
         0      0       0 1]
 transz = [1 0 0 0;
         0 1 0 0;
         0 0 1 5;
         0 0 0 1]
Pnovo = rotz*transx*rotx*B*transz