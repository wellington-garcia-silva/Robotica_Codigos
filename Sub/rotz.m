function z = rotz(teta)

z  = [cosd(teta) -sind(teta) 0 0;
            sind(teta)  cosd(teta) 0 0;
            0           0          1 0;
            0           0          0 1]
end