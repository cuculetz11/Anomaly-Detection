# Anomaly-Detection
Cucu Viorel-Cosmin 314CA


    estimate_gaussian(X) - calculez vecorul de medie "mean_values" exact ca o 
    medie aritmetica.Iau toti vectorii x ce au dimensiunea n (m vectorii fiind)
    apoi pentru fiecare pozite din vectorul de medie fac media aritemtica 
    a tuturor elementelor din cei m vectori x de pe aceea pozitie.
    
    Pentru matricea de varianta aplica formula data si obtin o matricea
    de n*n.  


    gaussian_distribution(element_din_X, mean_values, variance) - 
    cu functia aceasta iau cate un vector x din dataset-ul dat si
    folosindu-ma de formula data calculez densiattea de probabilitate
    ca acest elemt aprtine dataset-ului.

    Aici am creat functia "inversa_mat" ce aplica GPP si-mi face matricea 
    upper, apoi elimin toate elementele de deasupra diagonalei, apoi 
    fac ca pe diagonala sa fie doar 1, toate aceste modificari i le fac
    si unei matrici inital "eye"(unitate) in care la final se va regasi
    matricea initala inversata.

    Am creat si functia "calc_det" ce aplica tot GPP ca apoi sa calculez cu
    usurinta determinatul ce se afla pe diagonala principala. 

    multivariate_gaussian(X, mean_values, variances) - iau fiecare 
    element(vector) din X une ii aplic "gaussian_distribution" pentru a
    vedea probabilitatea ficarui element din dataset.


    check_predictions(predictions, truths) - ma ajuta sa stabilesc in functie
    de acesti 2 parametrii urmatoarele chestii:false_pozitives,
    false_negatives, true_pozitives.

    optimal_threshold(truths, probabilitates) - verific 1000 de epsilonuri
    intre cea mai mica si cea mai mare probabilitate apoi folosindu ma de
    functia "check_predictions" si de functia "metrics"(ce imi calculeaza
    precizia recall-ul si parametrul F1) aleg epsilonul, F1 precizia si
    recall-ul optim.
