%Evaluate the triple integral over E, 
% where the integrand is e^sqrt(x^2+y^2+z^2) dV, 
% where E is enclosed by the sphere x^2+y^2+z^2 = 9 
% in the first octant
%(Spherical Polar Coordinates)


clc
clear all
syms phi rho theta
sol = int(int(int((exp(rho))*(rho)^2*sin(phi), rho, 0, 3), phi, 0, pi/2), theta, 0, pi/2)
rho = 3
x = rho*sin(phi)*cos(theta);
y = rho*sin(phi)*sin(theta);
z = rho*cos(phi);
fsurf(x, y, z, [0 pi/2 0 pi/2], "g", "MeshDensity", 20)