%calculate log of quaternion
%quaternion in form  a, i, j, k
%exponent
function b = q_log (q1)
    qn = q_to_normal_form(q1);
    b = [0; qn(1)*qn(2:end)];
endfunction
