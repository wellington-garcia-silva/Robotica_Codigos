clear;clc;
A = cartesiano(4,4,6)
B = RAG(10,20,50)
A = A*B
TBO = transx(5)*transy(7)*rotz(30)*roty(40)
TBS = rotz(45)*transx(4)*rotx(30)
TNH = inv(A)*inv(TBO)*TBS