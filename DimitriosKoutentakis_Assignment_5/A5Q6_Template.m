%I_f=0.5*((dt)^-2)*z_2((x_if-t_3).*(x_if-t_4))-((dt)^-2)*z_3*((x_if-t_2).*(x_if-t_4))+0.5*((dt)^-2)*z_4*((x_if-t_2).*(x_if-t_3));


x_if = [0:0.0001:0.14];
ta=x_if-time_vec(2)
tb=x_if-time_vec(3)
tc=x_if-time_vec(4)
h_2=((time_vec(3)-time_vec(2)))^-2

I_fa=0.5*h_2*z_meas_vec(2)*(tb.*tc);
I_fb=h_2*z_meas_vec(3)*(ta.*tc);
I_fc=0.5*h_2*z_meas_vec(4)*(ta.*tb);

I_f=I_fa-I_fb+I_fc