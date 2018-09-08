% note Nfib must be assigned outside the script

if Nfib == 1,
    ansf=1

elseif Nfib == 2,
    ansf=1

else
    
    ans1=1
    ans2=1
    
    
    for i=3:Nfib
        ansf=ans2+ans1
        ans2=ans1
        ans1=ansf
     
    end 

end;
    
Ffib=ansf