function [L,D] = Cholesky2(A)
%CHOLESKY2 改进的Cholesky分解：A=L*D*L'
    [~,n] = size(A);
    v = zeros(n,1);
    for j = 1:n
        for i = 1:j-1
            v(i) = A(j,i) * A(i,i);
        end
        A(j,j) = A(j,j) - A(j,1:j-1) * v(1:j-1);
        A(j+1:n,j) = (A(j+1:n,j) - A(j+1:n,1:j-1) * v(1:j-1)) / A(j,j);
    end
    L = tril(A,-1) + eye(n);
    D = diag(diag(A));
end

