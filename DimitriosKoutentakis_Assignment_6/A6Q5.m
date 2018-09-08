% Please include your solution to a pdf file with the name A6Q5.pdf
% grade_o_matic will not provide credit for this question

% Define general parameters 
e = 0.0167; 		% earth elliptical trajectory eccentricity
a = 1.496e11; 		% elliptical trajectory semimajor axis size
G = 6.67408e-11;
M = 1.989e30;

% Parameters for perihelion location (initial condition)
r_0 = (1-e)*a;
drdt_0 = 0;
dthetadt_0=30300/r_0;
A = r_0*r_0*dthetadt_0;
theta_0 = 0;

t_f = 60*60*24*365;
deltaT = 10000;

[ r, drdt, theta ] = Earth_Motion( A,r_0,drdt_0,theta_0,t_f,deltaT );
