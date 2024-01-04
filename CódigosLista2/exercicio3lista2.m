rotx45 = [1 0          0          0;
        0 cosd(45) -sind(45) 0;
        0 sind(45)  cosd(45)  0;
        0 0          0          1]
 rotz60 = [cosd(60) -sind(60) 0 0;
         sind(60)  cosd(60) 0 0;
         0      0       1 0;
         0      0       0 1]
 transyz = [1 0 0 0;
          0 1 0 6;
          0 0 1 3;
          0 0 0 1]
  rotn60 = [1 0          0          0;
        0 cosd(60) -sind(60) 0;
        0 sind(60)  cosd(60)  0;
        0 0          0          1]
  R = rotx45*rotz60*transyz*rotn60
  
  %Para o caso de r33 < 1
r33 = 0.0474
r23 = -0.6597
r13 = 0.75
r32 = 0.7891
r31 = 0.6124
teta = atan2d((sqrt(1-r33*r33)),r33)
phi = atan2d(r23,r13)
psi = atan2d(r32,(-r31))