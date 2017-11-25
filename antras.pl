%2.6 „studentas A yra jaunesnis už aukštesnio kurso studentą B“.

studentas(ignas, 4).
studentas(jonas,3).
studentas(tadas,2).
studentas(vytas,2).
studentas(marius,1).
 yraVyresnis(ignas,jonas).
 yraVyresnis(jonas,tadas).
 yraVyresnis(tadas, marius).
 yraVyresnis(marius, vytas).


 %yraVyresnis(A,C) :- yraVyresnis(A,B), yraVyresnis(B,C). %transitive

jaunesnisUzAukstesnio(StudA,StudC) :- studentas(StudA,KursasA), studentas(StudC,KursasC), KursasC>KursasA, vyresnis(StudC, StudA).

vyresnis(StudA, StudB) :- yraVyresnis(StudA, StudB).
vyresnis(StudA, StudC) :- yraVyresnis(StudA, StudB), vyresnis(StudB, StudC).


%6.4 „pirmasis skaičius dalus antrajam.“

%dalusAntram(16,4)


plus(0,Y,Y).
plus(s(X), Y, s(Z)):- plus(X,Y,Z).
minus(A, B, C) :- plus(C, B, A).
dalusAntram(0, _ , 0).
dalusAntram(X, s(0), X).
dalusAntram(A, B, s(N)) :- minus(A, B, R), dalusAntram(R, B, N).
dalus(A,B) :- dalusAntram(A, B, s(N)).

%dalus(s(s(s(s(s(s(0)))))), s(s(s(0)))).
%dalus(s(s(s(s(s(0))))), s(s(s(0)))).