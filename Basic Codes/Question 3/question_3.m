%this code will plot multiple plots without using 'hold on' statement

clear all

x = linspace(0, 1, 200);

plot(x, sin(x), x, cos(x), x, x.^3, x, tan(x), 'Linewidth', 2.0)

legend('sin(x)', 'cos(x)', 'x^3', 'tan(x)')