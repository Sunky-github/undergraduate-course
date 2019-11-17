function [Q,R] = house_QR(A)
%QR_dps_house  利用householder变换做A的QR分解
    [m,n] = size(A);
    d = zeros(n,1);
    for j = 1:n
        if j < m
            [v,d(j)] = house(A(j:m,j));
            w = v' * A(j:m,j:n);
            A(j:m,j:n) = A(j:m,j:n)-v * (d(j) * w);
            A(j+1:m,j) = v(2:m-j+1);
        end
    end 
    R = triu(A);
    Q = eye(m);    
    for j = 1:n
        u = zeros(m,1);
        u(j+1:m) = A(j+1:m,j);   u(j) = 1;
        Q = Q - u * (d(j) * u'* Q);
    end
    Q = Q';
end

