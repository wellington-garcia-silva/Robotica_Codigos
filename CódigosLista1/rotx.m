function R01 = rotx(theta)
    R01 = [1 0          0         0;
        0 cosd(theta) -sin(theta) 0;
        0 sin(theta)  cos(theta)  0;
        0 0          0          1];
end