function [error] = errorcalc(result, target)
  
    % error function: 1/2*(output-target)^2
    % (vectorized inputs)
    
    error = sum(((result - transpose(target)).^2)./2);
    
end
