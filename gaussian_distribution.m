function probability = gaussian_distribution(element_din_X, mean_value, variance)
    
    [a n] = size(element_din_X);
    INV = inversa_mat(variance);
    DET = calc_det(variance);
   
    for i = 1:n 
        vector(i) = element_din_X(i) - mean_value(i);
    endfor

    probability = 1/ (sqrt( ((2*pi) ^ n))*  sqrt(DET)) * exp(-0.5 * vector * INV * vector');
    
endfunction