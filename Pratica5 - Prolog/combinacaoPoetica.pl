/*
Pedro e Paulo são amigos desde infância e gostam de escrever poemas juntos, para isso eles classificam algumas
palavras, como sendo uma combinação poética. Ou seja, palavras que começam e terminam com a mesma letra. Para 
saber se um poema faz uso de rimas, Pedro e Paulo precisam avaliá-lo. Diante disso, escreva um programa que avalie
se duas palavras são combinações poéticas entre si. Caso não seja, retorne “Não é Combinação Poética”.
*/

primeiroElem([H|_], H).

ultimoElem([E], E).
ultimoElem([_|T], E) :- ultimoElem(T,E).

combinacaoPoetica(X, Y, Z, W, R) :- X == Y, Z == W, R = 'poetica'.
combinacaoPoetica(X, Y, _, _, R) :- X \= Y, R = 'naopoetica'.
combinacaoPoetica(_, _, Z, W, R) :- Z \= W, R = 'naopoetica'.

:- initialization(main).

main :-
	repeat,
	read(L1),
	read(L2),
	primeiroElem(L1, X),
	primeiroElem(L2, Y),
	ultimoElem(L1, Z),
	ultimoElem(L2, W),
	combinacaoPoetica(X, Y, Z, W, R),
	write(R), nl,
	halt(0).
	
