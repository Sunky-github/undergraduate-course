function [Q,R] = Schmidt2(A)
%改进的SCHMIDT算法 
    [m,n] = size(A);
    Q = zeros(m,n);   
    R = zeros(n);
    for j=1:n
        y = A(:,j);
        for i = 1:j-1
            R(i,j) = Q(:,i)' * y;
            y = y - R(i,j) * Q(:,i);
        end
        R(j,j) = norm(y);
        Q(:,j) = y / R(j,j);
    end
end

