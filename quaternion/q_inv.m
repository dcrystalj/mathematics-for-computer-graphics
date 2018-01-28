%merge 2 quaternions // multiply
%quaternion 1
%quaternion 2
function b = q_inv (q1)
    b = q_conjugate(q1)/q_length(q1)^2;
endfunction
