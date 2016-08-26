% natural numbers
n(0).
n(X) :- n(Y), X is Y + 1.

%subset(X, Y) :- not((member(A, X), not((member(A, Y))))).
subset(X, Y) :- perm(Y, A), append(X, _, A).

% generate subsets of length N
subset_of_length(_, [], 0).
subset_of_length(L, [H|T], N) :- member(H, L), N1 is N - 1, subset_of_length(L, T, N1).


% perm
% ?- perm(X, [1,2,3]).

remove2(X, [X|Z], Z).
remove2(X, [H|L], [H|N]) :- remove2(X, L, N).

perm([], []).
perm([X|T], L) :- remove2(X, L, M), perm(T, M).
