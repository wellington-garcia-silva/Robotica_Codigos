syms teta psi phi
rotx1 = [1 0          0          0;
        0 cos(phi) -sin(phi) 0;
        0 sin(phi)  cos(phi)  0;
        0 0          0          1]
 rotx2 = [cos(psi) 0 sin(psi) 0;
         0 1 0 0;
         -sin(psi) 0 cos(psi) 0;
         0 0 0 1] 
 rotz = [cos(teta) -sin(teta) 0 0;
         sin(teta)  cos(teta) 0 0;
         0      0       1 0;
         0      0       0 1]
     
 R = rotz*rotx1*rotx2