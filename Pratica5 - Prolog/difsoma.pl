/* 
Escreva um programa que receba uma lista de inteiros positivos, em seguida imprima a diferença 
entre o maior e o menor número da sequência, somada a soma de todos os números da mesma. 
Ex: Lista [7, 8, 9, 2, 6], o cálculo deve ser 9-2 = 7 + (32) = 39 
*/

:- initialization main.

main :-
    read(X),
    sum_list(X, Y),
    max_list(X, M),
    min_list(X, V),
    R is (M-V)+Y,
    write(R).
