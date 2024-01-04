function x = cilindrico(alfa,r,L)

x = [cosd(alfa)  -sind(alfa)  0  r*cosd(alfa);
     cosd(alfa)  cosd(alfa)    0  r*sind(alfa);
     0           0            1  L;
     0           0            0  1]
end