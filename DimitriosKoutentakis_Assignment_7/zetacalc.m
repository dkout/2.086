clear all; close all

x0=1;
xdot0=0;
w_n=1;
tFinal=50;
IAE=0;
j=1;


for zeta=[0:0.0001:1];
    IAE=0;
    ISE=0;
    ITSE=0;
    
    func_mat=[-2*zeta*w_n,-w_n^2;1,0];
    y=xdot0;
    x=x0;
    %xy_vec=[y;x];
    odefun=@(t,xy_vec) func_mat*xy_vec;

    [times, xy_ans]=ode45(odefun, [0,tFinal], [xdot0;x0]);
    %keyboard
    x=xy_ans(:,2);

    for i=2:length(times)
        IAE=IAE+(times(i)-times(i-1))*abs(x(i));
        ISE=ISE+(times(i)-times(i-1))*(x(i)^2);
        ITSE=ITSE+(times(i)-times(i-1))*(times(i)*x(i)^2);
    end;
    %plot(times,x);
    
    IAE_vec(j)=IAE;
    ISE_vec(j)=ISE;
    ITSE_vec(j)=ITSE;
    zeta_vec(j)=zeta;
    j=j+1;
end

IAE_min=min(IAE_vec)
min_loc1=find(abs(IAE_vec-IAE_min)<0.0000001);
zeta1_min=zeta_vec(min_loc1)


ISE_min=min(ISE_vec)
min_loc2=find(abs(ISE_vec-ISE_min)<0.0000001);
zeta2_min=zeta_vec(min_loc2)

ITSE_min=min(ITSE_vec)
min_loc3=find(abs(ITSE_vec-ISE_min)<0.0000001);
zeta3_min=zeta_vec(min_loc3)


plot([1:length(IAE_vec)],IAE_vec);
hold on;
plot([1:length(ISE_vec)],ISE_vec);






