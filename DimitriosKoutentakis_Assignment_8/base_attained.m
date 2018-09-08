function [ v_variates_vec ] = base_attained( p_vec, n )


vector=rand(1,n);
v_variates_vec=zeros(1,n);

theta1=p_vec(1);
theta2=p_vec(2)+p_vec(1);
theta3=p_vec(3)+p_vec(2)+p_vec(1);
theta4=p_vec(4)+p_vec(3)+p_vec(2)+p_vec(1);
theta5=p_vec(5)+p_vec(4)+p_vec(3)+p_vec(2)+p_vec(1);


for i=1:n
    if vector(i) <= theta1
        v_variates_vec(i)=0;
    end
    if vector(i) <= theta2 & vector(i)>theta1
        v_variates_vec(i)=1;
    end
    if vector(i) <= theta3 & vector(i)>theta2
        v_variates_vec(i)=2;
    end
    if vector(i) <= theta4 & vector(i)>theta3
        v_variates_vec(i)=3;
    end
    if vector(i) <= theta5 & vector(i)>theta4
        v_variates_vec(i)=4;
    end
    
end

return

end

