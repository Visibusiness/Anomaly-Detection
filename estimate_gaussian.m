
function [mean_values variances] = estimate_gaussian(X)
    [m, n] = size(X);
    term =  zeros(1, n);
    mean_values = zeros(1, n);
    variances = zeros(n, n);

    for i=1:n
        mean_values(i) = sum(X(:, i));
    endfor
    mean_values = mean_values/m;
    for i=1:m
        term = X(i, :)' - mean_values';
        variances = variances + term * term';
    endfor
    variances = variances/m;
endfunction
