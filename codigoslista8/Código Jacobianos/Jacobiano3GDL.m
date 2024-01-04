%% Jacobiano
% EXEMPLO FEITO PARA UM MANIPULADOR DE 3 GRAUS DE LIBERDADE COM TODAS
% JUNTAS ROTACIONAIS!!
% CASO NÃO SEJA DA MESMA FORMA, FAZER AS DEVIDAS ALTERAÇÕES!

clc;clear;

%Definindo os parâmetros alpha, teta, d e a de Denavit-Hartenberg
% syms alpha1 teta1 d1 a1 alpha2 teta2 d2 a2 alpha3 teta3 d3 a3
alpha1 = 90;
teta1 = 45;
d1 = 750;
a1 = 400;

alpha2 = 0;
teta2 = 30;
d2 = 0;
a2 = 750;

alpha3 = 90;
teta3 = 0;
d3 = 0;
a3 = 250;

%Definindo a velocidade máxima de cada link
Vm1 = 5; 
Vm2 = 2;
Vm3 = 3;

% Definindo as matrizes homogeneas (MATRIZES PARCIAIS T01,...,T56)
T01 = [cosd(teta1) -sind(teta1)*cosd(alpha1) sind(teta1)*sind(alpha1) a1*cosd(teta1);
sind(teta1) cosd(teta1)*cosd(alpha1) -cosd(teta1)*sind(alpha1) a1*sind(teta1);
0 sind(alpha1) cosd(alpha1) d1;
0 0 0 1]

T12 = [cosd(teta2) -sind(teta2)*cosd(alpha2) sind(teta2)*sind(alpha2) a2*cosd(teta2);
sind(teta2) cosd(teta2)*cosd(alpha2) -cosd(teta2)*sind(alpha2) a2*sind(teta2);
0 sind(alpha2) cosd(alpha2) d2;
0 0 0 1]

T23 = [cosd(teta3) -sind(teta3)*cosd(alpha3) sind(teta3)*sind(alpha3) a3*cosd(teta3);
sind(teta3) cosd(teta3)*cosd(alpha3) -cosd(teta3)*sind(alpha3) a3*sind(teta3);
0 sind(alpha3) cosd(alpha3) d3;
0 0 0 1]

R0 = T01
R1 = T01*T12
% Matriz Total (R2)
R2 = T01*T12*T23

K = [0;0;1];

% Parâmetros individuais do Jacobiano (Z0,...,Z5), (O1,...,O6)
Z0 = K

Z1 = [R0(1,1) R0(1,2) R0(1,3);
      R0(2,1)  R0(2,2) R0(2,3);
      R0(3,1) R0(3,2) R0(3,3)]*K
  
Z2 = [R1(1,1) R1(1,2) R1(1,3);
      R1(2,1)  R1(2,2) R1(2,3);
      R1(3,1) R1(3,2) R1(3,3)]*K
  
O0 = [0;0;0];
O1 = [R0(1,4);R0(2,4);R0(3,4)]
O2 = [R1(1,4);R1(2,4);R1(3,4)]
O3 = [R2(1,4);R2(2,4);R2(3,4)]

%Valores individuais dos Jacobianos (J1,...,J6)
J1 = [cross(Z0,(O3 - O0)); Z0] %Eixo Rotacional, se for Prismático Muda Para J1 = [Z0; 0]
J2 = [cross(Z1,(O3 - O1)); Z1] %Eixo Rotacional, se for Prismático Muda Para J2 = [Z1; 0]
J3 = [cross(Z2,(O3 - O2)); Z2] %Eixo Rotacional, se for Prismático Muda Para J3 = [Z2; 0]

%Matriz do Jacobiano Total (J)
J = [J1 J2 J3];

%Velocidade esperada do End-Effector (V)
V = J*[Vm1 Vm2 Vm3]'

%Exibindo os resultados
disp('Jacobiano:');
disp(J);
disp('Velocidade esperada:');
disp(V);