
% input is fellowship_record

n = size(fellowship_record,2); % number of students in sample
W1W2=0;
L1L2=0;
W2=0;

for i=1:n
    if fellowship_record(1,i)==1 & felloship_record(2,i)==1
        W1W2=W1W2+1;
    end
    if fellowship_record(1,i)==0 & felloship_record(2,i)==0
        L1L2=L1L2+1;
    end
    if  felloship_record(2,i)==1
        W2=W2+1;
    end
    
    if  felloship_record(2,i)==1
        W2=W2+1;
    end   
    
end


% outputs are phiW1W2, phiL1L2, phiW2, phiW2barW1




