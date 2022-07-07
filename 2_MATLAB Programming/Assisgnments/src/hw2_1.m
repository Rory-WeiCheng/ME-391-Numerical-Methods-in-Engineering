clear all
clc

get_x=@(theta)(exp(1/4*theta)).*cos(theta); %x关于theta的匿名函数
get_y=@(theta)(exp(1/4*theta)).*sin(theta); %y关于theta的匿名函数
x=get_x((0:pi/100:6*pi)); 				%获取x,theta范围在0-6pi
y=get_y((0:pi/100:6*pi));				%获取y
plot(x,y,'-r','LineWidth',2)				%绘图
title('对数螺线图')						%取标题
xlabel('x')								%坐标轴命名
ylabel('y')
axis equal

