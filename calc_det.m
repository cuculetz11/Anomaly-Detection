function[x] = calc_det(A)
    [n, m] = size(A);
if n != m
    error('nu este patratica');
endif

for p = 1: n-1
    pivot = -inf;
    linie_pivot = -1;
    for i = p : n
        if abs(A(i,p)) > pivot
            pivot = abs(A(i,p));
            linie_pivot = i;
        endif
    endfor

    if linie_pivot != p
        for j = p : n
            aux = A(p,j);
            A(p,j) = A(linie_pivot,j);
            A(linie_pivot,j) = aux;
        endfor
    endif

    for i = p+1 : n 
        if A(p,p) == 0
            continue;
        endif

        tp = A(i,p)/A(p,p);
        A(i,p) = 0;
        for j = p+1 : n
            A(i,j) = A(i,j) - tp*A(p,j);
        endfor
    endfor
endfor
%pana aici am facut eliminarea gaussiana cu pivotare partiala prezentata la curs si lab

det = 1;
for i = 1:n
    det = det * A(i,i);
endfor

x = det;
endfunction