% 方法一，用上一题的方式计算所有{x_n}
for i=1:100
    X_1(i)=Int_Tr(i);
end

% 方法二，用上述方法算出x_1后用递推式计算其余项
X_2(1)=Int_Tr(1);
for i=2:100
    X_2(i)=1/i-5*X_2(i-1);
end

% 方法三，用上述方法算出x_100后用递推式计算其余项
X_3(100)=Int_Tr(100);
for i=99:-1:1
    X_3(i)=1/5*(1/(i+1)-X_3(i+1));
end

%按题目要求绘图，直观表达
n=1:100;
plot(n,log(abs(X_1)),'-r','LineWidth',2)
hold on
plot(n,log(abs(X_2)),'--b','LineWidth',2)
plot(n,log(abs(X_3)),'--k','LineWidth',2)
title('三种方法计算序列{x_n}')
lgd=legend('直接使用数值积分','正向递推','反向递推');
xlabel('n')
ylabel('log(|x_n|)')


