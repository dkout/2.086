function [vrdot]=vortex_function(t,vr,alpha)
    vrdot(4:6,1)=vr(1:3,1);


    k_matrix=[2,-1,-1;-1,2,-1;-1,-1,2];
    p=1/3*k_matrix*vr(4:6,1);


    u_x=10*(vr(6,1)-vr(5,1))/norm(p)^2;
    u_y=10*(vr(4,1)-vr(6,1))/norm(p)^2;
    u_z=10*(vr(5,1)-vr(4,1))/norm(p)^2;
    
    %{
    vrdot(1,1)=alpha*(u_x-vr(1,1))*abs(u_x-vr(1,1));
    vrdot(2,1)=alpha*(u_y-vr(2,1))*abs(u_y-vr(2,1));
    vrdot(3,1)=alpha*(u_z-vr(3,1))*abs(u_z-vr(3,1));
    %}
    
    u=[u_x;u_y;u_z];
    vrdot(1:3,1)=alpha*[u-vr(1:3,1)]*norm(u-vr(1:3,1));


end


    
    