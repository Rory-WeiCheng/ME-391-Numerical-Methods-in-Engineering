clear all
clc

A=[7 5 4;7 6 1; 7 3 7;5 2 2;6 2 4; 6 3 4; 6 4 2; 3 1 2; 2 1 1; 4 1 3];
% shortest是7×7矩阵，shorterst(i,j)的含义是从i到j的最小代价,最开始时就是用来表示图的邻接矩阵；
% 即信息不足或是反向，相应的值为Inf
% 动态规划思想体现于三重循环中，也即Floyd算法

% 根据题目条件初始化shortest（即绘制邻接矩阵）
shortest=inf(7);
for i=1:9
    shortest(A(i,2),A(i,1))=A(i,3);
end
% 路径矩阵，用以返回最短路径,默认为-1，经过某一点则记录其对应前一点
path_m=-1*ones(7);

while(1)
    [converge,shortest,path_m]=expand(shortest,path_m);
    if(converge==0)
        break;
    end
end

disp(['点1到点7的最小代价为',num2str(shortest(1,7)),',最短路径经过节点：'])
disp(num2str(1));
PrintPath(path_m,1,7);
disp(num2str(7));

% 通过检索来不断更新shortest
% 如果修改了shortest，converge为1，否则为0
% (i,j)=min((i,k),(k,j))
function [converge,changed,path_m]=expand(shortest,path_m)
    converge=0;
    changed=shortest;
    for i = 1:7
        for j=1:7
            if i==j
                continue
            end
            for k=1:7
            tmp = shortest(i,k) + shortest(k,j);
                if (tmp < Inf && tmp < changed(i,j))
                changed(i,j) = tmp;
                converge=1;
                path_m(i,j)=k;
                end
            end
        end
    end
end

function PrintPath(path_m,a,b)      %打印路径，通过路径矩阵反向回溯最短路径，不包括首尾
    k=path_m(a,b);
    if(k==-1)
        return
    end
    PrintPath(path_m,a,k);
    disp(num2str(k));
    PrintPath(path_m,k,b);
end
