% append
append([], B, B).
append([H|A], B, [H|N]) :- append(A, B, N).

% add element to a list
add(X, L, [X|L]).

% insert
insert(X, L, N) :- remove(X, N, L).

% take element A out of list L and result is in R
out(A, L, R) :- append(X, [A|T], L), append(X, T, R).

% length of list
len([], 0).
len([_|T], N) :- len(T, N1), N is N1 + 1.

% sum of elements
sum([], 0).
sum([H|T], N) :- sum(T, N1), N is N1 + H.

% first element
first([X|_], X).

% tail
tail([_|X], X).

% second
second(L, X) :- tail(L, N), first(N, X).

% last
last([X], X).
last([_|L], X) :- last(L, X).
