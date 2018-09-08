function grade_o_matic(which_questions,mode_flag)
%% grade_o_matic version 2.x (Fall 2013) by Colin Landon et al.
% Based upon version 1 of grade_o_matic by AT Patera et al., MIT, Spring 2013
%
% Students: to use grade_o_matic, place the grade_o_matic.m file
% in the directory of your code or add it to your path. Then place the
% appropriate assignments data (e.g. g_o_m_assignment1.dat) file into the
% directory of your code.
%
% You may use grade_o_matic with no arguments to automatically
% test all of the problems for the assignemnt, or you can specify which
% problems. Additionally, you can run grade_o_matic in verbose mode to show
% the inputs being tested. Below are examples of how to run  grade_o_matic.
% Execute grade_o_matic from the directory of your code
%
% To only display version information
% 
%      grade_o_matic('ver')
%
% To test all problems:
%
%      grade_o_matic
%
%      or
%
%      grade_o_matic('a')
%
%
% To test only problem 3:
%
%      grade_o_matic(3)
%
%
% To test problems 1,3,6
%
%      grade_o_matic([1,3,6])
%      (In this case, the input can be any vector of valid problem numbers)
%
% To run in verbose mode:
%
%       grade_o_matic('a','v')
%
%       or
%
%       grade_o_matic(X,'v')
%       (where X is any valid scalar or vector)
%
% grade_o_matic will not grade some types of questions (e.g. figures or
% multiple choice qeustions).


if (nargin<1)
    grade_o_matic_function_;
    
elseif(nargin == 1)
    grade_o_matic_function_(which_questions);
else
    grade_o_matic_function_(which_questions,mode_flag);
end
