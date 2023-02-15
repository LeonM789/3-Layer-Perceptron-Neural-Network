clear all
close all
syms x

% input function collecting all needed information
[trainingdata, trainingtarget, f0, f1, neurons, n, epochs, testingdata, testingtarget] = inputfunction();

% generating random weight matrices
[w1, w2] = randommatrix(trainingdata, neurons);

% matrices are adjusted by the training data and the resulting error
[w1, w2, trainingerror, trainingresult] = training(trainingdata, trainingtarget, f0, f1, w1, w2, n , epochs, neurons);

% testing the trained matrices on the testing data
[testingresult, testingerror] = testing(testingtarget, testingdata, f0, w1, w2);

% plotting the results
plotting(trainingresult, testingresult, trainingtarget, testingtarget, trainingerror, testingerror, epochs);
