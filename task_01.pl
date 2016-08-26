% 19.11.2011, task-02

% d(X, Y) - дали X се дели на Y
d(X, Y) :- X mod Y =:= 0.

prime(X) :- not((between(2, X - 1, Y), d(X, Y))).

primers(N, X) :- between(2, N, X), prime(X).

p(X, Y) :- max(X, Y, N), not((primers(N, Z), not(k(X, Y, Z)))).

% дали 2 числа се делят на някое друго
k(A, B, X) :- d(A, X), d(B, X).
k(A, B, X) :- not(d(A, X)), not(d(B, X)).

max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- Y > X.

between(A, B, A) :- A =< B.
between(A, B, C) :- A =< B, D is A + 1, between(D, B, C).
