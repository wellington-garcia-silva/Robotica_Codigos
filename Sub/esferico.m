function x = esferico(beta,gama,r)

x = [cosd(beta)*cosd(gama)  -sind(gama)  sind(beta)*cosd(gama)  r*sind(beta)*cosd(gama);
     cosd(beta)*sind(gama)  cosd(gama)   sind(beta)*sind(gama)  r*sind(beta)*sind(gama);
     -sind(beta)            0            cosd(beta)             r*cosd(beta);
     0                      0            0                      1]
end