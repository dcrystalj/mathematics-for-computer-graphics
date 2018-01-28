%Points is  = [point1   point2   point3 ...]
function [Q, radius] = bounding_sphere(Points, S)

    [r s t] = r_s_t(S);

    [_, Pmin] = min(Points' * r);
    [_, Pmax] = max(Points' * r);
    Pmin = Points(:, Pmin);
    Pmax = Points(:, Pmax);

    %center
    Q = (Pmin + Pmax) / 2;
    radius = norm(Pmax - Q);

    allBounded = false;

    while (! allBounded)

        allBounded = true;

        for i=1:length(Points)

            Pi = Points(:, i);

            if (norm(Pi - Q)^2 > radius^2)
                allBounded = false;
                G = Q - radius * (Pi - Q) / norm(Pi - Q);
                Q = (G + Pi) / 2;
                radius = norm(Pi - Q);
            end
        end

    end

    %plot
    %r=radius;
    %a = Q(1);
    %b = Q(2);
    %c = Q(3);

    %phi=linspace(0,pi,30);
    %theta=linspace(0,2*pi,40);
    %[phi,theta]=meshgrid(phi,theta);

    %x=r*sin(phi).*cos(theta);
    %y=r*sin(phi).*sin(theta);
    %z=r*cos(phi); 

    %surf (x+a, y+b, z+c);

endfunction
