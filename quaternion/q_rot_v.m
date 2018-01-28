%rotate vetor around quaternion
%vector
%quaternion 4d vector
function b = q_rot_v (vec, q)
    v = q(2:end);
    s = q(1);
	%b = q_mul_q(quat, q_mul_q([0; vec], q_inv(quat)))(2:end);
    b = [(s^2 - v' * v)*vec + 2*(v'*vec)*v - 2*s*cross(vec, v)];
endfunction
