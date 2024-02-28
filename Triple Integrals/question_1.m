%evaluate the basic triple integral

clc

syms x y z

sol = int(int(int(6*x*z, y, 0, x+z), x, 0, z), z, 0, 1)