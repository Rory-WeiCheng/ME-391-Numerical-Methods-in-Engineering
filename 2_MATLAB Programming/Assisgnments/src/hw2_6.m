clear all
clc

X=zeros(6,1);
Y=zeros(6,1);
for i=1:6;
    m=round(sqrt(2021),i);   %根号运算保留小数点后i位为再进行下一步运算
    n=round(sqrt(2020),i);
    X(i)=round(m-n,6);
    Y(i)=round(1/(m+n),6);
    RN(i)=["sqrt运算保留小数点后"+num2str(i)+'位'];
end
T=table(X,Y,'RowNames',RN)
