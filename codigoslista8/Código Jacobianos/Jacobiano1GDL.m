%% Jacobiano
% EXEMPLO FEITO PARA UM MANIPULADOR DE 1 GRAUS DE LIBERDADE COM TODAS
% JUNTAS ROTACIONAIS!!
% CASO NÃO SEJA DA MESMA FORMA, FAZER AS DEVIDAS ALTERAÇÕES!

clc;clear;

%Definindo os parâmetros alpha, teta, d e a de Denavit-Hartenberg
% syms alpha1 teta1 d1 a1
alpha1 = 90;
teta1 = 45;
d1 = 750;
a1 = 400;

%Definindo a velocidade máxima de cada link
Vm1 = 5; 

% Definindo as matrizes homogeneas (MATRIZES PARCIAIS T01,...,T56)
T01 = [cosd(teta1) -sind(teta1)*cosd(alpha1) sind(teta1)*sind(alpha1) a1*cosd(teta1);
sind(teta1) cosd(teta1)*cosd(alpha1) -cosd(teta1)*sind(alpha1) a1*sind(teta1);
0 sind(alpha1) cosd(alpha1) d1;
0 0 0 1]

% Matriz Total (R0)
R0 = T01

K = [0;0;1];

% Parâmetros individuais do Jacobiano (Z0,...,Z5), (O1,...,O6)
Z0 = K
  
O0 = [0;0;0];
O1 = [R0(1,4);R0(2,4);R0(3,4)]

%Valores individuais dos Jacobianos (J1,...,J6)
J1 = [cross(Z0,(O1 - O0)); Z0] %Eixo Rotacional, se for Prismático Muda Para J1 = [Z0; 0]

%Matriz do Jacobiano Total (J)
J = [J1];

%Velocidade esperada do End-Effector (V)
V = J*[Vm1]'

%Exibindo os resultados
disp('Jacobiano:');
disp(J);
disp('Velocidade esperada:');
disp(V);