function IAE = objective_function_IAE(x)
global Kp Ki Kd 
Kp=x(1);
Ki=x(2);
Kd=x(3);
time=0:0.1:50;%estava 50
[T]=sim('dp_pid',time);
IAE =(sum(abs(erro)));
end