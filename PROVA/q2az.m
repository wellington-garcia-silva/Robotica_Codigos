syms teta1 teta2 teta3
rotz1 = [cos(teta1) -sin(teta1) 0 0;
         sin(teta1)  cos(teta1) 0 0;
         0      0       1 0;
         0      0       0 1]
rotz2 = [cos(teta2) -sin(teta2) 0 0;
         sin(teta2)  cos(teta2) 0 0;
         0      0       1 0;
         0      0       0 1]
rotz3 = [cos(teta3) -sin(teta3) 0 0;
         sin(teta3)  cos(teta3) 0 0;
         0      0       1 0;
         0      0       0 1]
r = rotz3*rotz2*rotz1
simplify(r)