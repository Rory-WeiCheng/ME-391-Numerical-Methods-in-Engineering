clear all
clc

x=textread('assignment3.txt');  %读取txt文档里面的数据
x=x';
Exp=exp(x);
A=[x(:),Exp(:)]';               % 将x和exp(x)排成矩阵，方便输出
fid=fopen('assignment3_output.txt','w');    %建立新txt文件,并开始录入
fprintf(fid,'%-8s %-12s\r\n','x','exp(x)'); 
fprintf(fid,'%-8.2f %-12.4f\r\n',A);        %按要求保留位数，用\r\n换行
fclose(fid);                    % 关闭文件
