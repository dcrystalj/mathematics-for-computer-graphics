% linear interpolation (x, fun_vals)
% Example fun_vals = [17, 10]
% result = (18 + 10)/2 = 14

function result = linear_interpolation(x, fun_vals)
    fx = floor(x);
    result = fun_vals(1)*(1-(x - fx)) + fun_vals(2)*(x - fx);
endfunction