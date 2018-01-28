%bilinear interpolation (x, a)
%x - what is interpolated value at x(x,y)
%a - [value a, I(x,y)]     example a = [33 1, 1];
%b - [value b, I(x+1,y)]
%c - [value c, I(x, y+1)]
%d - [value d, I(x+1, y+1)]
function g = bilinear_interpolation(x, a, b, c, d)
    e = a(1) + (x(1) - a(2)) * (b(1) - a(1));
    f = c(1) + (x(1) - a(2)) * (d(1) - c(1));
    g = e + (x(2) - a(3)) * (f - e);
endfunction