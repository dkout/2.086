% note zInitial and kMax must be assigned outside the script 

z=zInitial

for i=1:(kMax-1)
    z=z-(2+0.35*z-z^2+z^3)/(0.35-2*z+3*z^2)
    
end;


zFinal = z

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
