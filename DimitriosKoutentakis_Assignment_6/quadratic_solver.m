function [x1_out, x2_out] = quadratic_solver(a,b,c)

D=b^2-4*a*c;
x1_out=(-b-sqrt(D))/(2*a);
x2_out=(-b+sqrt(D))/(2*a);


end
