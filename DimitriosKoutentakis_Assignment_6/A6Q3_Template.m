% Define input parameters outside the script

% Call the Crank Nicolson function
u_vec = Crank_Nicolson(u_0,lambda,f_source,t_final,J);
