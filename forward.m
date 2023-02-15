function [z1, z2, w1x] = forward(data, f0, w1, w2, pos)
    
    % calculating the result with the current weigths/matrix
    w1x = w1 * transpose(data(pos, :));
        
    z1 = f0(w1x);
 
    w2x = w2 * z1;

    z2 = w2x;

end
