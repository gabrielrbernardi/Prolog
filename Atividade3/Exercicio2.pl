%Criando variaveis referentes ao restp da divisao por 10
variable(0).
variable(1).
variable(2).
variable(3).
variable(4).
variable(5).
variable(6).
variable(7).
variable(8).
variable(9).

cryptogram(X, Y, Z) :- variable(X), variable(Y), variable(Z),
                        X > 0,
                        X =\= Y, X =\= Z, Y =\= Z,
                        R1 is X * 100 + Y * 10 + Z,
                        R2 is X * 10 + 3,
                        R3 is X * 100 + Z * 10 + Y,
                        R3 is R1 + R2.