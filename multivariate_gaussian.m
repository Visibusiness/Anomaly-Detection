% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
        probabilities = 0;
    [m, n] = size(X);
    probabilities = zeros(m, 1);
    term = zeros(n, 1);
    c = 1 / (((2 * pi)^(n/2)) * (det(variances)^(1/2)));
    for i=1:m
        term = X(i, :)' - mean_values';
        probabilities(i) = c * exp(-0.5 * term' * inv(variances) * term);
    endfor

endfunction
