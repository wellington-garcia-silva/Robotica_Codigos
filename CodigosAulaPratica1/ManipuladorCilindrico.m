syms alfa L r
Translz = [1 0 0 0;
           0 1 0 0;
           0 0 1 L;
           0 0 0 1]
           
Rotz = [cos(alfa) -sin(alfa)  0 0;
        sin(alfa) cos(alfa)   0 0;
        0         0           1 0;
        0         0           0 1]
 Transly = [1 0 0 r;
            0 1 0 0;
            0 0 1 0;
            0 0 0 1]
           
 Tcilindrico = Translz*Rotz*Transly  
 
 
           
           
         