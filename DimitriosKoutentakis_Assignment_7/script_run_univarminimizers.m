
close all

fcn = @(x) 0.025*x.^5 - 0.0625*x.^4 - 0.333*x.^3 + x.^2;
% seek global minimizer over some interval in x

options = optimset('TolX',1e-8); % tolerance on the minimizer

x_vec = linspace(-1,4,1000);
plot(x_vec,fcn(x_vec));
fminbnd(fcn,-1,4,options) % no asperand because fcn is defined in-line in current workspace
% note function returns minimizer, not minimum (similar for fminsearch below)

x_vec = linspace(1,4,1000);
figure
plot(x_vec,fcn(x_vec));
fminbnd(fcn,1,4,options)

x_vec = linspace(-1,4,1000);
figure
plot(x_vec,fcn(x_vec));
fminsearch(fcn,3.5,options)
fminsearch(fcn,1.5,options)

% EXPLAIN DIFF FUNCTION PROGRAM AND FUNCTION MATH

% before applying any optimization software:
% always get a sense of the function by plotting fcn(x) (admittedly more difficult in higher
% dimensions, but...)

% unless the function fcn clearly has a single local minimum, always
% consider several different starting points, informed by your plotting
% exercise to the extent possible, to (hopefully) find the global minimum

% fminbnd is perhaps a bit more likely than fminsearch to find the global
% minimizer, but fminbnd can fail, and there is little recourse; on the other
% hand, fminsearch permits "multistart"

% always sketch the "architecture" of your code and who calls whom before
% writing any of the pieces; for example:
% driver_script sets up the parameters and calls fminbnd or fminsearch with argument @fcn (for fcn(x) defined in fcn.m); 
% fcn (in fcn.m) defines the function you wish to minimize; 
% fcn calls ode45 (**if the quantity you wish to minimize is related to the solution of an ode**)
% with first input argument to ode45 the dynamics function for your ode, say @wdot_my_ode (for wdot_my_ode(t,y) defined in wdot_my_ode.m);
% use anonymous functions on the fly to always make sure the functions you
% pass have precisely the inputs expected by the receiving program

% matlab also has functions for multivariate unconstrained and constrained
% minimization