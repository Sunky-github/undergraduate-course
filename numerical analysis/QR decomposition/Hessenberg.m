function H = Hessenberg(A)
% Output -H 上Hessenberg矩阵
    [~,n] = size(A);
    for k = 1:n-2
        [v,beta] = house(A(k+1:n,k));
        A(k+1:n,k:n) = A(k+1:n,k:n) - (beta * v) * (v' * A(k+1:n,k:n));
        A(1:n,k+1:n) = A(1:n,k+1:n) - beta * (A(1:n,k+1:n) * v) * v';
    end
    H = triu(A,-1);
end
