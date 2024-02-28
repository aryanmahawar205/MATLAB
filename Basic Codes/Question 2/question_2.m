%this code is to plot multiple plots using the 'hold on' statement

clear all

x = linspace(0, 1, 100);

plot(x, x.^2, 'r', 'Linewidth', 2.0)
hold on

plot(x, cos(x), 'g', 'Linewidth', 2.0)
hold on

plot(x, sin(x), 'b', 'Linewidth', 2.0)
hold on

plot(x, exp(x), 'c', 'Linewidth', 2.0)

legend('x^2', 'cos(x)', 'sin(x)', 'e^x')