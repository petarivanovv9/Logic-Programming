% min element of a list

min([X], X).
min([H|T], N) :- min(T, N), N < H.
min([H|T], H) :- min(T, N), N >= H.
