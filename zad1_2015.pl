a(0, 1).
a(N, R) :- a(N1, R1), N is N1 + 1, R is R1 + R1 + N.

b(0, 1).
b(N, R) :- b(N1, R1), N is N1 + 1, R is 3 * R1 + N * N - 1.

% natural numbers
n(0).
n(X) :- n(Y), X is Y + 1.

% between
between(A, B, A) :- A =< B.
between(A, B, X) :- A =< B, D is A + 1, between(D, B, X).


p(N, Z) :- a(N, A), between(0, N, X), b(X, B), Z is A + B.


a(1,0).
a(X,N):-n(N),N1 is N-1,a(Y,N1),X is (2*Y + N),!.

c(1).
c(X):- n(Y),a(X,Y).

b(1,0).
b(X,N):-n(N),N1 is N-1,b(Y,N1),X is (3*Y + N*N - 1),!.

d(1).
d(X):- n(Y),b(X,Y).

p(X):- c(Y),d(K),X is Y+K.
