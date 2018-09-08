function [r, drdt, theta] = Earth_Motion(A,r_0,drdt_0,theta_0,t_f,deltaT )

% Define constants
G = 6.67408e-11;
M = 1.989e30;
n=ceil(t_f/deltaT);


y_sol=drdt_0;
r_sol=r_0;
theta_sol=theta_0;

for j=2:n+1
    r_sol(j)=r_sol(j-1)+deltaT*y_sol(j-1);
    y_sol(j)=y_sol(j-1)+deltaT*(-G*M/((r_sol(j-1))^2)+(A^2)/((r_sol(j-1))^3)); %**Dtheta/DT??**
    theta_sol(j)=theta_sol(j-1)+deltaT*A/(r_sol(j-1)^2);
end

r=r_sol.';
drdt=y_sol.';
theta=theta_sol.';


end
