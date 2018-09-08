function u_vec = Crank_Nicolson(u_0,lambda,f_source,t_final,J)
%**SECOND ORDER**
deltaT =t_final/J;
times=(1:J)*deltaT;
%format shortg;

u_sol=u_0;
u_sol(2)=((lambda*deltaT+2)*u_sol(1)+(f_source(times(1))+f_source(0))*deltaT)/(2-lambda*deltaT);
for j=3:J+1
u_sol(j)=((lambda*deltaT+2)*u_sol(j-1)+(f_source(times(j-1))+f_source(times(j-2)))*deltaT)/(2-lambda*deltaT);
end

u_vec=u_sol.';


end
