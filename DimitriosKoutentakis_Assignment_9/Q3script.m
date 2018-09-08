
m=5000;


n1=10000;
n2=50000;


int1=zeros(1,m);
int2=zeros(1,m);

parfor i=1:m
    upts1=rand(n1,6);
    upts2=rand(n2,6);
    
    int1(i)= sample_mean_integral(n1,upts1);
    int2(i)= sample_mean_integral(n2,upts2);
    
end


figure(1);
histogram(int1);
title('n=10000');
figure(2);
histogram(int2);
title('n=50000');

    