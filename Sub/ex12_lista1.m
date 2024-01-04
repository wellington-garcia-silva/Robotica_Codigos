clear;clc;
I = [1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]
P = [1;
    5;
    4;
    1]
B = rotz(90)*transx(3)*rotx(90)*transy(5)*P