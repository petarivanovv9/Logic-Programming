% perm
% ?- perm(X, [1,2,3]).

remove2(X, [X|Z], Z).
remove2(X, [H|L], [H|N]) :- remove2(X, L, N).

perm([], []).
perm([X|T], L) :- remove2(X, L, M), perm(T, M).
