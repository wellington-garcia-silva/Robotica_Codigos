syms beta gama r
transz = [1 0 0 0;
          0 1 0 0;
          0 0 1 r;
          0 0 0 1]
      
 roty = [cos(beta)   0 sin(beta)  0;
         0           1 0          0;
         -sin(beta)  0 cos(beta)  0;
         0           0 0          1] 
     
 rotz = [cos(gama) -sin(gama) 0 0;
         sin(gama)  cos(gama) 0 0;
         0      0       1 0;
         0      0       0 1]
 Esferico = rotz*roty*transz