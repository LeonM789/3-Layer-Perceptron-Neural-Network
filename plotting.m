function[] = plotting(trainingresult, testingresult, trainingtarget, testingtarget, trainingerror, testingerror, epochs)
    
    tiledlayout(3,1)
    % Oberer Plot
    nexttile
    plot(trainingerror)
    title('Gesamtfehler der Epochen')
    xlabel('Epoche')
    ylabel('Gesamtfehler')
    
    % Mittlerer Plot
    nexttile
    plot(trainingresult)
    hold on
    plot(trainingtarget)
    legend('Ergebnis','Ziel', "Location", "southeast")
    title('Modell mit Trainingsdaten')
    
    % Unterer Plot
    nexttile
    plot(testingresult)
    hold on
    plot(testingtarget)
    legend('Ergebnis','Ziel', "Location", "southeast")
    title('Modell mit Testdaten')
    
    disp(" ") % Leerzeile
    
    % Textausgabe:
    avgtrainingerror = trainingerror(length(trainingerror))/length(trainingtarget);
    disp("Gesamtfehler des Trainings nach " + epochs + " Epochen: " + trainingerror(length(trainingerror)));
    disp("∅ je Punkt: " + avgtrainingerror)

    avgtestingerror = testingerror(length(testingerror))/length(testingtarget);
    disp("Gesamtfehler des Tests liegt bei: " + testingerror(length(testingerror)));
    disp("∅ je Punkt: " + avgtestingerror)

end