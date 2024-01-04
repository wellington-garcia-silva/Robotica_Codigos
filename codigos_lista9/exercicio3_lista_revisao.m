clear;clc;
b = 60
y = 30
r = 20

%achando a matriz de derivadas
t = [sind(b)*cosd(y)  -r*cosd(b)*cosd(y) -r*sind(b)*sind(y);
     sind(b)*sind(y)  r*cos(b)*sind(y)    r*sind(b)*cosd(y);
     cosd(b)           -r*sind(b)           0              ]*[2;0.05;0.1]