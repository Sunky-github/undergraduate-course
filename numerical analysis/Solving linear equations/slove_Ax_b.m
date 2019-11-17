function x = slove_Ax_b(A,b)
%SLOVE_Ax_b  解线性方程组Ax=b
    [L,U,P] = col_guass(A);
    y = perdecessor(L,P*b);
    x = backsub(U,y);
end

