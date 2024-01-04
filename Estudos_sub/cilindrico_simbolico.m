function x = cilindrico_simbolico(alfa,r,L)

x = [cos(alfa)  -sin(alfa)    0  r*cos(alfa);
     cos(alfa)  cos(alfa)     0  r*sin(alfa);
     0           0            1  L;
     0           0            0  1]
end