addpath('CodigosAtividadeAvaliativa')%só colocar o nome da pasta que está os códigos -> as 2 estão dentro de testeFuncao

%teta = 0
%alfa = -90
%d = 0.4
%a = 0

%saida = funcaoDH(teta,alfa,a,d)
R1 = denavit(0,330,15,-90)%(teta,d,a,alfa)
R2 = denavit(90,0,0,90)
R3 = denavit(0,0,0,-90)
R4 = denavit(90,305,0,90)
R5 = denavit(0,0,0,90)
R6 = denavit(0,80,0,0)
%T = [0;0;0;1]
R = R6*R5*R4*R3*R2*R1


%disp(saida)