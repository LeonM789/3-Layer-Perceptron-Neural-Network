function[] = plotting(trainingresult, testingresult, trainingtarget, testingtarget, trainingerror, testingerror, epochs)
    
    tiledlayout(3,1)
    % top plot
    nexttile
    plot(trainingerror)
    title('Total error of the epochs')
    xlabel('Epochs')
    ylabel('Total error')
    
    % middle plot
    nexttile
    plot(trainingresult)
    hold on
    plot(trainingtarget)
    legend('Result','Target', "Location", "southeast")
    title('Model with training data')
    
    % lower dlot
    nexttile
    plot(testingresult)
    hold on
    plot(testingtarget)
    legend('Result','Target', "Location", "southeast")
    title('Model with testing data')
    
    disp(" ") % just for a bit space in the output
    
    % text ouput:
    avgtrainingerror = trainingerror(length(trainingerror))/length(trainingtarget);
    disp("Total error of the training after " + epochs + " epochs: " + trainingerror(length(trainingerror)));
    disp("∅ per point: " + avgtrainingerror)

    avgtestingerror = testingerror(length(testingerror))/length(testingtarget);
    disp("Total error of the test: " + testingerror(length(testingerror)));
    disp("∅ per point: " + avgtestingerror)

end
