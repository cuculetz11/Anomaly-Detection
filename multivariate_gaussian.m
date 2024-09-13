% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    [m n] = size(X);
    
    for i = 1:m
        probabilities(i) = gaussian_distribution(X(i,:), mean_values, variances);
    endfor
    probabilities = probabilities';
endfunction
