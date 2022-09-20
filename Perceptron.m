clear all
close all
syms x

% Inputfunktion besorgt alle erforderlichen Daten
[trainingdata, trainingtarget, f0, f1, neurons, n, epochs, testingdata, testingtarget] = inputfunction();

% Erstellung zufälliger Gewichtsmatrizen
[w1, w2] = randommatrix(trainingdata, neurons);

% Matrizen werden durch die Trainingsdaten und den entstehenen Error angepasst
[w1, w2, trainingerror, trainingresult] = training(trainingdata, trainingtarget, f0, f1, w1, w2, n , epochs,neurons);

% Trainierte Matrizen werden an Testdaten angewendet
[testingresult, testingerror] = testing(testingtarget, testingdata, f0, w1, w2);

% Graphische Darstellung
plotting(trainingresult, testingresult, trainingtarget, testingtarget, trainingerror, testingerror, epochs);