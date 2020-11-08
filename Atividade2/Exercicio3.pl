palavra(bala, b,a,l,a).
palavra(cama, c,a,m,a).
palavra(alta, a,l,t,a).
palavra(anta, a,n,t,a).

cruzadinha(V1, V2, H1, H2) :- palavra(V1, _, V1l2, _, V1l4),
                              palavra(V2, V2l1, _, V2l3, _),
                              palavra(H1, _, H1l2, _, H1l4),
                              palavra(H2, H2l1, _, H2l3, _),
                              H1l2 == V1l2,
                              H1l4 == V2l1,
                              H2l1 == V1l4,
                              H2l3 == V2l3,
                              H1 \= H2, H1 \= V1, H1 \= V2,
                              H2 \= V1, H2 \= V2,
                              V1 \= V2.
