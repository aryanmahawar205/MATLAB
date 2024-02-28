clc

syms x y

f(x,y) = input("Enter the function f(x,y) - ");

p = diff(f,x);                                                              %differentiation of f wrt x
q = diff(f,y);                                                              %differentiation of f wrt y

[ax, ay] = solve(p,q);                                                      %to get the critial points

ax = double(ax);
ay = double(ay);

r = diff(p,x);                                                              %differentiaion of p wrt x
s = diff(p,y);                                                              %mixed derivative
t = diff(q,y);                                                              %second derivative of q wrt y

D = r*t-s^2;                                                                %discriminant
figure
fsurf(f);                                                                   %to get surface figure

legstr = {"Function Plot"};                                                 %for Legend appearance as string var

for i = 1:size(ax)
    T1 = D(ax(i), ay(i));
    T2 = r(ax(i), ay(i));
    T3 = f(ax(i), ay(i));
    
    if (double(T1) == 0)
        sprintf("At (%f,%f) further investigation is required",ax(i))       %here %f means floating point
        legstr = [legstr, {"Case of further investigation"}];
        mkr = "ko";                                                         %marking the line
    
    elseif (double(T1)<0)
        sprintf("The point (%f,%f) is a saddle point",ax(i),ay(i))
        legstr = [legstr,{"Saddle Point"}];                                 %to update the legend
        mkr = "bv";                                                         %marking the line
    
    else
        if (double(T2)<0)
            sprintf("The maximum value of the function is f(%f,%f)=%f",ax(i),ay(i),T3)
            legstr = [legstr, {"Minimum value of the function"}];           %to update legend 
            mkr = "r*";                                                     %marking the line
        end
    end
    
    hold on
    plot3(ax(i),ay(i),T3,mkr,"LineWidth",4);

end

legend(legstr,"Location","best");