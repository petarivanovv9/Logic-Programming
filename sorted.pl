% is list sorted

sorted([]).
sorted([_]).
%sorted([A, B|T]) :- A =< B, sorted(T).
sorted([A, B|T]) :- sorted(T), B >= A.
