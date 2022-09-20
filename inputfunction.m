function [trainingdata, trainingtarget, f0, f1, neurons, n, epochs, testingdata, testingtarget] = inputfunction()

    syms x

    disp("Bitte Testdaten wählen");
    testingdataframe = readmatrix(uigetfile("*.csv")); 

    disp("Bitte Trainingsdaten wählen");
    trainingdataframe = readmatrix(uigetfile("*.csv"));
    
    % Trainingsdaten
    trainingdata = trainingdataframe(:, 1:length(trainingdataframe(1,:))-1);
    % Zielwerte der Trainingsdaten
    trainingtarget = trainingdataframe(:, length(trainingdataframe(1,:)));
    
    % Testdaten
    testingdata = testingdataframe(:, 1:length(testingdataframe(1,:))-1);
    % Zielwerte der Testdaten
    testingtarget = testingdataframe(:, length(testingdataframe(1,:)));

    f = input("Bitte Aktivierungsfunktion angeben: ");
    f1 = matlabFunction(diff(f));
    f0 = matlabFunction(f);

    % "Anzahl" der Gewichte
    neurons = input("Bitte Anzahl an Neuronen angeben: ");
    
    % Eta
    n = input("Bitte Lernrate angeben: ");
    
    epochs = input("Bitte Epochenanzahl angeben: ");
  
end

