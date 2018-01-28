%merge 2 quaternions // conjugate
%quaternion 1
%quaternion 2
function b = q_conjugate (q1)
    b = [q1(1); -q1(2:end)];
endfunction
