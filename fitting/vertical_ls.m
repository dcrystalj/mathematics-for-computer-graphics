%calculate least square approximation line parameters
%X x coordinates
%Y y coordinates which corresponds to X
function b = vertical_ls (X, Y)
    X = [X ones(length(X),1)];
    b = (pinv(X*X') * X)' * Y;
endfunction
