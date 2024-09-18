hanoi(1, Src, Dest, Aux) :- write('Move 1 disk from '), write(Src), write(' to '), write(Dest),nl.
hanoi(N, Src, Dest, Aux) :-
    N > 1,
    M is N-1,
    hanoi(M, Src, Aux, Dest),
    hanoi(1, Src, Dest, Aux),
    hanoi(M, Aux, Dest, Src).
