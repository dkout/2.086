function [ xpts_pos ] = positive_normal( mu, sigma, n )

good=0;
backup=0;

R = normrnd(mu,sigma,[1,n]);

if good==0
    for i = 1:n
        good=1;
        if R(i)<0
            good= 0;
            backup=R(randi([1:n]));
            R(i)=backup;
        end
    end
end

xpts_pos=R;

return

end

