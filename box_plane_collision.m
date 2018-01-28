%n = normal vector of plane
%c = constant of plane
%r = r vector
%s = s vector
%t = t vector
%P1 = starting point
%P2 = point where sphere is moving
function [t0, C1, C2, C3, C4] = box_plane_collision (n, c, r, s, t, P1, P2)
    v = P2 - P1; %velocity
    reff = 0.5 * (abs(r' * n) + abs(s' * n) + abs(t' * n))

    t0 = -(n' * P1 + c - reff) / (n' * v)

    if (n' * v == 0)
        C1 = t0 = 'moves along with plane';
    elseif (n' * P2 + c >= reff)
        C1 = t0 = 'no collision';
        return;
    end



    if (r' * n != 0 && s' * n != 0 && t' * n != 0) %one solution
        C1 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r + sign(s'*n).*s + sign(t'*n).*t);
    elseif (r' * n != 0 && s' * n != 0 && t' * n == 0) %2 solutions, t*n == 0
        C1 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r + sign(s'*n).*s + t);
        C2 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r + sign(s'*n).*s - t);
    elseif (r' * n != 0 && s' * n == 0 && t' * n != 0) %2 solutions, s*n == 0
        C1 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r + s + sign(t'*n).*t);
        C2 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r - s + sign(t'*n).*t);
    elseif (r' * n == 0 && s' * n != 0 && t' * n != 0) %2 solutions, r*n == 0
        C1 = (P1 + t0.*v) - 0.5*(r + sign(s'*n).*s + sign(t'*n).*t);
        C2 = (P1 + t0.*v) - 0.5*(-r + sign(s'*n).*s + sign(t'*n).*t);
    elseif (r' * n != 0 && s' * n == 0 && t' * n == 0) %4 solutions, r*n != 0
        C1 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r + s + t);
        C2 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r + s - t);
        C3 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r - s + t);
        C4 = (P1 + t0.*v) - 0.5*(sign(r'*n).*r - s - t);
    elseif (r' * n == 0 && s' * n != 0 && t' * n == 0) %4 solutions, s*n != 0
        C1 = (P1 + t0.*v) - 0.5*(r + sign(s'*n).*s + t);
        C2 = (P1 + t0.*v) - 0.5*(r + sign(s'*n).*s - t);
        C3 = (P1 + t0.*v) - 0.5*(-r + sign(s'*n).*s + t);
        C4 = (P1 + t0.*v) - 0.5*(-r + sign(s'*n).*s - t);
    elseif (r' * n == 0 && s' * n == 0 && t' * n != 0) %4 solutions, t*n != 0
        C1 = (P1 + t0.*v) - 0.5*(r + s + sign(t'*n).*t);
        C2 = (P1 + t0.*v) - 0.5*(r - s + sign(t'*n).*t);
        C3 = (P1 + t0.*v) - 0.5*(-r + s + sign(t'*n).*t);
        C4 = (P1 + t0.*v) - 0.5*(-r - s + sign(t'*n).*t);
    end
end