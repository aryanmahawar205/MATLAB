%evaluate the triple integral 6xy dv, where e lies under the plane z = 1+x+y
%and above the xy plane bounded by the curves y = root x, y = 0, x = 1

clc

syms x y z
sol = int(int(int(6*x*y, z, 0, 1+x+y), y, 0, sqrt(x)), x, 0, 1)
viewSolid(z, 0+0*x*y, 1+x+y, y, 0+0*x, sqrt(x), x, 0, 1);
axis equal;
grid on;