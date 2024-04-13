main:-
    read(N),
    N > 0,
    geraquadrados(N, 1),
    halt.
geraquadrados(0,_):-!.
geraquadrados(N, X):-
    Quadrado is X*X,
    write(Quadrado),
    nl,
    ProxN is N-1,
    ProxX is X+1,
    geraquadrados(ProxN, ProxX).
    
    
    