

%tFinal
%qdot0n
%m
%k
%n


M=zeros(n, n);
K_temp=zeros(n, n);

for i=2:n-1
    M(i,i)=m;
    K_temp(i,i-1:i+1)=[-1,2,-1];
end

K_temp(1,1:2)=[2,-1];
K_temp(n,n-1:n)=[-1,1];
K=K_temp*k;

M(1,1)=m;
M(n,n)=m;

I=eye(n,n);
M_prime=-inv(M);

qdot=[zeros(n-1,1);qdot0n]; %qDot vector
q_pos=zeros(n,1);  %q vector

q_vec=[qdot;q_pos]; % qDot;q
q_init=q_vec;

matrix_fun=[zeros(n,n),M_prime*K; I,zeros(n,n)]; %2n x 2n

odefun=@(t,q_vec) matrix_fun *q_vec;  

[times, q_ans]=ode45(odefun, [0,tFinal], q_init);

q1Final=q_ans(end,n+1);
qnFinal=q_ans(end,end);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



