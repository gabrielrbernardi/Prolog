verificaDiv7(X) :- 0 is mod(X,7).

div7(7).
div7(14).
div7(21).

div7(X) :- 
            X > 21,
            A is X mod 10,
            B is X // 10,
            C is A * 2,
            D is B - C,
            verificaDiv7(D).