%merge 2 quaternions // conjugate
%quaternion 1
%quaternion 2
function b = q_mul_scalar (scalar, q1)
    b = [scalar; 0; 0; 0]' * q1;
endfunction
