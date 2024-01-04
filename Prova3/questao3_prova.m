clear;clc;
r = 20
b = 60
y = 30
dr = 2
db = 0.05
dy = 0.1


A = [cosd(b)*cosd(y) -r*sind(b)*cos(y) -r*cosd(b)*sind(y);
     cosd(b)*sind(y)  r*sind(b)*sind(y) r*cosd(b)*cosd(y);
     -sind(b)         -r*cosd(b)         0]*[2;0.05;0.1]
 