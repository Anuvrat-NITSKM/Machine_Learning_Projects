a = rand(1,1000);
b = rand(1,1000);
c = rand(1,1000);
y = 2*a + 3*b + 5*c;
I = [a; b; c;];
T = y;
net=newff(minmax(I),[3,5,1],{'logsig','tansig','purelin'},'trainlm');
net = init(net);                        % Used to initialize the network (weight and biases)
net.trainParam.show =1;                 % The result of error (mse) is shown at each iteration (epoch)
net.trainParam.epochs = 1000;           % Maximum limit of the network training iteration process (epoch)
net.trainParam.goal =1e-12;             % Stopping criterion based on error (mse) goal
net=train(net,I,T);                     % Start training the network

