%calculate exponent of quaternion
%quaternion in trigonometric form
%exponent
function b = q_temp()
    p = [2*pi/3; -1; 1; -1];
    q = [4*pi/3; 1; 1; -1];
    p = q_to_trigonometric(p)
    q = q_to_trigonometric(q)
    % h = 0.7;
    % qc = q_conjugate(p);
    % oklepaj = q_mul_q(qc, q)
    % pow = q_exp(oklepaj, h)
    % b = q_mul_q(p, pow)


endfunction
