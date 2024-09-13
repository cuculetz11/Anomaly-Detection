function [x] = inversa_mat(A)
  [n, m] = size(A);
  if n != m
    error('nu este patratica');
  endif

B = eye(n);

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
        for j = 1 : n
            aux = B(p,j);
            B(p,j) = B(linie_pivot,j);
            B(linie_pivot,j) = aux;
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
        for j = 1 : n
            B(i,j) = B(i,j) - tp*B(p,j);
        endfor
    endfor
endfor
%pana aici am facut eliminarea gaussiana cu pivotare partiala prezentata la curs si lab

for i = n:-1:2
    for j = i-1:-1:1
        tp = A(j,i)/A(i,i);
        A(j,i) = 0;
        for k = 1:n
            B(j,k) = B(j,k) - tp*B(i,k);
        endfor
    endfor
endfor
%aici am eliminat toate elementele din A de deasupra diagonalei principale
for i = 1:n
    tp = A(i,i);
    A(i,i) = 1;
    for j = 1:n
        B(i,j) = B(i,j)/tp;
    endfor
endfor
x = B;
%aici am facut ca pe diagonala principala sa fie 1
endfunction
