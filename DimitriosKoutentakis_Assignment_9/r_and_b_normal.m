function [ xpts_r_and_b ] = r_and_b_normal( mu, sigma, n )

good=0;
backup=0;

R = normrnd(mu,sigma,[1,n]);

while good==0
    for i = 1:n
        good=1;
        while R(i)<0|R(i)>100;
            good= 0;
            backup=R(randi(n));
            R(i)=backup;
        end
    end
end

xpts_r_and_b=R;

return

end
