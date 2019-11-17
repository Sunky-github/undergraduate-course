function [L,U,P] = col_guass(A)
%COL_GUASS 选列主元高斯分解
    [~,n] = size(A);
    P = eye(n);
    for k = 1:n-1
        [~,p] = max(abs(A(k:n,k)));    
        p = p + k - 1;
        A([k,p],:) = A([p,k],:);
        P([k,p],:) = P([p,k],:);
        if A(k,k)==0
            break;
        end
        A(k+1:n,k) = A(k+1:n,k)/A(k,k);
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
    end
    L = tril(A,-1) + eye(n);
    U = triu(A);
    
end

