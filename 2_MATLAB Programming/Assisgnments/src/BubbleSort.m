function A=BubbleSort(A)
tic
for i=length(A)-1:-1:1
    for j=1:i
        if A(j)>A(j+1)          %经典冒泡排序，二重循环扫描数组进行排序
            temp=A(j+1);
            A(j+1)=A(j);
            A(j)=temp;
        end
    end
end
time=toc;
X=['冒泡排序法所用的时间为',num2str(time),'s'];
disp(X)
end

