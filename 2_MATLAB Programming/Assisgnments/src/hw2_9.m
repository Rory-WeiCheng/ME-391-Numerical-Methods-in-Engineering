% 设生产甲x1台，乙x2台 总利润（最优化目标）z=5x1+3x2
% 约束条件 2x1+x2<=10, x1+x2<=8, x2<=7 x1,x2>=0
% 显然这是一个线性规划问题，可以用matlab自带函数linprog解决
% 使用语法 x = linprog(f,A,b,Aeq,beq,lb,ub) 
% 其中 f 是优化目标minf, A,b表示A*x<=b的约束 Aeq,beq表示Aeq*x=beq的约束
% lb,ub表示 lb<= x <=ub的约束，故该问题可由下列代码表达
A=[2 1; 1 1; 0 1; -1 0; 0 -1];
b=[10 8 7 0 0];
f=[-5 -3];
x = linprog(f,A,b)