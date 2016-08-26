% arc(G, X, Y), дали има дъга X - Y
arc([V, E], X, Y) :- member([X, Y], E).
arc([V, E], X, Y) :- member([Y, X], E).

% path(G, X, Y, V, P), V - visited, P - path
path(G, X, Y, P) :- path(G, X, Y, [], P).
path(G, X, X, V, [X|V]).
path(G, X, Y, V, P) :- arc(G, X, Z), not(member(Z, V)), path(G, Z, Y, [X|V], P).

% G = [V, E]
% connected(G)
connected([V, E]) :- not((member(X, V), member(Y, V), not(path([V,E], X, Y, P)))).

% member
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
