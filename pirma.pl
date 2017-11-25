% Ignas Ausiejus PS 4k 3gr
% 8; 18; 34; 38

% brolis_ir_sesuo(Brolis, Sesuo) - Pirmasis asmuo (Brolis) yra antrojo (Sesuo) brolis, o antrasis yra pirmojo sesuo;
% uosve(Uosve, Zentas) - Pirmasis asmuo (Uosve) yra antrojo (Zentas) uošvė (žmonos mama);
% paveldejo(Asmuo, Pomegis) - Asmuo Asmuo turi tokį patį pomėgį Pomegis kaip ir vienas iš tėvų;
% stos_i_informatika(Abiturientas) - Asmuo Abiturientas yra pakankamo (patys nuspręskite kokio) amžiaus ir domisi informatika;

asmuo(ignas,v,22,informatika).
asmuo(ieva,m,18,informatika).
asmuo(vytautas,v,54,automobiliai).
asmuo(danguole,m,45,keliones).
asmuo(vanda,m,80,mezgimas).
asmuo(stasys,v,78,grybavimas).
asmuo(povilas,v,85,automobiliai).
asmuo(joana,m,83,eilerasciai).

mama(danguole,ignas).
mama(danguole,ieva).
mama(joana,vytautas).
mama(vanda,danguole).

pora(vytautas,danguole).
pora(stasys,vanda).
pora(povilas,joana).

% 8
% brolis_ir_sesuo(ignas,ieva).

brolis_ir_sesuo(Brolis,Sesuo) :- mama(Mama,Brolis),mama(Mama,Sesuo),asmuo(Brolis,v,_,_),asmuo(Sesuo,m,_,_).

% 18
% uosve(vanda,vytautas).

uosve(Uosve,Zentas) :- mama(Uosve,Dukra),pora(Zentas,Dukra).

% 34
% paveldejo(vytautas,automobiliai).

paveldejo(Asmuo, Pomegis) :- asmuo(Asmuo,_,_,Pomegis), asmuo(Tevas,v,_,Pomegis), mama(Mama, Asmuo), pora(Tevas,Mama).
paveldejo(Asmuo, Pomegis) :- asmuo(Asmuo,_,_,Pomegis), asmuo(Mama,m,_,Pomegis), mama(Mama, Asmuo).

% 38
%  stos_i_informatika(Ignas)

stos_i_informatika(Abiturientas) :- asmuo(Abiturientas,_,Amzius,informatika), Amzius>16.
