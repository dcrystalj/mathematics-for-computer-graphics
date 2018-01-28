%V = vector to reflect
%n = normal vector of plane, must be in length of 1
function [V_new] = vector_reflection_of_plane (V, n)
    V = V / norm(V);
    n = n / norm(n);
    V_new = V' * (eye(3) - 2*n*n' );
end