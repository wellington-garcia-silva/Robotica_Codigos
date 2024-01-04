clear;clc;
beta = 60
gama = 30
r = 20

m = [sind(beta)*cosd(gama)  r*cosd(beta)*cosd(gama)   -r*sind(beta)*sind(gama);
              sind(beta)*sind(gama)  r*cosd(beta)*sind(gama)   r*sind(beta)*cosd(gama);
              cosd(beta)             -r*sind(beta)             0                      ]*[2;0.05;0.1]%multiplicação das matrizes