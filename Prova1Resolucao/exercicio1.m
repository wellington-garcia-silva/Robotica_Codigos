
syms alpha teta beta r
 rotzalpha = [cos(alpha) -sin(alpha) 0 0;
             sin(alpha)  cos(alpha) 0 0;
             0      0       1 0;
             0      0       0 1]
 rotz90 = [cosd(90) -sind(90) 0 0;
         sind(90)  cosd(90) 0 0;
         0      0       1 0;
         0      0       0 1]
 roto = [cos(beta) 0 sin(beta) 0;
         0 1 0 0;
         -sin(beta) 0 cos(beta) 0;
         0 0 0 1] 
 transz = [1 0 0 0;
          0 1 0 0;
          0 0 1 r;
          0 0 0 1]
  Rot = rotzalpha*rotz90*roto*transz