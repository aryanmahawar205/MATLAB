%volume integration with constant limits for both x and y
%(part 1, with algebraic function)

clc
syms x y z
int(int(x-3*y^2+0*y, y, 1, 2), x, 0, 2)
viewSolid(z, 0+0*x+0*y, x-3*y^2+0*y, y, 1+0*x, 2+0*y, x, 0, 2)