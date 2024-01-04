function x = euler_simbolico(phi,teta,psi)

x = [(cos(phi)*cos(teta)*cos(psi) - sin(phi)*sin(psi))   (-cos(phi)*cos(teta)*sin(psi) - sin(phi)*cos(psi)) (cos(phi)*sin(teta)) 0;
     (sin(phi)*cos(teta)*cos(psi) + cos(phi)*sin(psi))   (-sin(phi)*cos(teta)*sin(psi) + cos(phi)*cos(psi)) (sin(phi)*sin(teta)) 0;
     (-sin(teta)*cos(psi))                                  (sin(teta)*sin(psi))                                  cos(teta)             0;
     0                                                         0                                                      0                      1]
end