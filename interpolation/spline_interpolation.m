%spline interpolation (x, a, b)
%catmull-rom spline - a = 0.5, b=0
%cubic B-spline approximation a = 0, b=1
%mitchell-netravali approximation a = 1/3, b=1/3
function result = spline_interpolation(x, a=0.5, b=0)
    ax = abs(x);
    if (0 <= ax && ax < 1)
        result = 1/6 * ((-6*a-9*b+12)*ax^3 + (6*a+12*b-18)*ax^2 - 2*b+6);
    elseif (1 <= ax && ax < 2)
        result = 1/6 * ((-6*a-b)*ax^3+(30*a+6*b)*ax^2+(-48*a-12*b)*ax + 24*a + 8*b);
    else
        result = 0
    end
endfunction