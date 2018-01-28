%calculat
function [a b d] = total_linear_ls (X, Y)
    [_ u] = r_s(covariance_s([X Y]'));
    a = u(1);
    b = u(2);
    d = mean(X)*u(1) .+ u(2)*mean(Y);
endfunction
