ehTriangulo(N, Tn) :- 
                        ehTriangulo(N, 0, Tn).

ehTriangulo(0, Tn, Tn).

ehTriangulo(N, Cont, Tn) :-
                            N > 0,
                            C is N - 1,
                            ContN is Cont + N,
                            ehTriangulo(C, ContN, Tn).