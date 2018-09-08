% script inputs time_vec and z_meas_vec must be assigned outside script


X=[ones(length(time_vec),1), time_vec, time_vec.^2];
Y=z_meas_vec;

beta_hat= X\Y;

dt=(time_vec(end)-time_vec(1))/(length(time_vec)-1);


accel_fd = 2*(z_meas_vec(2)-2*z_meas_vec(3)+z_meas_vec(4))/(dt)^2;
accel_fit = 2*beta_hat(2);