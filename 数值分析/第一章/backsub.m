function x = backsub(U,y)
% BACKSUB 回代法解上三角形线性方程组
% Input -U is an n x n upper-triangular nonsigular matrix

    [~,n] = size(U);
    U = triu(U);
    for k = n:-1:2
        y(k) = y(k) / U(k,k);
        y(1:k-1) = y(1:k-1) - y(k) * U(1:k-1,k);
    end
    y(1) = y(1) / U(1,1);
    x = y;        
end
