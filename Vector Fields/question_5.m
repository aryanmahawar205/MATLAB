%Determine whether or not the the vector field, 
%F(x, y, z) = (y^2z^3)i + (2xyz^3)j + (3xy^2z^2)k 
%is conservative or not? 
%If it is conservative, find a function f, 
%such that F = gradf

clc
clear all
syms x y z real
F = input("Enter the vector as i, j, k order in vector form - ");
curl_F = curl(F, [x, y, z])

if (curl_F == [0 0 0])
    f = potential(F, [x y z])
else
    sprintf("Curl_F is not equal to zero")
end