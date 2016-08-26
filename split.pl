% split list by a element into two lists
% split(X, L, A, B)

split(_, [], [], []).
split(X, [H|T], [H|A], B) :- H < X, split(X, T, A, B).
split(X, [H|T], A, [H|B]) :- H >= X, split(X, T, A, B).
