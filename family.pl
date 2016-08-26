p(petar, hristo).
p(hristo, iva).
p(hristo, valeri).

v(X, Y) :- p(Z, X), p(Y, Z).
