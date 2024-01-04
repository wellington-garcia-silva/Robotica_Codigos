syms teta psi phi alfa
rotx1 = [1 0          0          0;
        0 cos(phi) -sin(phi) 0;
        0 sin(phi)  cos(phi)  0;
        0 0          0          1]
 
 rotz1 = [cos(teta) -sin(teta) 0 0;
         sin(teta)  cos(teta) 0 0;
         0      0       1 0;
         0      0       0 1]
     
  rotx2 = [cos(psi) 0 sin(psi) 0;
             0 1 0 0;
             -sin(psi) 0 cos(psi) 0;
             0 0 0 1] 
  rotz2 = [cos(alfa) -sin(alfa) 0 0;
         sin(alfa)  cos(alfa) 0 0;
         0      0       1 0;
         0      0       0 1]
  R = rotz2*rotz1*rotx1*rotx2