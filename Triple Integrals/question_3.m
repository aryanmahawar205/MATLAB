%evaluate the triple integral y dV, where the region E is (dV = dzdydx)
%bounded by the planes x = 0, y = 0, z = 0, and 2x+2y+2z = 4

clc

syms x y z
sol = int(int(int(y, z, 0, 4-2*x-2*y), y, 0, 2-x), x, 0, 2)
viewSolid(z, 0+0*x*y, 4-2*x-2*y, y, 0+0*x, 2-x, x, 0, 2);
axis equal;
grid on;