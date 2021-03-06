function [c,s] = givens(a,b)
%GIVENS变换
    if b==0
        c = 1;    
        s = 0;
    else
        if abs(b) > abs(a)
            t = a / b;
            s = 1 / sqrt(1+t^2);    
            c = s * t;
        else
            t = b / a;
            c = 1 / sqrt(1+t^2);    
            s = c * t;
        end
    end            
end
