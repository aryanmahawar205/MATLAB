%Draw a sphere of radius 5, 
% centred at the origin (0,0,0) 
% (Spherical Polar Coordinates)

clc
clear all
syms z phi rho theta
rho = 5
x = rho*sin(phi)*cos(theta);
y = rho*sin(phi)*sin(theta);
z = rho*cos(phi);
fsurf(x, y, z, [0 pi 0 2*pi], "g", "MeshDensity", 20)