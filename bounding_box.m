%Points is  = [point1   point2   point3 ...]
function [a b c Q r_length s_length t_length] = bounding_box(Points, S)

    [r s t] = r_s_t(S);

    a = (min(Points' * r) + max(Points' * r)) / 2;
    b = (min(Points' * s) + max(Points' * s)) / 2;
    c = (min(Points' * t) + max(Points' * t)) / 2;

    %center
    Q = a*r + b*s + c*t;

    r_length = max(Points' * r) - min(Points' * r);
    s_length = max(Points' * s) - min(Points' * s);
    t_length = max(Points' * t) - min(Points' * t);

endfunction
