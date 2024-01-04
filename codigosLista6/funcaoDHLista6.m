function[dh] = funcaoDH(teta,alfa,a,d)

dh = [cosd(teta)    (-sind(teta)*cosd(alfa))   (sind(teta)*sind(alfa))    (a*cosd(teta))
       sind(teta)    (cosd(teta)*cosd(alfa))  (-sind(alfa)*cosd(teta))  (a*sind(teta));
              0                 sind(alfa)              cosd(alfa)            d;
              0                         0                        0             1]
end