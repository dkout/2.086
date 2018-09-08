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

t_f = 60*60*24*365*5; %five years
j=1;
for deltaT=10000:10000:100000
    [ r, drdt, theta ] = Earth_Motion( A,r_0,drdt_0,theta_0,t_f,deltaT );
    Es=zeros(length(r),1);
    for i=1:length(r)
        Es(i)=0.5*((drdt(i))^2+(A^2/(r(i)^2)))-G*M/(r(i));    
    end
    error(j)=abs(Es(end)-Es(1));
    deltaTimes(j)=deltaT;
    length_r(j)=length(r);
    j=j+1;
end
clf;
plot(log(deltaTimes),log(error));
title('Error vs \Deltat');
xlabel('log(\Deltat)');
ylabel('log(Error)');

