%find the volume of the solid bounded by the plane z = 0 and the 
%paraboloid z = 1 - x^2 - y^2 (using polar coordinates)

clc
syms r theta
V = int(int((1-r^2)*r, r, 0, 1), theta, 0, 2*pi)
fsurf(r*cos(theta), r*sin(theta), 1-r^2, [0 1 0 2*pi], "MeshDensity", 20)
axis equal;
axis([-2 2 -2 2 0 1.3])
xticks(-2:2);
yticks(-2:2);
zticks(0:1.3);
xlabel("x");
ylabel("y");