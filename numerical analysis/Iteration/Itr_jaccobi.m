function x = Itr_jaccobi(A,b)
%FUN_JACCOBI
    u = 1e-10;
    D = diag(diag(A));
    B = D \ (A-D);
    g = D \ b;
    x = g;
    
    while (1)
        y = B * x + g;
        if norm(y-x)<u
            break;
        end
        x = y;
    end
    
end

