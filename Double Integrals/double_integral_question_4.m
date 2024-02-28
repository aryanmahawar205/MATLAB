%volume integration with constant limits for both x and y 
%(part 2, with trigonometric function)

clc
syms x y z
int(int(y*sin(x*y), x, 1, 2), y, 0, pi)
viewSolidone(z, 0+0*x+0*y, y*sin(x*y), x, 1+0*y, 2+0*y, y, 0, pi)