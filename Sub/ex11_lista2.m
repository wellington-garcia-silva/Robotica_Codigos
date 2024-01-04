clear;clc;
B = [1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]
     
A = rotx(45)*rotz(60)*transz(3)*B*transy(6)*rotx(60)

%Para o caso de r33 < 1
r33 = A(3,3)%r33 = 0.0474
r23 = A(2,3)%r23 = -0.6597
r13 = A(1,3)%r13 = 0.75
r32 = A(3,2)%r32 = 0.7891
r31 = A(3,1)%r31 = 0.6124
teta = atan2d((sqrt(1-r33*r33)),r33)
phi = atan2d(r23,r13)
psi = atan2d(r32,(-r31))