%find the volume of the solid that lies under the 
%paraboloid z = x^2 + y^2 and above the xy - plane, 
%and inside the cylinder x^2 + y^2 = 2x

clc
syms r theta z r1
V = int(int((r^2)*r, r, 0, 2*cos(theta)), theta, -pi/2, pi/2)
r = 2*cos(theta)
x = r*cos(theta)
y = r*sin(theta)
fsurf(x, y, z, [0 2*pi 0 1], "MeshDensity", 16)
axis equal;
xlabel("x");
ylabel("y");
zlabel("z");
zticks(0:1.5)
hold on
fsurf(r1*cos(theta), r1*sin(theta), r1^2, [0 1 0 2*pi], "MeshDensity", 20)