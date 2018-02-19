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
	
