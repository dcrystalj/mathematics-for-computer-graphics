%calculate linar interpolation of 2 rotations
%quaternion 1
%quaternion 2
% % of rotation
function b = q_lerp (q1, q2, h)
    b = q_mul(q1, (1-h)) + q_mul(q2, h);
endfunction
