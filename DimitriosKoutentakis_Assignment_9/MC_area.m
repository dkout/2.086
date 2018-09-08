function [area_est, area_conf_int] = MC_area(alpha,c,n,x1pts,x2pts)

j=0;

rect_area=4*c^2;

zeta=1.96;

for i=1:length(x1pts)
    if (x1pts(i))^2+(x2pts(i))^2<=.75 | (x1pts(i)-alpha)^2+(x2pts(i))^2<=.75
        j=j+1;
    end
end

area_est= (j/length(x1pts))*rect_area;

theta=j/length(x1pts);


if n*theta>10 && n*(1-theta)>10
    conf_int_min=(theta+zeta^2/(2*n)-zeta*sqrt(theta*(1-theta)/n+zeta^2/(4*n^2)))/(1+zeta^2/n);
    conf_int_max=(theta+zeta^2/(2*n)+zeta*sqrt(theta*(1-theta)/n+zeta^2/(4*n^2)))/(1+zeta^2/n);
    area_conf_int=rect_area*[conf_int_min,conf_int_max];
else
    area_conf_int=[-1,1];
end


return

end

