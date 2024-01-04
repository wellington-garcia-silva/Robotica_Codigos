function x = euler(phi,teta,psi)

x = [(cosd(phi)*cosd(teta)*cosd(psi) - sind(phi)*sind(psi))   (-cosd(phi)*cosd(teta)*sind(psi) - sind(phi)*cosd(psi)) (cosd(phi)*sind(teta)) 0;
     (sind(phi)*cosd(teta)*cosd(psi) + cosd(phi)*sind(psi))   (-sind(phi)*cosd(teta)*sind(psi) + cosd(phi)*cosd(psi)) (sind(phi)*sind(teta)) 0;
     (-sind(teta)*cosd(psi))                                  (sind(teta)*sind(psi))                                  cosd(teta)             0;
     0                                                         0                                                      0                      1]
end