%Points is  = [point1   point2   point3 ...]
function [Q1, Q2, radius] = bounding_cylinder(Points, S)

    [r s t] = r_s_t(S);

    % component of each point Pi parallel to the R direction is ignored.
    % Instead of working directly with the points { Pi },
    % we remove the projection of each Pi onto R and work with the points {Hi}
    H = round( (Points' - (Points' * r)*r')' * 10000)/10000;

    %find min and max with Hi dot product with S
    H_dot_s = H' * s;

    %min
    [_, H_min] = min(H_dot_s);
    H_min = H(:, H_min);

    %max
    [_, H_max] = max(H_dot_s);
    H_max = H(:, H_max);

    Q = (H_min + H_max) / 2;

    radius = norm(H_max - Q);

    allBounded = false;
    while (! allBounded)

        allBounded = true;

        for i=1:length(Points)
            Hi = H(:, i);

            if (norm(Hi - Q) ^ 2 > radius ^ 2)
                allBounded = false;
                G = Q - radius * (Hi - Q) / norm(Hi - Q);
                Q = (G + Hi) / 2;
                radius = norm(Hi - Q);
                break;
            end
        end
        break;
    end


    %find min and max with Hi dot product with S
    p_dot_r = Points' * r;

    %min
    [_, p_min] = min(p_dot_r);
    p_min = Points(:, p_min);

    %max
    [_, p_max] = max(p_dot_r);
    p_max = Points(:, p_max);


    Q1 = Q + (p_min' * r) * r;
    Q2 = Q + (p_max' * r) * r;
endfunction
