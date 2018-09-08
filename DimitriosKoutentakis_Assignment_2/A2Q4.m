
x_vec = linspace(-1,1,10);

f_1=sin(pi*x_vec);
f_2=sin(pi*(x_vec.*x_vec));
f_3=sin(pi*x_vec).*sin(pi*x_vec);

plot(x_vec,f_1,'r-')  % do ">>help plot"
hold on
plot(x_vec,f_2,'bo-')
hold on
plot(x_vec,f_3,'kx-')

legend('f(x)=sin(\pi*x)','f(x)=sin(\pi*x^2)','f(x)=(sin(\pi*x))^2')

xlabel('x-values')
ylabel('y-values')

title('Trigonometric Functions with respect to x')

% note you may choose any appropriate (relevant, descriptive) axis labels and title
 

