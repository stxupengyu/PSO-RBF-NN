clear
clc
num=1;
[y_train_predict,train_error,y_train]=funrbf(num);
[NetOut,train_error2,mse]=funpsorbf(num);
%ͼ1
figure(1)
plot(1:length(train_error),train_error,1:length(train_error2),train_error2)
title('mse')
hold on
grid
legend('rbf','pso-rbf');
%ͼ2
figure(2)
plot(mse,'k-');
title('iter')
hold on
grid
%ͼ3
figure(3)
plot(1:length(y_train_predict),y_train_predict,1:length(NetOut),NetOut,1:length(y_train),y_train)
title('compare')
hold on
grid
legend('rbf','pso-rbf','real');