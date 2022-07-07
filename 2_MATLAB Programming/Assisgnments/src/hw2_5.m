clear all
clc

A=rand(1,10000);            %随机生成1*10000的行向量

B=BubbleSort(A);         %自编写冒泡排序算法，输出运行时间
I=InsertSort(A);         %自编写插入排序算法，输出运行时间

tic                     %与MATLAB内置sort函数进行比较
M=sort(A);
time=toc;
X=['MATLAB内置排序函数所用的时间为',num2str(time),'s'];
disp(X)

% 结果：matlab内置函数最快，其次是插入排序算法，冒泡排序算法效率最低
