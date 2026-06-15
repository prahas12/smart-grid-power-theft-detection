function train_neural_network(features,labels)

%% Convert data for neural network

X = features';
Y = labels';

%% Create neural network

net = patternnet(10);

%% Train network

net = train(net,X,Y);

%% Prediction

pred = net(X);

pred = round(pred);

%% Accuracy calculation

accuracy = sum(pred == Y)/length(Y);

fprintf('Neural Network Detection Accuracy = %.2f%%\n',accuracy*100);

end