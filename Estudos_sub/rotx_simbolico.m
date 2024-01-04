function x = rotx_simbolico(teta)

x = [1  0           0           0;
     0  cos(teta) -sin(teta)  0;
     0  sin(teta)  cos(teta)  0;
     0  0           0           1]
end