function x = Itr_GS(A,b)
% Gauss-Seidel 迭代法
    [~,n] = size(A);
    u = 1e-16;
    x = zeros(n,1);
    k = 0;      kmax = 1e5;
    
    while(1)
        k = k + 1;
        y = x;
        x(1) = (b(1) - A(1,2:n) * x(2:n))/A(1,1);
        for j = 2:n-1
            x(j) = (b(j) - A(j,1:j-1) * x(1:j-1) - A(j,j+1:n) * x(j+1:n))/A(j,j);
        end
        x(n) = (b(n) - A(n,1:n-1) * x(1:n-1))/A(n,n);
        
        if (norm(y-x) < u) || (k > kmax)
            break;
        end
    end
end

