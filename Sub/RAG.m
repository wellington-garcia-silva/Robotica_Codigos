function x = RAG(phi,teta,psi)

x = [(cosd(phi)*cosd(teta))      (-cosd(phi)*sind(teta)*sind(psi)-sind(phi)*cosd(psi))    (cosd(phi)*sind(teta)*cosd(psi)+sind(phi)*sind(psi)) 0;
     (sind(phi)*cosd(teta))      (-sind(phi)*sind(teta)*sind(psi)+cosd(phi)*cosd(psi))    (sind(phi)*sind(teta)*cosd(psi)-cosd(phi)*sind(psi)) 0;
     (-sind(teta))                (cosd(teta)*sind(psi))                                  (cosd(teta)*cosd(psi))                               0;
      0                          0                                                         0                                                   1]
    
end
