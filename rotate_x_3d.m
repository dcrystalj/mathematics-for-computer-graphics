function b = rotate_x_3d(x)
    b = [1   0      0     0;
         0 cos(x) -sin(x) 0;
         0 sin(x)  cos(x) 0;
         0   0      0     1];
endfunction