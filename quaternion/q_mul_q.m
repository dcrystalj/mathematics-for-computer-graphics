%merge 2 quaternions // multiply
%quaternion 1
%quaternion 2
function b = q_mul_q (q, r)
    b = zeros(4, 1);
    s1 = q(1);
    s2 = r(1);
    v1 = q(2:end);
    v2 = r(2:end);
    b(1) = s1*s2 - v1' * v2;
    b(2:end) = s1 * v2 + s2 * v1 + cross(v1, v2);
    % b(1) = r(1)*q(1) - r(2)*q(2) - r(3)*q(3) - r(4)*q(4);
    % b(2) = r(1)*q(2) + r(2)*q(1) - r(3)*q(4) + r(4)*q(3);
    % b(3) = r(1)*q(3) + r(2)*q(4) + r(3)*q(1) - r(4)*q(2);
    % b(4) = r(1)*q(4) - r(2)*q(3) + r(3)*q(2) + r(4)*q(1);
endfunction
