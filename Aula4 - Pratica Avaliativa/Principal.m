addpath('Aula4 - Pratica Avaliativa')%s� colocar o nome da pasta que est� os c�digos -> as 2 est�o dentro de testeFuncao
clear all
close all
warning off
global Kp Ki Kd erro tempo
%
options = optimset('Display','iter','TolFun',1e-8,'TolX',1e-8);
x0 = [18 12.81 6.3216];
[x, fval, exitflag, output]= fminsearch(@objective_function_IAE,x0,options)%1.4630    0.4675    2.5851
%[x, fval, exitflag, output]= fminsearch(@objective_function_ITAE,x0,options)
%[x, fval, exitflag, output]= fminsearch(@objective_function_MSE,x0,options)