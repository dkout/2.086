% Perform Gaussian elimination to solve A*u = f
% indicate whether to do row exchanges:  set false for Q1, true for Q2

if(~exist('doRowExchanges'))
     doRowExchanges = false;
end

% student code begins here; inputs are A and f

n = size(A,1) % problem size


% perform upper triangularization, while keeping fhat current

U = A ; % initialize
fhat = f ;

for iPivot = 1:n-1,
        if doRowExchanges, % (do not use this in Q1)
        [~,ind] = max(abs(U(iPivot:n,iPivot)));
        ind = ind + (iPivot-1) ;
        U([iPivot ind],:) = U([ind iPivot],:);
        fhat([iPivot ind]) = fhat([ind iPivot]);
        end;
    
    for jRow = iPivot+1:n,
         pivot=U(iPivot,iPivot);
         scale=U(jRow,iPivot)/pivot;
         U(jRow,:) = U(jRow,:)-U(iPivot,:)*scale;
         fhat(jRow) = fhat(jRow)-fhat(iPivot)*scale;
    end;
end;

% do back-substitution to recover u
u = zeros(n,1) ;
u(n,1) = fhat(n)/U(n,n);
for i = n-1:-1:1,
    u(i)=(fhat(i)-U(i,i+1:n)*u(i+1:n))/U(i,i);
end;

% outputs are U, fhat, and u


