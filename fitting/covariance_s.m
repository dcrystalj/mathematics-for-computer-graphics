function a = covariance_s (A)
    n = length(A);
    m = (sum(A') / n)';
    Y = A - m;
    a = 1/n * Y * Y';
end