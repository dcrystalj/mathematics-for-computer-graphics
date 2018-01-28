%n = normal vector of plane
%c = constant of plane
%r = radious of sphere
%P1 = starting point
%P2 = point where sphere is moving
function [C, t] = sphere_plane_collision (n, c, r, P1, P2)
    v = P2 - P1;
    if (n' * v == 0)
        C = t = 'moves along with plane';
    elseif (n' * P2 + c >= r)
        C = t = 'no collision';
        %return;
    end
    t = -(n' * P1 + c - r) / (n' * v)
    C = (P1 + t .* v) - r .* n
end