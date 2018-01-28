%calculate spherical interpolation of 2 rotations
%quaternion 1
%quaternion 2
% % of rotation
function b = q_slerp (q1, q2, h)
    b = q_mul_q(q1, q_exp(q_mul_q(q_conjugate(q1), q2), h));
    %b = b/norm(b)
endfunction
