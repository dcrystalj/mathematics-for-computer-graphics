function b = rotate_z_3d(x)
    b = [cos(x) -sin(x)  0 0;
         sin(x)  cos(x)  0 0;
         0        0      1 0;
         0        0      0 1];
endfunction