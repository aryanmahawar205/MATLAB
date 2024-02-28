%Evaluate the triple integral (for volume) over E, 
% where the integrand is z dV, 
% where E is enclosed by the spheres x^2+y^2+z^2 = 1 
% and x^2+y^2+z^2 = 4 in the first octant
%(Concentric Spheres Problem)
%(Spherical Polar Coordinates)

clc
clear all
syms phi rho theta
Sol = int(int(int((rho*cos(phi))*(rho)^2*sin(phi), rho, 1, 2), phi, 0, pi/2), theta, 0, pi/2)
rho = 1;
x = rho*sin(phi)*cos(theta);
y = rho*sin(phi)*sin(theta);
z = rho*cos(phi);
fsurf(x, y, z, [0 pi/2 0 pi/2], "g", "MeshDensity", 20)
hold on;
rho = 2
x = rho*sin(phi)*cos(theta);
y = rho*sin(phi)*sin(theta);
z = rho*cos(phi);
fsurf(x, y, z, [0 pi/2 0 pi/2], "b", "MeshDensity", 20)