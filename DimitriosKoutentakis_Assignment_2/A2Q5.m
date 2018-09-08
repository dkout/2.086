% inputs x_vec and f_vec must be assigned outside the script
% recall that points in x_vec points are equi-distantly spaced
% output (to be assigned in the script) is Matlab variable Integral_f_h

Integral_f_h = 0.5*(((x_vec(end)-x_vec(1))/(length(x_vec)-1)))*(sum(f_vec)+sum(f_vec(2:end-1)))