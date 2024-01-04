clear;clc;
q0 = 30
q1 = 75
t0 = 0 
t1 = 5


% Parâmetros da trajetória
t = linspace(t0, t1, 100);

% Coeficientes do polinômio
a0 = q0;
a1 = (q1 - q0) / (t1 - t0);
a2 = (3 * (q1 - q0) - (t1 - t0) * (a1^2)) / (2 * (t1 - t0)^2);
a3 = (-(t1 - t0) * (a1^3) + 3 * (q1 - q0) - (t1 - t0) * (a2^2)) / (6 * (t1 - t0)^3);
disp(a0)
disp(a1)
disp(a2)
disp(a3)
% Cálculo da trajetória
%q = a0 + (a1 * t) + a2 * (t^2) + a3 * (t^3);


