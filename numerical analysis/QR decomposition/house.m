function [v,beta] = house(x)
% householder变换
    n = length(x);
    v = zeros(n,1);
    u = 1e-16;
    eta = max(abs(x));
    
    if eta < u
        sigma = 0;
    else
        x = x / eta;
        v(2:n) = x(2:n);
        sigma = v(2:n)' * v(2:n);
    end
    
    if sigma < u
        beta = 0;
    else 
        alpha = sqrt(x(1)^2 + sigma);
        if x(1) <= 0
            v(1) = x(1) - alpha;
        else
            v(1) = -sigma/(x(1) + alpha);
        end
        beta = (2*(v(1))^2)/(v(1)^2 + sigma);
        v = v/v(1);
    end
end    
