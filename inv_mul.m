function t = inv_mul(a, n)
    t = 0;     newt = 1;
    r = n;     newr = a;
    while (newr != 0)
        q = round(r / newr);
        tmp1 = newt;
        newt = t-q*newt;
        t = tmp1;

        tmp2 = newr;
        newr = r-q*newr;
        r = tmp2;

        %(t, newt) := (newt, t - quotient * newt)
        %(r, newr) := (newr, r - quotient * newr)
    end
    %if (t > 0) t = t-n; end
    %if (t < 0) t = t *-1 end
    t
    if ( r> 0 && t <0) t = n+t;end
    if ( r< 0 && t >0) t = n-t;end
    if ( t< 0) t *= -1; end
endfunction