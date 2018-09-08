function [int_est] = sample_mean_integral(n,upts)

% transform upts to account for the interval [-5,5]

points=10*upts-5*ones(n,6);

% Calculate int_est

x=points(:,[1:3]);
y=points(:,[4:6]);

xminusy=x-y;

x_norm=sqrt((x(:,1)).^2+(x(:,2)).^2+(x(:,3)).^2);
y_norm=sqrt((y(:,1)).^2+(y(:,2)).^2+(y(:,3)).^2);
xminusy_norm=sqrt((xminusy(:,1)).^2+(xminusy(:,2)).^2+(xminusy(:,3)).^2);

expx=exp(-x_norm.^2/2);
expy=exp(-y_norm.^2/2);

sum=0;

for i=1:n
    integrand=xminusy_norm(i)*expy(i)*expx(i);
    sum=sum+integrand; 
    
end

int_est=10^6*sum/n;


return
end

