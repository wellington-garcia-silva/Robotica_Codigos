R1 = denavit(30,0,40,0)%teta,d,a,alfa
R2 = denavit(0,0,40,0)
R3 = denavit(45,0,40,0)

H06 = [0.97   0.26    0   0;
       0      0       1   850;
       0.26   -0.97   0   525;
       0      0       0   1]

Rt = R1*R2*R3
H36 = inv(Rt)*H06