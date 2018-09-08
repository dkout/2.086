% inputs Ngeo and rgeo must be provided outside the script

% output (to be assigned in the script) is Matlab variable G_Ngeo

x=ones([1,Ngeo])*rgeo;
y=[0:1:Ngeo-1];
z=x.^y;
G_Ngeo=sum(z);