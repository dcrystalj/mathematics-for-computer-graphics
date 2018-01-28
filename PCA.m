function PCA (Points)
    A = Points;

    printf('\nCovaiance matrix : \n\n')
    S = covariance_s(A)

    printf('Vectros r s t and their lambdas in order:\n')
    [r, s, t, r_lambda, s_lambda, t_lambda] = r_s_t(S)

    printf('\nBounding box\n')
    [_, _, _, Q, r_length, s_length, t_length] = bounding_box(A, S)

    printf('\nBounding shpere:\n')
    [Q, radius] = bounding_sphere(Points, S)

    printf('\nBounding ellipsoid:\n')
    [Q, a_length, b_length, c_length] = bounding_ellipsoid(Points, S)

    printf('\nBounding cylinder\n')
    [Q1, Q2, radius] = bounding_cylinder(A, S)

end