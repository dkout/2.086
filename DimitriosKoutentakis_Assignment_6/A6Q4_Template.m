% Please include your solution to a pdf file with the name A6Q4.pdf
% grade_o_matic will not provide credit for this question

f_source=@(t)1;
lambda=-1;
u_0=0;
t_final=10;
J=100;
t=linspace(0,t_final,J);


u_real=1-exp(-t);

u_cn=Crank_Nicolson(u_0,lambda,f_source,t_final,J);

u_
