syms teta1 teta2 teta3
rotx1 = [1 0          0          0;
        0 cos(teta1) -sin(teta1) 0;
        0 sin(teta1)  cos(teta1)  0;
        0 0          0          1]
rotx2 = [1 0          0          0;
        0 cos(teta2) -sin(teta2) 0;
        0 sin(teta2)  cos(teta2)  0;
        0 0          0          1]
rotx3 = [1 0          0          0;
        0 cos(teta3) -sin(teta3) 0;
        0 sin(teta3)  cos(teta3)  0;
        0 0          0          1]
 R = rotx3*rotx2*rotx1