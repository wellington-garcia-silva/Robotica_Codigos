%Letra D 
R1 = denavit(0,450,0,-90)%teta,d,a,alfa
R2 = denavit(-90,200,0,90)
R3 = denavit(90,350,0,0)
R4 = denavit(0,150,0,90)
R5 = denavit(0,0,0,-90)
R6 = denavit(0,175,0,0)

Rt = R1*R2*R3*R4*R5*R6

%Letra E
R11 = denavit(30,450,0,-90)%teta,d,a,alfa
R22 = denavit(45,200,0,-90)
R33 = denavit(90,200,0,0)
R44 = denavit(90,150,0,90)
R55 = denavit(45,0,0,-90)
R66 = denavit(-90,175,0,0)

Rt2 = R11*R22*R33*R44*R55*R66