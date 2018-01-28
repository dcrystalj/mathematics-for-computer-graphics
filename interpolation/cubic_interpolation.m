% cubic interpolation (x, a, b)
%catmull-rom spline - a = 0.5, b=0
%cubic B-spline approximation a = 0, b=1
%mitchell-netravali approximation a = 1/3, b=1/3
%fun_vals = values of sampled function where kernel is intersected.
% Example fun_vals = [18,6,3,9]

function result = cubic_interpolation(x, a=0.5, b=0, fun_vals)
    ax = abs(x);
    fx = floor(x);
    j=1;
    result = 0;

    for u=[fx-1:fx+2]
        result += spline_interpolation(x-u, a, b)*fun_vals(j);
        j+=1;
    end

endfunction