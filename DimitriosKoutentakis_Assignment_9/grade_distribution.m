function [probs] = grade_distribution(r_and_b_grades,cutoffs,w,X)

% final score calculation
n=length(r_and_b_grades(1,:));

%avg_grades=mean(r_and_b_grades,2);

wghtd_grades=zeros(4,n);

for i=1:4
    wghtd_grades(i,:)=r_and_b_grades(i,:).*w(i);
end

finalScore = sum(wghtd_grades,1) + X*ones(1,n)

% Probability calculation

prob_A= sum(finalScore>=cutoffs(1))/n

prob_B= sum(finalScore>=cutoffs(2) & finalScore<cutoffs(1) )/n;

prob_C= sum(finalScore>=cutoffs(3) & finalScore<cutoffs(2))/n;

prob_D= sum(finalScore>=cutoffs(4)& finalScore<cutoffs(3))/n;

prob_F= sum(finalScore>cutoffs(5)& finalScore<cutoffs(4))/n;

probs=[prob_A;prob_B;prob_C;prob_D;prob_F];

return

end

