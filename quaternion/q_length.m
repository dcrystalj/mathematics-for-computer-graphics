%merge 2 quaternions // conjugate
%quaternion 1
%quaternion 2
function b = q_length (q1)
    b = sqrt(q1' * q1);
endfunction
