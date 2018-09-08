% Solve a planar truss loading problem

% Student code begins here; inputs are load vector P and angle theta (deg)

% define the ordering of the equations and the unknowns carefully; 
% this determines the precise structure of A and f
A = zeros(14,14);
A
     
f = [f_ax,f_ay,t_1,t_2,t_3,t_4,t_5,t_6,t_7,t_8,t_9,t_10,t_11,Pt,Pr]' ;


% run the GE code from A4Q1, but with row exchanges enabled
doRowExchanges = true ;
etc


% outputs are tension at bar 1, and at bar "mid" 
t_1 = u(??) ;
t_mid = u(??) ;
