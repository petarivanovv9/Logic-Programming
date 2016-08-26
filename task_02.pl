% 17.11.2012, task-02

p(X) :- n(N), between(0, N, A), between(0, N, B), between(0, N, C), Z is A*B*C, 1 is mod(Z, 3),
B*B - 4*A*C > 0, write([A,B,C]).

n(0).
n(X) :- n(Y), X is Y + 1.

between(A, B, A) :- A =< B.
between(A, B, C) :- A =< B, D is A + 1, between(D, B, C).
