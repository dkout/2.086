% Perform Gaussian elimination to solve A*u = f

% student code begins here; inputs are A and f

n = ?? % problem size

% indicate whether to do row exchanges:  set false for Q1, true for Q2
doRowExchanges = false ;

% perform upper triangularization, while keeping fhat current

U = A ; % initialize
fhat = f ;

for iPivot = 1:n-1,
    
    if doRowExchanges, % (do not use this in Q1)
        [~,ind] = max(abs(U(iPivot:n,iPivot))) ;
        ind = ind + (iPivot-1) ;
        U([iPivot ind],:) = ??
        fhat([iPivot ind]) = ??
    end;
    
    for jRow = iPivot+1:n,
         pivot=U(iPivot,iPivot);
         scale=U(jRow,iPivot)/pivot
         U(jRow,:) = U(jRow,:-U(iPivot,:)*scale
         fhat(jRow) = 
    end;
end;

% do back-substitution to recover u
u = zeros(n,1) ;
u(n,1) = ?? ;
for i = n-1:-1:1,
    ??
end;

% outputs are U, fhat, and u


