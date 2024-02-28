clc
clear vars

syms x y L

f = input("Enter the function f(x,y) - ");
g = input("Enter the contraint function g(x,y) - ");

F = f + L*g;

gradF = jacobian(F, [x, y]);

[L,x1,y1] = solve(g, gradF(1), gradF(2), "Real", true);       %solving only for real x

x1 = double(x1); y1 = double(y1);

xmx = max(x1);   xmn = min(x1);                               %finding max and min of x-coordinates for the plot
ymx = max(y1);   ymn = min(y1);                               %finding max and min of y-coordinates for the plot

range = [xmn-3 xmx+3 ymn-3 ymx+3];                            %setting range for the plot

ezmesh(f, range);

hold on;
grid on;

h = ezplot(g, range);

set(h, "LineWidth", 2);

tmp = get(h, "contourMatrix");                               %tmp = for temporary use

xdt = tmp(1, 2:end);                                          %avoiding fitst x-data point
ydt = tmp(2, 2:end);                                          %avoiding first y-data point

zdt = double(subs(f, {x, y}, {xdt, ydt}));

plot3(xdt, ydt, zdt, "-r", "LineWidth", 2);
axis(range);

for i = 1:numel(x1)                                           %means numerical x1, numel = numerical function
    G(i) = subs(f, [x, y], [x1(i), y1(i)])
    plot3(x1(i), y1(i), G(i), "*k", "MarkerSize", 20);
end

title("Constrained Maxima/Minima")