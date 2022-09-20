function [w1, w2] = randommatrix(trainingdata, neurons)
    
    a = -0.2;
    b = 0.2;
    w1 = (b-a) .* rand(neurons, length(trainingdata(1,:))) + a;
    w2 = (b-a) .* rand(1, neurons) + a;

end