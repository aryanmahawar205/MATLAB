%use MATLAB to draw the solid enclosed by the paraboloids z = x^2+y^2 and z = 5-x^2-y^2

%here we use cylindrical polar coordinates

clc

syms r z theta
x = r*cos(theta);
y = r*sin(theta);
fsurf(x, y, 5-r^2, [0 sqrt(5), 0 2*pi], "g", "EdgeColor", "none");

hold on;

fsurf(x, y, r^2, [0 sqrt(5) 0 2*pi], "y", "EdgeColor", "none");

axis equal;
xlabel("x");
ylabel("y");
zlabel("z");
alpha 0.5;