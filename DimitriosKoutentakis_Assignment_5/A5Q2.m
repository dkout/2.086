% script inputs V and D_meas must be assigned outside script

X = [ones(length(V),1),log(V)];

Y = log(D_meas);

beta_hat = X\Y;

C_hat = exp(beta_hat(1));
gamma_hat = -beta_hat(2);