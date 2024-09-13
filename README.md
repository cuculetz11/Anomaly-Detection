# Anomaly-Detection
Cucu Viorel-Cosmin 314CA

   # Descriere Funcții pentru Gaussian Distribution

## estimate_gaussian(X)
Calculez vectorul de medie `mean_values` exact ca o medie aritmetică. Iau toți vectorii `x` care au dimensiunea `n` (cu `m` vectori în total). Pentru fiecare poziție din vectorul de medie, calculez media aritmetică a tuturor elementelor din vectorii `x` pe aceeași poziție.

Pentru matricea de variație (covarianță), aplic formula dată și obțin o matrice de dimensiune `n x n`.

## gaussian_distribution(element_din_X, mean_values, variance)
Această funcție calculează densitatea de probabilitate pentru fiecare vector `x` din dataset folosind formula Gaussiană. Astfel, determin probabilitatea ca un anumit element să aparțină dataset-ului.

Am creat și funcția `inversa_mat`, care aplică metoda **Gauss cu pivotare parțială (GPP)** pentru a transforma matricea într-o formă upper triangular (triunghiulară superior). Apoi elimin toate elementele de deasupra diagonalei și modific elementele de pe diagonală astfel încât acestea să fie egale cu 1. Toate aceste modificări sunt aplicate și unei matrici inițiale unitate (identity matrix), care la final va conține matricea inversată.

Am creat și funcția `calc_det`, care aplică GPP pentru a calcula determinantul, ce se regăsește pe diagonala principală a matricei upper triangular.

## multivariate_gaussian(X, mean_values, variances)
Această funcție ia fiecare element (vector) din `X` și aplică funcția `gaussian_distribution` pentru a calcula probabilitatea fiecărui element din dataset.

## check_predictions(predictions, truths)
Funcția aceasta ajută la determinarea următoarelor valori, bazate pe predicțiile și adevărul etichetat (truths):
- **False positives**
- **False negatives**
- **True positives**

## optimal_threshold(truths, probabilitates)
Pentru determinarea unui prag (threshold) optim, testez 1000 de valori de epsilon între cea mai mică și cea mai mare probabilitate. Folosesc funcția `check_predictions` împreună cu funcția `metrics`, care calculează **precizia**, **recall-ul** și **scorul F1**. În funcție de aceste valori, aleg pragul epsilon optim, împreună cu valorile F1, precizia și recall-ul optime.
