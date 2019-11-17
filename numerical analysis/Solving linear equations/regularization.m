function x = regularization(A,b)
% 正则化方法解最小二乘问题 
% min||Ax-b|| 等价于解方程组 A'Ax=A'b
    C = A'*A;     
    d = A'*b;
    L = Cholesky(C);
    y = perdecessor(L,d);
    x = backsub(L',y);
end

