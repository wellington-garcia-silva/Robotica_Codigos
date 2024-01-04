rotx1 = [1 0          0          0;
        0 cosd(-90) -sind(-90) 0;
        0 sind(-90)  cosd(-90)  0;
        0 0          0          1]
    
  rotz1 = [cosd(90) -sind(90) 0 0;
         sind(90)  cosd(90) 0 0;
         0      0       1 0;
         0      0       0 1]
     
 B = [1 0 0 0;
      0 1 0 1;
      0 0 1 0;
      0 0 0 1]
  
  
R1 = rotx1*rotz1*B
rotz45 = [cosd(45) -sind(45) 0 0;
         sind(45)  cosd(45) 0 0;
         0      0       1 0;
         0      0       0 1]
 roty30 = [cosd(30) 0 sind(30) 0;
         0 1 0 0;
         -sind(30) 0 cosd(30) 0;
         0 0 0 1] 
 transy = [1 0 0 0;
          0 1 0 4;
          0 0 1 2;
          0 0 0 1]
 rota = [cosd(90) -sind(90) 0 0;
         sind(90)  cosd(90) 0 0;
         0      0       1 0;
         0      0       0 1]
 Rn = rotz45*roty30*R1*transy*rota
 P = [1 0 0 2;
      0 1 0 5;
      0 0 1 6;
      0 0 0 1]
 Ri = Rn*P