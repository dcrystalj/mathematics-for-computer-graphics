%put trigonometric quaternion in normal form
%input: quaternion 1  => [(rotation by) angle (* 2); (around the) vector ]
%function inverse is q_to_trigonometric
function new_q = q_to_trigonometric (q1)
    q_angle = cos(q1(1));
    v = q1(2:4) / norm(q1(2:4))
    v = v .* sin(q1(1));
    new_q = [q_angle; v]; %/ q_length([q_angle; v]);
endfunction
