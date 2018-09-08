function u_vec = Euler_Backward(u_0,lambda,f_source,t_final,J)
%**FIRST ORDER** 
deltaT =t_final/J;
times=(1:J)*deltaT;

u_sol=u_0;

for j=2:J+1
u_sol(j)=(u_sol(j-1)+f_source(times(j-1))*deltaT)/(1-lambda*deltaT);
end

u_vec=u_sol.';

end
