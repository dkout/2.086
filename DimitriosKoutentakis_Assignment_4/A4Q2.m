% Solve a planar truss loading problem

% Student code begins here; inputs are load vector P and angle theta (deg)
P1=P(1);
P2=P(2);
theta=theta*2*pi/360;
% define the ordering of the equations and the unknowns carefully; 
% this determines the precise structure of A and f
A = zeros(14,14);
A(1,[1,3,4])=[1,cos(theta),1];
A(2,[2,3])=[1,sin(theta)];
A(3,[3,5])=[-sin(theta),-sin(theta)];
A(4,[3,5,6])=[-cos(theta),cos(theta),1];
A(5,[4,5,7,8])=[-1,-cos(theta),cos(theta),1];
A(6,[5,7])=[sin(theta),sin(theta)];
A(7,[6,7,9,10])=[-1,-cos(theta),cos(theta),1];
A(8,[7,9])=[-sin(theta),-sin(theta)];
A(9,[8,9,11,12])=[-1,-cos(theta),cos(theta),1];
A(10,[9,11])=[sin(theta),sin(theta)];
A(11,[10,11,13])=[-1,-cos(theta),cos(theta)];
A(12,[11,13])=[-sin(theta),-sin(theta)];
A(13,[12,13])=[-1,-cos(theta)];
A(14,[13,14])=[sin(theta),1];
     
%u = [f_ax,f_ay,t_1,t_2,t_3,t_4,t_5,t_6,t_7,t_8,t_9,t_10,t_11,f_by,P1,P2]' ;
f = [0,0,0,0,0,P1,0,0,0,P2,0,0,0,0]';


% run the GE code from A4Q1, but with row exchanges enabled
doRowExchanges = true ;
%u= A\f;
A4Q1;


% outputs are tension at bar 1, and at bar "mid" 
t_1 = u(3) ;
t_mid = u(8) ;
