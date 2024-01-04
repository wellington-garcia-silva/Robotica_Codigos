syms alfa teta
rotx1 = [1 0          0          0;
        0 cos(alfa) -sin(alfa) 0;
        0 sin(alfa)  cos(alfa)  0;
        0 0          0          1]
rotx2 = [1 0          0          0;
        0 cos(teta) -sin(teta) 0;
        0 sin(teta)  cos(teta)  0;
        0 0          0          1]

R = rotx1*rotx2