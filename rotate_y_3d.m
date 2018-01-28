function b = rotate_y_3d(x)
    b = [cos(x)   0   sin(x)     0;
         0        1     0        0;
         -sin(x)  0   cos(x)     0;
         0        0      0       1];
endfunction