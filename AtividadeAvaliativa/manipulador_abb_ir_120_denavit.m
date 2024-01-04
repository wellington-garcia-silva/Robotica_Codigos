R01 = denavit(0,103,0,-90)%teta,d,a,alfa
R12 = denavit(90,0,270,0)
R23 = denavit(0,0,70,-90)
R34 = denavit(0,302,0,90)
R45 = denavit(0,0,0,-90)
R56 = denavit(180,72,0,0)

RT = R01*R12*R23*R34*R45*R56