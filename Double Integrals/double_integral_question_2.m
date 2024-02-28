%find the volume of the solid that lies under the paraboloid z = x^2 + y^2 
%and above the region D in the xy-plane bounded by the lines y = 2x 
%and the parabola y = x^2

clc
syms x y z
vol = int(int(x^2+y^2, x, y/2, sqrt(y)), y, 0, 4)
viewSolidone(z, 0+0*x*y, x^2+y^2, x, y/2, sqrt(y), y, 0, 4);
grid on;