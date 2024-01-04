addpath('codigoslista5')%só colocar o nome da pasta que está os códigos -> as 2 estão dentro de testeFuncao

%teta = 0
%alfa = -90
%d = 0.4
%a = 0

%saida = funcaoDH(teta,alfa,a,d)
R1 = funcaoDH(0,0.4,0,-90)%teta,d,a,alfa
R2 = funcaoDH(90,0.4,0,90)
R3 = funcaoDH(0,0.2,0,0)
T = [0;0;0;1]
R = R3*R2*R1*T
Rt = R1*R2*R3*T%Faz mais sentido


%disp(saida)