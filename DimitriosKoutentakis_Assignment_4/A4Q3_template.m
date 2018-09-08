% Compute the displacements of a long vertical cable due to 
% its own self-weight and a large weight at the lower end

% student code begins here; single input parameter is n

% set the fixed physical parameters
L = ??
??

% set up tri-diagonal A, and f
A = zeros(??,??)  % allocate full A (use spalloc() for sparse A)
f = zeros(??,??) 
A(1,1) = ?? 
A(1,2) = ??
f(1) = ?? 
for i = 2:n-1,
    A(??,??) = ??
    f(??) = ??
end;
??

% solve using one or more of the available methods:  evil inverse, basic 
% GE of Q1, "strong" GE of Q2, full backslash, or sparse backslash.
% Compare the run-times in completing Part b.
tic ; 
??
toc ;

% Part a. outputs are deflection of the top node (i=1) and the bottom (i=n)
firstDisp = u(??) ;
endDisp = u(??) ;

