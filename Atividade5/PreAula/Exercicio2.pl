jogoDaVelha([V1,V2,V3,V4,V5,V6,V7,V8,V9]) :- 
    write(V1), write(" | "), write(V2), write(" | "), write(V3), nl,
    write(V4), write(" | "), write(V5), write(" | "), write(V6), nl,
    write(V7), write(" | "), write(V8), write(" | "), write(V9), nl,
    (   V1 == 'x', V2 == 'x', V3 == 'x' -> write("Deu Velha"), ! );
    (   V1 == 'o', V2 == 'o', V3 == 'o' -> write("Deu Velha"), ! );
    (   V1 == 'x', V4 == 'x', V7 == 'x' -> write("Deu Velha"), ! );
    (   V1 == 'o', V4 == 'o', V7 == 'o' -> write("Deu Velha"), ! );
    (   V1 == 'x', V5 == 'x', V9 == 'x' -> write("Deu Velha"), ! );
    (   V1 == 'o', V5 == 'o', V9 == 'o' -> write("Deu Velha"), ! );
    (   V2 == 'x', V5 == 'x', V8 == 'x' -> write("Deu Velha"), ! );
    (   V2 == 'o', V5 == 'o', V8 == 'o' -> write("Deu Velha"), ! );
    (   V3 == 'x', V6 == 'x', V9 == 'x' -> write("Deu Velha"), ! );
    (   V3 == 'o', V6 == 'o', V9 == 'o' -> write("Deu Velha"), ! );
    (   V4 == 'x', V5 == 'x', V6 == 'x' -> write("Deu Velha"), ! );
    (   V4 == 'o', V5 == 'o', V6 == 'o' -> write("Deu Velha"), ! );
    (   V7 == 'x', V8 == 'x', V9 == 'x' -> write("Deu Velha"), ! );
    (   V7 == 'o', V8 == 'o', V9 == 'o' -> write("Deu Velha"), ! );
    write("Nao deu velha"), nl, false.