clear;clc;
t1f = 2
t2f = 4
t3f = 2
%o1 = 30
%o1' = 0
%o1'' = 0
%o2 = 50
%o2' = 0


%L1 = [1 zeros(1,13)]
%L2 = [0 1 zeros(1,12)]
%L3 = [0 0 2 zeros(1,11)]
%L4 = [1 tf1 tf1^2 tf1^3 tf^4 zeros(5,13)]
%L5 = [zeros(0,13)]
%L6 = [0 1 2*tf1 3*tf1^2  4*tf1^3 0 -1  zeros(7,13)]
%L7 = [0 0 2 6*tf1 12*tf1^2 0 0 -2 zeros(8,13)]
%L8 = [zeros(0,4) 1 tf2 tf2^2 tf3^3 zeros(9,13)]
%L9 = [zeros(0,8) 1 zeros(10,13)]
%L10 = [zeros(0,5) 1  2*tf2 3*tf2^2  0 -1 zeros(11,13)]
%L11 = [zeros(0,6) 2 6*tf2 0 0 -2  0 0]
%L12 = [zeros(0,8) 1 tf3 tf3^2 tf^3 tf3^4]
%L13 = [zeros(0,9) 1 2*tf3 3*tf^2 4*tf3^3]
%L14 = [zeros(0,10) 2 6*tf3 12*tf3^2]

L1 = [1,zeros(1,13)];
L2 = [0,1,zeros(1,12)];
L3 = [0,0,2,zeros(1,11)];
L4 = [1,t1f,t1f^2,t1f^3,t1f^4,zeros(1,9)];
L5 = [zeros(1,5),1,zeros(1,8)];
L6 = [0,1,2*t1f,3*t1f^2,4*t1f^3,0,-1,zeros(1,7)];
L7 = [0,0,2,6*t1f,12*t1f^2,0,0,-2,zeros(1,6)];
L8 = [zeros(1,5),1,t2f,t2f^2,t2f^3,zeros(1,5)];
L9 = [zeros(1,9),1,zeros(1,4)];
L10 = [zeros(1,6),1,2*t2f,3*t2f^2,0,-1,0,0,0];
L11 = [zeros(1,7),2,6*t2f,0,0,-2,0,0];
L12 = [zeros(1,9),1,t3f,t3f^2,t3f^3,t3f^4];
L13 = [zeros(1,10),1,2*t3f,3*t3f^2,4*t3f^3];
L14 = [zeros(1,11),2,6*t3f,12*t3f^2];



M = [L1;L2;L3;L4;L5;L6;L7;L8;L9;L10;L11;L12;L13;L14]

B = [30;0;0;50;50;0;0;90;90;0;0;70;0;0]
C = inv(M)*B