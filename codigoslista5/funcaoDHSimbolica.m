function[dh] = funcaoDHSimbolica(teta,alfa,a,d)

dh = [cos(teta)    (-cos(teta)*cos(alfa))   (sin(teta)*sin(alfa))    (a*cos(teta))
       sin(teta)    (cos(teta)*cos(alfa))  (-sin(alfa)*cos(teta))  (a*sin(teta));
              0                 sin(alfa)              cos(alfa)            d;
              0                         0                        0             1]
end