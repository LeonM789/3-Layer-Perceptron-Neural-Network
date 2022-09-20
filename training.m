function[w1, w2, trainingerror, trainingresult] = training(trainingdata, trainingtarget, f0, f1, w1, w2, n ,epochs, neurons)

    trainingerror = [];

    % Live-Plots 
    tiledlayout(2,1)

    nexttile
    title('Epochenfehler')
    xlabel('Epoche')
    ylabel('Epochenfehler')
    hold on
    
    nexttile
    plot(trainingtarget);
    title('Modell mit Trainingsdaten')
    hold on
    p2 = plot(trainingtarget);
    legend('Ergebnis','Ziel', "Location", "southeast")

    for ep = 1:epochs

        trainingresult = [];

        % Anpassung der Matrizen für jeden Datenpunkt
        for pos = 1:length(trainingtarget)          
            [z1, z2, w1x] = forward(trainingdata, f0, w1, w2, pos);
            [w1, w2] = backpropagation(trainingdata, trainingtarget, n, f1, w1, w2, w1x, z1, z2, pos);
        end

        % Trainingsergebnis nach jeder Epoche
        w1x = w1 * transpose(trainingdata(:, :));
        z1 = transpose(f0(w1x));
        w2x = w2 * transpose(z1);
        trainingresult = w2x;
    
        [error] = errorcalc(trainingresult, trainingtarget);
        trainingerror = [trainingerror; error];
        % Epochenfehler wird einer Liste hinzugefügt (für den Live-Plot)
     
        % Updaten der Plots
        nexttile(1)
        plot(trainingerror)

        nexttile(2)
        p2.XData = 1:length(trainingresult);
        p2.YData = trainingresult;
        drawnow limitrate

        % Eta wird angepasst
        n = neweta(n,neurons, error); 

    end
end