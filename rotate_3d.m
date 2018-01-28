# usage: rotate_3d (x, y, z, fi)
#
# is function where x y z is arbitrary axis
# on which is rotation performed.
# For example (1, 0, 0) is rotation around x axis.
#
# fi is angle specified in radians

function b = rotate_3d(x, y, z, fi)
    c = cos(fi);
    s = sin(fi);


    b = [c+(1-c)*x^2   (1-c)*x*y-s*z  (1-c)*x*z+s*y 0;
        (1-c)*x*y+s*z  c+(1-c)*y^2    (1-c)*y*z-s*x 0;
        (1-c)*x*z-s*y  (1-c)*y*z-s*x  c+(1-c)*z^2   0;
        0               0               0           1];
endfunction