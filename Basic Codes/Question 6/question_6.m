%this code will find the tangent line at a point

clear all

syms x

y = input("Enter the function 'f' in terms of x - ")
x1 = input("Enter the 'x' value at which the tangent meets - ")

D = [x1-2, x1+2]

ezplot(y, D)

hold on

yd = diff(y, x);
slope = subs(yd, x, x1);
y1 = subs(y, x, x1);

plot(x1, y1, 'Ko')

Tgtline = slope*(x-x1) + y1

ezplot(Tgtline, D)