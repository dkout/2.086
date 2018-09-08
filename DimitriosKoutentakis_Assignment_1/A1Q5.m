% note zLeftInitial and zRightInitial must be assigned outside the script 



z1=zLeftInitial
z2=zRightInitial



while abs(2-0.35*z1-z1^2+z1^3)>10^(-10)|| abs(2-0.35*z2-z2^2+z2^3)>10^(-10)
    
    if (2-0.35*z1-z1^2+z1^3)*(2-0.35*z2-z2^2+z2^3)<0
        z3=z2
        z2=(z1+z2)/2
    else 
        z1=z2
        z2=(z2+z3)/2
    end
    
end;

if abs(z1)<abs(z2)
    zFinal=z1
else
    zFinal=z2
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
    


