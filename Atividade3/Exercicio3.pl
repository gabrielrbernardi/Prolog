ehPar(X) :- 0 is mod(X,2).

assombroso(N) :- N == 1 -> !;               %Se N igual a 1, para a execução, fazendo o corte
                 N < 1 -> false;            %Se N menor que 1, nao eh numero assombroso
                 ( ehPar(N) -> Y is N // 2, %Se o numero for par, faz-se a divisao por 2
                    assombroso(Y);
                    Y is N * 3 + 1,         %Se o numero for impar, multiplica o valor por 3 e soma 1
                    assombroso(Y)
                 ).