% lanczos interpolation (x, fun_vals)
% x = x position to calculate
% Example fun_vals  = [24,6,3,9]

function result = lanczos_interpolation(x, fun_vals)
    fx = floor(x);
    j=1;
    result = 0;
    x_vals = [-x-1, -x, 1-x, (1-x)+1];

    for u=[x_vals]
        if( abs(u) == 0)
            result += 1;
        else
            result += sinc(u) * sinc(u/2) * fun_vals(j);
        end

        j+=1;
    end

endfunction