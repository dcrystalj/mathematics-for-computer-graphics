function b = translate_3d(x, y, z)
    b = [1 0 0 x;
         0 1 0 y;
         0 0 1 z;
         0 0 0 1];
endfunction