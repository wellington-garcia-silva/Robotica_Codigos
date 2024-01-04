function ITAE = objective_function_ITAE(x)
global Kp Ki Kd
Kp=x(1);
Ki=x(2);
Kd=x(3);
time=0:0.1:50;
[T]=sim('dp_pid2',time);
%IAE =(sum(abs(erro)));
ITAE = sum(abs(erro).*T)