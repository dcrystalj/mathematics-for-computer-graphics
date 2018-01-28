% make trigonometric form from quaternion [const; ia; jb; kc]
% opposite function is q_to_normal_form
function b = q_to_normal_form(q1)
    q_angle = acos(q1(1));
    v = q1(2:4) ./ sin(q_angle);
    v = v/norm(v);
    b = [q_angle; v];
endfunction
