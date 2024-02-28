%evaluate triple integral e^z dV, over the region E where E is 
% enclosed by the paraboloid z = 1+x^2+y^2, the cylinder x^2+y^2 = 5 and the xy plane


clc

syms x y r z theta

sol = int(int(int(exp(z)*r, z, 0, 1+r^2), r, 0, sqrt(5)), theta, 0, 2*pi)           %the integration
f = 1+(x^2+y^2);
fsurf(f, [-sqrt(5) sqrt(5) -sqrt(5) sqrt(5)]);

hold on;

fsurf(sqrt(5)*cos(theta), sqrt(5)*sin(theta), r, "y", [0 8 0 2*pi], "EdgeColor", "none");
alpha 0.5;