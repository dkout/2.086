% script inputs F_normal, A_surface, Ffstaticmaxmeas must be assigned outside script

X=[ones(length(F_normal),1),log(F_normal),log(A_surface)];
Y=log(F_fstaticmaxmeas);

beta_hat=X\Y;

C_hat = exp(beta_hat(1));
alpha_hat = beta_hat(2);
eta_hat = beta_hat(3);


