clear;clc;
B = [0 1 0 1;
     1 0 0 1;
     0 0 -1 1;
     0 0 0 1]
 
 B = roty(90)*rotz(90)*B*transx(3)*transy(5)*rotx(90)