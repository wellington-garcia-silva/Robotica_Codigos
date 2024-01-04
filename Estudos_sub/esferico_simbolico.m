function x = esferico_simbolico(alfa,r)

x = [cos(beta)*cos(gama)  -sin(gama)  sin(beta)*cosd(gama)  r*sin(beta)*cos(gama);
     cos(beta)*sin(gama)  cos(gama)   sin(beta)*sind(gama)  r*sin(beta)*sin(gama);
     -sin(beta)            0            cos(beta)             r*cos(beta);
     0                      0            0                      1]
end