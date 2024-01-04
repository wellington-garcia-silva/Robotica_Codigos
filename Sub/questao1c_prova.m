clear;clc;
syms alfa r L phi teta psi
A = cilindrico_simbolico(alfa,r,L)*euler_simbolico(phi,teta,psi)
simplify(A)