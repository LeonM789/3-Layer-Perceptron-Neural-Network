function[w1, w2, trainingerror, trainingresult] = training(trainingdata, trainingtarget, f0, f1, w1, w2, n ,epochs, neurons)

    trainingerror = [];

    % Live-Plots 
    tiledlayout(2,1)

    nexttile
    title('Error of the epoch')
    xlabel('Epoch')
    ylabel('Error of the epoch')
    hold on
    
    nexttile
    plot(trainingtarget);
    title('Model with training data')
    hold on
    p2 = plot(trainingtarget);
    legend('Result','Target', "Location", "southeast")

    for ep = 1:epochs

        trainingresult = [];

        % adjusting the matrix for each point
        for pos = 1:length(trainingtarget)          
            [z1, z2, w1x] = forward(trainingdata, f0, w1, w2, pos);
            [w1, w2] = backpropagation(trainingdata, trainingtarget, n, f1, w1, w2, w1x, z1, z2, pos);
        end

        % result of the training after every epoch
        w1x = w1 * transpose(trainingdata(:, :));
        z1 = transpose(f0(w1x));
        w2x = w2 * transpose(z1);
        trainingresult = w2x;
    
        [error] = errorcalc(trainingresult, trainingtarget);
        trainingerror = [trainingerror; error];
        % adding the error of every epoch to a list (for the live plot)
     
        % updating the plot
        nexttile(1)
        plot(trainingerror)

        nexttile(2)
        p2.XData = 1:length(trainingresult);
        p2.YData = trainingresult;
        drawnow limitrate

        % adjusting eta
        n = neweta(n,neurons, error); 

    end
end
