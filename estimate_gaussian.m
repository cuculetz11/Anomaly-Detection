% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)

[m n] = size(X);
%m-nr de vextori x din X, n-nr de elemente din fiecare vector
for i = 1:n
    sum = 0;
    for k = 1:m
        sum = sum + X(k,i);
    endfor
    mean_values(i) = 1/m * sum;
endfor

variances = zeros(n,n);
for k = 1 : m 
    SUM = zeros(n,n);
    for i = 1 : n
        for j = 1 : n
            SUM(i,j) = SUM(i,j) + (X(k,i) - mean_values(i)) * (X(k,j) - mean_values(j));
        endfor
    endfor
    variances = variances + SUM;
endfor
variances = 1/m * variances;


endfunction
