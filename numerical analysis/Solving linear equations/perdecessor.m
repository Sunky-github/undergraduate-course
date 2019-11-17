function y = perdecessor(L,b)
%PERDECESSOR 前代法解上三角形线性方程组
%Input -L 上三角矩阵
    [~,n] = size(L);
    for k = 1:n-1
        b(k) = b(k) / L(k,k);
        b(k+1:n) = b(k+1:n) - b(k) * L(k+1:n,k);
    end
    b(n) = b(n) / L(n,n);
    y = b;
end
