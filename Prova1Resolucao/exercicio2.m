 rotz90 = [cosd(90) -sind(90) 0 0;
         sind(90)  cosd(90) 0 0;
         0      0       1 0;
         0      0       0 1]
 rotx90 = [1 0          0          0;
        0 cosd(90) -sind(90) 0;
        0 sind(90)  cosd(90)  0;
        0 0          0          1]
 B = [0 1 0 1;
      1 0 0 1;
      0 0 -1 1;
      0 0 0 1]
trans = [1 0 0 0;
          0 1 0 5;
          0 0 1 3;
          0 0 0 1]
 R = rotz90*rotx90*B*trans