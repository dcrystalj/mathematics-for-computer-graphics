%Rp = radious of p
%Rq = radious of q
%P1 = p from
%P2 = p to
%Q1 = q from
%Q2 = q to
function [t0, C] = sphere_sphere_collision (Rp, Rq, P1, P2, Q1, Q2)
    Vp = P2 - P1;
    Vq = Q2 - Q1;

    a = P1 - Q1;
    b = Vp - Vq;

    t0 = (-a'*b - sqrt((a'*b)^2 - norm(b)^2 * (norm(a)^2 - (Rp + Rq)^2))) / (norm(b)^2 );

    Pt0 = (P1 + t0*Vp);
    Qt0 = (Q1 + t0*Vq);

    if (norm(Pt0 - Qt0)^2 != (Rp + Rq) ^ 2)
        t0 = C = 'no collision';
        return;
    end

    n = (Qt0 - Pt0) / norm(Qt0 - Pt0);
    C = P1 + t0 * Vp + Rp * n;

end