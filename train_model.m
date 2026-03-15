function model = train_model(features,labels)

cv = cvpartition(labels,'HoldOut',0.3);

train_index = training(cv);
test_index = test(cv);

Xtrain = features(train_index,:);
Ytrain = labels(train_index);

Xtest = features(test_index,:);
Ytest = labels(test_index);

model = fitcsvm(Xtrain,Ytrain);

predictions = predict(model,Xtest);

accuracy = sum(predictions == Ytest) / length(Ytest);

fprintf('Detection Accuracy = %.2f%%\n',accuracy*100)

end