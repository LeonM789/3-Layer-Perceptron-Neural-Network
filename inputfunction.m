function [trainingdata, trainingtarget, f0, f1, neurons, n, epochs, testingdata, testingtarget] = inputfunction()

    syms x

    disp("Please enter testing data");
    testingdataframe = readmatrix(uigetfile("*.csv")); 

    disp("Please enter training data");
    trainingdataframe = readmatrix(uigetfile("*.csv"));
    
    % training data
    trainingdata = trainingdataframe(:, 1:length(trainingdataframe(1,:))-1);
    % target values of training data
    trainingtarget = trainingdataframe(:, length(trainingdataframe(1,:)));
    
    % testing data
    testingdata = testingdataframe(:, 1:length(testingdataframe(1,:))-1);
    % target values of the testing data
    testingtarget = testingdataframe(:, length(testingdataframe(1,:)));

    f = input("Please enter the activation function: ");
    f1 = matlabFunction(diff(f));
    f0 = matlabFunction(f);

    neurons = input("Please enter the number of neurons: ");
    
    % Eta
    n = input("Please enter the learning rate: ");
    
    epochs = input("Please enter the number of epochs: ");
  
end

