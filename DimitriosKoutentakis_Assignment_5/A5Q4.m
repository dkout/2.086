% script inputs Mon_grades, Wed_grades, and Fri_grades must be assigned outside script

t=[1;3;5];
X=[ones(3,1),t];
Y=[mean(Mon_grades); mean(Wed_grades); mean(Fri_grades)];

beta_hat_1 = X\Y;

 
