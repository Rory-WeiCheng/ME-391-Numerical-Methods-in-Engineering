function A= InsertSort(A)
tic
for i=2:length(A)           %插入排序算法，在有序部分寻找位置插入元素
%假设第i-1个为止已经有序了，从第i个开始找位置在前面i-1个里插入
    temp=A(i);              
    j=i-1;                  %j表示有序部分的最后一个元素，就是i-1
    while(j>0)              %把有序部分扫完之前
    %如果temp(无序的第一个)比有序的最后一个小，则要插入里面
        if A(j)>temp        
            A(j+1)=A(j);    %将有序部分的最后一个往外推
            j=j-1;          %看有序的倒数第二个，如果temp还小重复上述过程，再把倒数第二个外推
    %如果遇到temp大于比较的有序部分的元素了，也即找到插入位置了
        else                
            break           %提前结束回合
        end
    end
    A(j+1)=temp;            %把temp插入到适合的位置里面
                           %有序元素+1，下一次插入开始
end                        %排序完毕
time=toc;
X=['插入排序法所用的时间为',num2str(time),'s'];
disp(X)
end


