function x = Itr_CG(A,b)
%Conjugate Gradient 共轭梯度法 
%Input A: a symmetric and positive definite matrix（对称正定矩阵)
    [~,n] = size(A);
    x = zeros(n,1);
    r_now = b;
    er = 1e-10;
    k = 0;  kmax=10000;
    
    while (1)
       k = k + 1; 
       if k==1
           p = r_now;
       else
           v = (r_now' * r_now) / (r_last' * r_last);
           p = r_now + v * p;               
       end
       r_last = r_now;
       q = A * p;
       u = (r_now' * r_now) / (p' * q);
       x = x + u * p;
       r_now = r_now - u * q;           
             
       if or(( norm(r_now) < er ),( k > kmax ))
           break;
       end
    end
       
end
