% remove element from a list
add(X, L, [X|L]).
remove(X, L, N) :- add(X, N, L).
