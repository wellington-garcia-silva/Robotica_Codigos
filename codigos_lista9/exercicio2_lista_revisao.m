clear;clc;
alfa = 30
r = 15

%achando a matriz de derivadas
t = [cosd(alfa) -r*sind(alfa) 0;
     sind(alfa)  r*cos(alfa)  0;
      0           0           1]*[0.1;0.05;0.2]