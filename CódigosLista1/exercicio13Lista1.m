%Exercicio correto
%Porém prestar atenção nas matrizes
%Criar o mais rápido possível as funções
tetaz = 90
n1 = 3
o1 = 5
tetan = 90
tetay2 = 90
B = [0 1 0 1;
     1 0 0 1;
     0 0 -1 1;
     0 0 0 1]
 rotz = [cosd(tetaz) -sind(tetaz) 0 0;
         sind(tetaz)  cosd(tetaz) 0 0;
         0      0       1 0;
         0      0       0 1]
 transn = [1 0 0 n1;
         0 1 0 0;
         0 0 1 0;
         0 0 0 1]
transo = [1 0 0 0;
          0 1 0 o1;
          0 0 1 0;
          0 0 0 1]
 rotn = [1 0          0          0;
        0 cosd(tetan) -sind(tetan) 0;
        0 sind(tetan)  cosd(tetan)  0;
        0 0          0          1]
 roty = [ cosd(tetay2) 0 sind(tetay2) 0;
         0 1 0 0;
         -sind(tetay2) 0 cosd(tetay2) 0;
         0 0 0 1] 
 Bnovo = roty*rotz*B*transn*transo*rotn