%Find the gradient vector field of f(x, y) = x^2y-y^3. 
%Plot the gradent vector field together 
%with a contour map of f. 
%How are they related?

clc
clear all
syms x y
f = input("Enter the function f(x, y) - ");
F = gradient(f)
P = inline(vectorize(F(1)), "x", "y");
Q = inline(vectorize(F(2)), "x", "y");
x = linspace(-2, 2, 10);
y = x;
[X, Y] = meshgrid(x, y);
U = P(X, Y);
V = Q(X, Y);
quiver(X, Y, U, V, 1)
axis on;
xlabel("x")
ylabel("y")
zlabel("z")
hold on;
ezcontour(f, [-2 2])