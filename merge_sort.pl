append([],B,B).
append([H|A], B, [H|N]):-append(A,B, N). 

split([H|T],[H|A],B):-append([H|A], B, [H|T]).

merge(X, [], X).
merge([],X, X).
merge([H|A], [HB|B], [H|N]):-H<HB,merge(A, [HB|B], N).
merge([HA|A], [H|B], [H|N]):-HA>=H, merge([HA|A], B, N).

%ms(L, N).

ms([X], [X]).
ms(L,N):-split(L,A,B), ms(A,HA), ms(B,HB),merge(HA, HB,N).