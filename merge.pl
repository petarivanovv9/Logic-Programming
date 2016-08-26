%merge(A,B,N)

merge([X], [], [X]).
merge([],[X], [X]).
merge([H|A], [HB|B], [H|N]):-H<HB,merge(A, [HB|B], N).
merge([HA|A], [H|B], [H|N]):-HA>=H, merge([HA|A], B, N).