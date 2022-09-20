function [w1, w2] = backpropagation(trainingdata, trainingtarget, n, f1, w1, w2, w1x, z1, z2, pos)
    
    % Berechnung der Differenz zwischen Ergebnis und Ziel und Anpassung der
    % Gewichtsmatrizen
    OutError = z2 - trainingtarget(pos);
    deltaout = OutError;
    gradEW2 = deltaout .* transpose(z1);
    W2neu = w2 - n*gradEW2;
    
    HidError = transpose(w2) * deltaout;
    deltahid = f1(w1x).*HidError;
    gradEW1 = deltahid.*trainingdata(pos);
    W1neu = w1 - n*gradEW1;
    
    w1 = W1neu;
    w2 = W2neu;
    
end

