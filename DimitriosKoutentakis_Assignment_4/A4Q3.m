% Compute the displacements of a long vertical cable due to 
% its own self-weight and a large weight at the lower end

% student code begins here; single input parameter is n

% set the fixed physical parameters
L = 4000;
EA=4.5*10^7;
w=14;
W=9000;
dz=L/n;
k=EA/dz;

% set up tri-diagonal A, and f
%A = zeros(n,n);  % allocate full A (use spalloc() for sparse A)
A=spalloc(n,n,3*n);
f = zeros(n,1) ;
A(1,1) =  2*k;
A(1,2) = -k;
f(1) = w*dz; 
for i = 2:n-1,
    A(i,[i-1:i+1]) = [-k,2*k,-k];
    f(i) = w*dz;
end;
f(n)=w*dz+W;
A(n,[n-1,n])=[-k,k];


% solve using one or more of the available methods:  evil inverse, basic 
% GE of Q1, "strong" GE of Q2, full backslash, or sparse backslash.
% Compare the run-times in completing Part b.
tic ; 
u=A\f;
%u=A^(-1)*f;
%A4Q1
toc ;

% Part a. outputs are deflection of the top node (i=1) and the bottom (i=n)
firstDisp = u(1) ;
endDisp = u(n) ;

