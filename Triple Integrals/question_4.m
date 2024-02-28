%a solid E lies within the cylinder x^2+y^2 = 1, below the plane z = 4, and above the paraboloid z = 1-(x^2+y^2). 
%the density at any point is proportional to its distance from the axis of the cylinder. 
%Find the mass of E (NOT IN SYLLABUS)

%density funciton is given as, f(x, y, z) = Kr, where K is the
%proportionality constant
%here we have used cylindrical polar coordinates

clc

syms r z theta K

Ma = int(int(int((K*r)*r, z, 1-r^2, 4), r, 0, 1), theta, 0, 2*pi)             %the integration

x = r*cos(theta)
y = r*sin(theta)
s = sym(4)                                                                     %cut by the plane z = 4 (bounded by that plane)
fsurf(x, y, 1-r^2, [0 1 0 2*pi], "g", "EdgeColor", "none");                    %plotting paraboloid
hold on
fsurf(1*cos(theta), 1*sin(theta), r, "y",[0 4 0 2*pi], "EdgeColor", "none");   %plotting cylinder or radius 1 with height z = 4
fsurf(x, y, s, [0 1 0 2*pi], "b", "EdgeColor", "none");                        %plotting circular plane z = 4

hold on;

axis equal;
xlabel("x");
ylabel("y");
zlabel("z");
alpha 0.5;                                                                     %for clarity