R1 = denavit(0,0.5,0,0)%teta,d,a,alfa
R2 = denavit(25,0.75,0.4,-90)
R3 = denavit(60,0,0.75,0)
R4 = denavit(90,0,0.25,-90)
R5 = denavit(0,0.8124,0,90)
R6 = denavit(30,0.175,0.175,0)

Rt = R1*R2*R3*R4*R5*R6
r33 = 0
r23 = 0.9063
r13 = -0.4226
r32 = 1
r31 = 0
teta = atan2d((sqrt(1-r33*r33)),r33)
phi = atan2d(r23,r13)
psi = atan2d(r32,(-r31))

