function v = eig_QR(A)
% 隐式QR算法
    [~,n] = size(A);
    u = 1e-6;
    H = Hessenberg(A);
    
    while(1)
        for j = 2:n
            if abs(H(j,j-1)) < (abs(H(j-1,j-1))+abs(H(j,j)))*u
                H(j,j-1) = 0;
            end
        end
        
        l = 0;
        for i = n:-1:2           
            if (i~=2 && H(i,i-1)~=0) && (H(i-1,i-2)~=0)
                m = i;
                for j = m:-1:2
                    if H(j,j-1)==0
                        l = j;
                        H(l:m,l:m) = dual_QR(H(l:m,l:m));                        
                        break;
                    end                    
                end
                if l==0
                    H(1:m,1:m) = dual_QR(H(1:m,1:m));
                end
                break;
            end
        end
    
        if (i==2) 
            break;
        end    
    end
    
    for i = 2:n
        if H(i,i-1)~=0
            p = H(i-1,i-1) + H(i,i);
            q = H(i-1,i-1) * H(i,i) - H(i-1,i) * H(i,i-1);            
            detla = p^2 - 4*q;
            H(i-1,i-1) = (p + sqrt(detla))/2;
            H(i,i) = (p - sqrt(detla))/2;
        end
    end
    v = diag(H);
end

