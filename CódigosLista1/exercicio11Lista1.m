tetaz = 30
tetay = 60
P = [1;
     2;
     3;
     1]
roty = [ cosd(tetay) 0 sind(tetay) 0;
         0 1 0 0;
         -sind(tetay) 0 cosd(tetay) 0;
         0 0 0 1] 
 rotz = [cosd(tetaz) -sind(tetaz) 0 0;
         sind(tetaz)  cosd(tetaz) 0 0;
         0      0       1 0;
         0      0       0 1]
 Pnovo = roty*rotz*P