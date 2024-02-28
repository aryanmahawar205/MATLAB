%Draw a hemisphere of radius 3 
% with centre at the origin (0,0,0)
%(Spherical Polar Coordinates)

clc
clear all
syms z phi rho theta
rho = 3
x = rho*sin(phi)*cos(theta);
y = rho*sin(phi)*sin(theta);
z = rho*cos(phi);
fsurf(x, y, z, [0 pi/2 0 2*pi], "g", "MeshDensity", 20)