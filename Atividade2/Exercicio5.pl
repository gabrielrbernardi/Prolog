influencer(penny).
influencer(mary).
influencer(john).

likes(john,mary).
likes(john,ringo). 
likes(mary,john). 
likes(john,beer). 
likes(john,wine). 
likes(mary,wine). 
likes(ringo,john). 
likes(ringo,beer). 
likes(george,mary).

likes_(X, Y) :- not(influencer(X)), influencer(Z), influencer(W), Z \= W, likes(Z, Y), likes(W, Y), !.