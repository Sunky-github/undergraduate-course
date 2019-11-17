function x = Itr_CG2(A,b)
% 实用共轭梯度法
    [~,n] = size(A);
    x = zeros(n,1);    
    r = b;
    rho = r'*r;
    u = rho * 1e-16;
    k = 0;      kmax = 1e6;
    
    while(1)
       k = k + 1;
       if k==1
           p = r;
       else
           beta = rho/rho1;
           p = r + beta * p;
       end
       
       w = A * p;
       alpha = rho/(p'*w);
       x = x + alpha * p;
       r = r - alpha * w;
       rho1 = rho;
       rho = r'*r;
       
       if (rho < u) || (k > kmax)
           break;
       end
    end
end

