clear all
clc

% 使用readtable函数读取xlsx文件表格
T = readtable('assignment2.xlsx','Sheet','Sheet1','PreserveVariableNames',true);
% 重新赋予变量属性名，方便后续编程调用，因为中文属性名不能直接引用
T.Properties.VariableNames={'ID','Gender','Date','Height'};

% 出生年月统计：将日期字符串以指定格式换算成对应日期数字变量
date=datenum(T.Date(:),'yyyy-mm');
% 比较与2020-2对应的日期数字变量大小即可知道是否晚于2020-2出生
cnt=sum(date<=datenum('2000-2','yyyy-mm'));  %计数统计
ratio=cnt/length(date);                      %计算不晚于指定日期出生的比例
disp(['不晚于2020-2出生的人所占比例为 ',num2str(ratio*100),' %'])

% 从高到矮排序，使用MATLAB内置函数sort
height=T.Height(:);
id=T.ID(:);
[H,I]=sort(height);     % 获取升序（从矮到高）排列的数组索引下标
id_new=id(I);            % id_new即为重新排序后的学号序列
disp(['重新从矮到高的排序后的学号序列为 ',num2str(id_new')])
