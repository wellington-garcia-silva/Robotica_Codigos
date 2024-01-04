function MSE = objective_function_MSE(x)
global Kp Ki Kd 
Kp=x(1);
Ki=x(2);
Kd=x(3);

time=0:0.1:50;

N = length(time);
[T]=sim('dp_pid2',time);
MSE =(sum(erro.^2))/N;