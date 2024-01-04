clear;clc;
o1 = 30
o2 = 75
ti = 0
tf = 5
oti = 0
otf = 0
vti = 0
vtf = 0

c0 = oti - c1*ti - (c2*ti^2) - (c3*ti^3) 

%c0 = o(t)
o(tf) = c0 + c1*(tf) + c2*(tf) + c3*tf

v(t) = c1 + 2*c2*t + (3*c3*t^2)

c1 = otf - 2*c2(ti) - 3*c3*t^2  

%v(tf) = c1 + 2*c2*t + (3*c3*t^2)

v(t) = c1 + 2*c2*t + (3*c3*t^2)


 
 
 