%create matrix with wich you can multiply vector to rotate it
%a = angle in radians
function b = rot (a)
    b = [[cos(a) -sin(a)]; [sin(a) cos(a)]];
endfunction
