train=clean1(1:2766,:) 
test=clean1(2767:end,:)
train_x=[train(:,1:2) train(:,4:end)];
train_y=train(:,3);

test_x=[test(:,1:2) test(:,4:end)];
test_y=test(:,3);

model=svmtrain(train_y,train_x,'-s 2 -p 2');
[predict_label,accuracy,dec_values] = svmpredict(test_y,test_x,model);