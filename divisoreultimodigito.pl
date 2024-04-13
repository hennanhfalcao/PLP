main :-
    read(N),
    read(Digito),
    (validaentrada(N, Digito) -> 
        (divisor(N, Digito) -> Resposta1 = true; Resposta1 = false),
        (ultimodigito(N, Digito) -> Resposta2 = true; Resposta2 = false),
        exiberesposta(Resposta1, Resposta2, N, Digito)
    ;
        write('Input invalido')
    ),
    halt.
validaentrada(N, Digito) :-
    N > 0,
    Digito > 0,
    Digito < 10.

divisor(N, Digito) :- 
    N mod Digito =:= 0.

ultimodigito(N, Digito) :-
    Digito =:= N mod 10. 

exiberesposta(true, true, N, Digito) :-
    write(Digito), write(" eh ao mesmo tempo divisor e o ultimo digito de "), write(N), write(".").
exiberesposta(true, false, N, Digito) :-
    write(Digito), write(" eh divisor de "), write(N), write(".").
exiberesposta(false, true, N, Digito) :-
    write(Digito), write(" eh o ultimo digito de "), write(N), write(".").
exiberesposta(false, false, N, Digito) :-
    write(Digito), write(" nem eh divisor de "), write(N), write(" nem eh igual ao ultimo digito.").