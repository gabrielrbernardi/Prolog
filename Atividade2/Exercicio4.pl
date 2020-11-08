ladrao(xandao).

gosta(lucas, arroz).
gosta(gabriel, feijao).

gosta(xandao, feijao).

poderoubar(X, Y) :- ladrao(X), gosta(X, Z), gosta(Y, Z).