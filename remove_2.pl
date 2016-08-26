% remove element from a list

remove2(X, [X|Z], Z).
remove2(X, [H|L], [H|N]) :- remove2(X, L, N).
