%Points is  = [point1   point2   point3 ...]
function [Q, a_length, b_length, c_length] = bounding_ellipsoid(Points, S)

    [r s t] = r_s_t(S);

    rst = [r s t];

    a = max(Points' * r) - min(Points' * r);
    b = max(Points' * s) - min(Points' * s);
    c = max(Points' * t) - min(Points' * t);

    M = rst * diag([1/a, 1/b, 1/c]) * rst';
    new_Points = M * Points;
    [Q, radius] = bounding_sphere(new_Points, S);
    M_inv = rst * diag([a b c]) * rst';
    Q = M_inv * Q;

    a_length = radius * a;
    b_length = radius * b;
    c_length = radius * c;
endfunction
