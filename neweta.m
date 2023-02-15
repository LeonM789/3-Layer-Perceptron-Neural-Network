function [n] = neweta(n,neurons, error)

% emergency function to avoid enormous errors caused by a wrong eta choice
% (maybe a bit primitive, but does what it's supposed to)

if error > 40
    n = 0.01;
elseif error >12 && neurons < 10
    n = 0.01;
else   
    if neurons > 40
            if error < 6
                n = 0.002;
            elseif error < 9
                n= 0.005;
            elseif error < 12 
                n = 0.02;
            elseif error < 20
                n = 0.05;
            end
    elseif neurons > 24
            if error < 8
                n = 0.002;
            elseif error < 11
                n = 0.005;
            elseif error < 14
                n= 0.05;
            elseif error < 20
                n = 0.1;
            end
    elseif neurons > 16
         if error < 8
            n = 0.002;
         elseif error < 11
            n = 0.005;
         elseif error < 20
            n = 0.05;
         end
    else
        if error < 8
                n = 0.005;
        elseif error < 11
                n = 0.01;
        elseif error < 14
                n = 0.05;
        elseif error < 20
                n = 0.1;
        end
    end
end
end

