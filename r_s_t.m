% find vectors in order
function [r, s, t, r_lambda, s_lambda, t_lambda] = r_s_t (S)
    [Vec, Lambda] = eig(S);

    %find vector with biggest lambda
    [r_lambda, r_pos] = max(Lambda);
    r_pos = max(r_pos);
    r_lambda = max(r_lambda);

    %save its value to result
    r = Vec(:, r_pos);

    %remove lambda
    Lambda(:, r_pos) = [];

    %remove vector
    Vec(:, r_pos) = [];


    %repeats same
    [s_lambda, s_pos] = max(Lambda);
    s_pos = max(s_pos);
    s_lambda = max(s_lambda);
    s = Vec(:, s_pos);
    Lambda(:, s_pos) = [];
    Vec(:, s_pos) = [];

    %repeats same
    [t_lambda, t_pos] = max(Lambda);
    t_pos = max(t_pos);
    t_lambda = max(t_lambda);
    t = Vec(:, t_pos);

    x=1;

endfunction
