function x = Itr_GD(A,b)
%Gradient Descent 最速下降法
%Input A: a symmetric and positive definite matrix
    [~,n] = size(A);
    x = zeros(n,1);
    r = b;
    er = 1e-12;
    k = 0;  kmax = 10000;
    
    while (1)
       k = k + 1;   
       u = (r'*r) / (r'*A*r);
       x = x + u * r;
       r = b - A * x;
                         
       if or(( norm(r) < er ),( k > kmax ))
           break;
       end
    end
          
end

