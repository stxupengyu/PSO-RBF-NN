function [out1,out2,out3] =fun(num)
%创建训练样本输入集
data=csvread('data.csv',1,1);
num=num;%对应三个特征
%归一化
data1=data';
data=mapminmax(data1,0,1);
data=data';
%建立训练集测试集
x_train=data(:,1:5).';
y_train=data(:,5+num).';
%创建、训练网络
net=newrb(x_train,y_train,0.001,1,25,5);

%在训练集和测试集上的表现
y_train_predict=sim(net,x_train);

%求出误差 训练集和测试集
err=y_train_predict- y_train;
train_error=(err.*err)/length(y_train);
out1=y_train_predict;
out2=train_error;
out3=y_train;
end