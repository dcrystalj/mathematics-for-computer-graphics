%calculat
%return [a0 a1 a2,...]
function a = polynomial_ls (X, Y, exponent)
    B = [ones(length(X), 1)];
    for i=1:exponent
        B = [B (X .^ i)];
    end

    A = B'*B;
    b = B'*Y;
    a = pinv(A)*b;
endfunction
