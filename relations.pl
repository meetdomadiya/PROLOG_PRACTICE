male(laxman).
male(nitin).
male(mukesh).
male(mahesh).
male(meet).
male(zeel).
male(sohil).
male(smit).
female(ratan).
female(chandrika).
female(harsha).
female(damyanti).
female(janvi).
female(disha).

married(laxman,ratan).
married(nitin,chandrika).
married(mukesh,harsha).
married(mahesh,damyanti).
married(sohil,disha).

father(laxman,nitin).
father(laxman,mukesh).
father(laxman,damyanti).
father(nitin,meet).
father(mukesh,zeel).
father(mukesh,sohil).
father(mahesh,janvi).
father(mahesh,smit).

mother(X,Y):-father(Z,Y),married(Z,X).
wife(X,Y):-married(X,Y).
brother(X,Y):-father(Z,X),father(Z,Y),male(X),X\==Y.
sister(X,Y):-father(Z,X),father(Z,Y),female(Y),X\==Y.
grandfather(X,Y):-father(Z,Y),male(Z),father(X,Z).
grandmother(X,Y):-father(Z,Y),male(Z),father(W,Z),married(W,X).
