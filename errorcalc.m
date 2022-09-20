function [error] = errorcalc(result, target)
  
    % Fehlerfunktion: 1/2*(output-target)^2
    
    error = sum(((result - transpose(target)).^2)./2);
    
end
