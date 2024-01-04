function z = rotz_simbolico(teta)

z  = [cos(teta) -sin(teta) 0 0;
            sin(teta)  cos(teta) 0 0;
            0           0          1 0;
            0           0          0 1]
end