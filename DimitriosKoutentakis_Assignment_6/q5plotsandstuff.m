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

t_f = 60*60*24*365*5;
deltaT = 500000;

[ r, drdt, theta ] = Earth_Motion( A,r_0,drdt_0,theta_0,t_f,deltaT );
x_dist=zeros(length(r),1);
y_dist=zeros(length(r),1);
Es=zeros(length(r),1);

for i=1:length(r)
    x_dist(i)=r(i)*cos(theta(i));
    y_dist(i)=r(i)*sin(theta(i));
    Es(i)=0.5*((drdt(i))^2+(A^2/(r(i)^2)))-G*M/(r(i));
end
times=(1:length(r))*deltaT;

clf;
clf;
figure(1);
plot(x_dist,y_dist);
xlabel('X');
ylabel('Y');
title('Trajectory');
text(-1.5*10^11, -1.5*10^11,'\Deltat=500000s');

figure(2);
plot(times, Es);
xlabel('Time [s]');
ylabel('Energy per unit mass [J/kg]');
title('Energy of System');
