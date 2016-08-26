% between
between(A, B, A) :- A =< B.
between(A, B, X) :- A =< B, D is A + 1, between(D, B, X).
