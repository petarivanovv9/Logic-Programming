% palindrome

% reverse
reverse([X], [X]).
reverse([H|T], N) :- reverse(T, N1), append(N1, [H], N).

palindrome(X) :- reverse(X, X).
