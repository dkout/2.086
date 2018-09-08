%{
Inputs:
    r0 - (3x1)
    v0 - (3x1)
    alpha
    tFinal
Outpus:
    rFinal - (3x1)

vr=[vx;vy;vz;rx;ry;rz]
%}

vr_0=[v0;r0];

odefun=@(t,vr) vortex_function(t,vr,alpha);
[times,vr_ans]=ode45(odefun,[0 tFinal], vr_0);

rFinal_row=vr_ans(end, 4:6);
rFinal = rFinal_row.';
