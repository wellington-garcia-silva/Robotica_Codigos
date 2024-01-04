function y = roty(teta)

y  = [cosd(teta)  0 sind(teta) 0 ;
      0           1 0          0;
      -sind(teta) 0 cosd(teta) 0;
      0           0 0          1]
      
end