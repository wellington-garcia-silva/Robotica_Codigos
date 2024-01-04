syms d1 d2 nv
H01 = denavit_simbolico(0,d1,0,90)%teta, d, a, alfa
H02 = H01*denavit_simbolico(90,d2,0,90)

simplify(H01)
simplify(H02)