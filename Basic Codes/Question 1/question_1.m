%this code is to form a circle of given radius

clear all

syms r a b

r = input("Enter the radius of the circle - ");
a = input("Enter the x coordinate of the centre of the circle - ");
b = input("Enter the y coordinate of the centre of the circle - ");

t = linspace(0, 2*pi, 100);

x = a+r*cos(t)
y = b+r*sin(t)

axis equal

plot(x,y)

xlabel("x-coordinate")
ylabel("y-coordinate")

title("(x-a)^2 + (y-b)^2 = r^2")