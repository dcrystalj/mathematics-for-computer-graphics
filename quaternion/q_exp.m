%calculate exponent of quaternion
%quaternion in trigonometric form
%exponent
function b = q_exp (q1, t)
    qn = q_to_normal_form(q1)
    qn(1) = qn(1) * t;
    b = [cos(qn(1)); qn(2:end) * sin(qn(1)) ];

endfunction
