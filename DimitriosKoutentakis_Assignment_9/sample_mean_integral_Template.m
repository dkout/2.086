function [int_est] = sample_mean_integral(n,upts)

% transform upts to account for the interval [-5,5]

points=10*upts-5*ones(length(upts),6);

% Calculate int_est

x=points(:,[1:3]);
y=points(:,[4:6]);

xminusy=x-y;

expx=exp(-x.^2/2);
expy=exp(-y.^2/2);

for i=1:length(upts,1)
    integrand=norm(xminusy)*expy*expx;
    



return

end

