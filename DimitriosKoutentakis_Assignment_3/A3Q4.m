
% Part i

x = [-1:0.1:1];

% Part ii
y = [-0.5:0.05:1.5];

% Part iii
X = repmat(x,41,1);
Y = repmat(y.', 1, 21);

% Part iv
A = X.*X+Y.*Y;

% Part v
F = ones(41,21)./A;

% Part vi
F1 = F;
s=0;
for i=1:41
    for j=1:21
        if isinf(F1(i,j))==0 
            s = s+F1(i,j);
        end
    end
end
average = s/(41*21);
for i=1:41
    for j=1:21
        if isinf(F1(i,j))==1 
            F1(i,j) = average;
        end
    end
end



% Part vii
F2 = [F1,F1];

% Part viii
F3 = [F2;100*ones(1,42)];

% Part ix
F4 = F3;
F4(1:42,1)=100;
F4(1,1:42)=100;
F4(1:42,42)=100;


% Part x
F5 = F4;
F5(21,21)=200;
F5(29,[12,31])=200;
F5(30, 13:30)=200;



% Part xi
bigsum = sum(sum(F5));