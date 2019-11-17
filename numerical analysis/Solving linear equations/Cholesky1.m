function L = Cholesky1(A)
%CHOLESKY1 Cholesky分解：A=L*L'
    [~,n] = size(A);
    for k=1:n
        A(k,k) = sqrt(A(k,k));
        A(k+1:n,k) = A(k+1:n,k)/A(k,k);
        for j = k+1:n
            A(j:n,j) = A(j:n,j) - A(j:n,k) * A(j,k);
        end
    end
    L = tril(A);
end

