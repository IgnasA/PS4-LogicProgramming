% 1.6 tr_suma(Sar,Sum) - teisingas, kai duotame sąraše Sar galima rasti
% tris iš eilės einančius skaičius, kurių suma lygi Sum. 
% tr_suma([1,2,3,4,5,6,7],12).
tr_suma([A,B,C|_], X) :- 
	X = Answer,
	Answer is A+B+C.
	
tr_suma([_|Tail], X) :- tr_suma(Tail,X) ,!.

% ----------------------------------------------------------------------------

% 2.1 min(S,M) - skaičius M - mažiausias skaičių sąrašo S elementas
% min([4,5,8,20,0,45,-5], M).

min([],X,X).
min([H|T],M,X) :- H =< M, min(T,H,X).
min([H|T],M,X) :- M < H, min(T,M,X).
min([H|T],X) :- min(T,H,X), !.

% ----------------------------------------------------------------------------

% 3.2 iterpti(S,K,R) - sąrašas R gautas į duotąjį skaičių sąrašą S, 
% įterpus duotąjį skaičių K, kad K kaimynas iš kairės sąraše R būtų mažesnis, 
% o iš dešinės - didesnis negu K. 
% iterpti([1,0,0,0,5,20],4,R).
% iterpti([A,B], X, [A,X,B]):- A<X, X<B.
iterpti([A,B|Tail], X, [A,X,B|Tail]) :- A<X, X<B.
iterpti([H1|T1], X, [H1|T2]):-  iterpti(T1,X,T2).

% ----------------------------------------------------------------------------

% 4.9 posarasis(S1,S2) - sąrašas S2 susideda iš (gal būt ne visų) 
% sąrašo S1 elementų, išdėstytų ta pačia tvarka, kaip ir sąraše S1. 
% Kitaip tariant, iš sąrašo S1 išmetus tam tikrus elementus, galime gauti sąrašą S2. 
% posarasis([1,2,3,4,8,7,5,0,6,9,10], [3,0,9,10]).
posarasis( _, [] ).
posarasis( [X|Tail], [X|XS] ) :- posarasis( Tail, XS ).
posarasis( [_|Tail], [X|XS] ) :- posarasis( Tail ,[X|XS] ), !.