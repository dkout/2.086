% Please include your solution to a pdf file with the name A6Q4.pdf
% grade_o_matic will not provide credit for this question

f_source=@(t)0.*t;
lambda=-1;
u_0=1;
t_final=10;
J=[100:10:1500];

e_eb=zeros(1,length(J));
e_cn=zeros(1,length(J));
deltaT=zeros(1,length(J));
i=1;

for j = J;
    deltaT(i)=t_final/j;
    t=linspace(0,t_final,j+1);
    times=(1:j)*deltaT(i);

    u_real(1:j+1,i)=[exp(-t)].';
    u_cn(1:j+1,i)=Crank_Nicolson(u_0,lambda,f_source,t_final,j);
    u_eb(1:j+1,i)=Euler_Backward(u_0,lambda,f_source,t_final,j);

    e_eb(i)= abs(u_real(j+1,i)-u_eb(j+1,i));  %abs((u_real(end)-u_eb(end))/(deltaT(i)-lambda*u_real(end)-f_source(times(i))));
    e_cn(i)=abs(u_real(j+1,i)-u_cn(j+1,i));
    i=i+1;
end

clf;

plot((log(deltaT)), (log(e_eb)));
hold on;
plot((log(deltaT)), (log(e_cn)));
legend('Euler Backwards', 'Crank Nicholson');
xlabel('log(\DeltaT)');
ylabel('log(e)');