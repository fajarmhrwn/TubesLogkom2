:- include('dadu.pl').

:- dynamic(kepemilikanProperti/3).
:- dynamic(ketPlayer/2).
% kepemilikanProperti(X,A,B)
% nomorLokasi, Player, Bangunan

kepemilikanProperti(1,a,'L').
kepemilikanProperti(2,a,'2').
kepemilikanProperti(3,a,'1').
kepemilikanProperti(4,c,'L').
kepemilikanProperti(5,b,'2').
kepemilikanProperti(6,d,'3').
kepemilikanProperti(7,a,'x').
kepemilikanProperti(8,b,'x').
kepemilikanProperti(9,a,'x').
kepemilikanProperti(10,a,'x').
kepemilikanProperti(11,c,'x').
kepemilikanProperti(12,d,'x').
kepemilikanProperti(13,d,'x').
kepemilikanProperti(14,a,'x').
kepemilikanProperti(15,d,'x').
kepemilikanProperti(16,c,'x').
kepemilikanProperti(17,c,'x').
kepemilikanProperti(18,a,'x').
kepemilikanProperti(19,a,'x').
kepemilikanProperti(20,a,'1').
kepemilikanProperti(21,a,'x').
kepemilikanProperti(22,c,'x').
kepemilikanProperti(23,d,'l').
kepemilikanProperti(25,d,'x').
kepemilikanProperti(26,a,'x').
kepemilikanProperti(27,c,'x').
kepemilikanProperti(28,b,'x').
kepemilikanProperti(29,a,'x').
kepemilikanProperti(30,d,'x').
kepemilikanProperti(31,a,'x').

ketPlayer(a,'A').
ketPlayer(b,'B').
ketPlayer(c,'C').
ketPlayer(d,'D').

coba(Bangunan) :- 
    kepemilikanProperti(X,Player,Bangunan),
    Player \== x,
    write(X),nl,
    write(Player),nl,
    write(Bangunan),nl.

conv(a1,1).
conv(a2,2).
conv(a3,3).
conv(cc,4).
conv(b1,5).
conv(b2,6).
conv(b3,7).
conv(jl,8).
conv(c1,9).
conv(c2,10).
conv(c3,11).
conv(tx,12).
conv(cf,13).
conv(d1,14).
conv(d2,15).
conv(fp,16).
conv(e1,17).
conv(e2,18).
conv(e3,19).
conv(cc,20).
conv(f1,21).
conv(f2,22).
conv(f3,23).
conv(wt,24).
conv(g1,25).
conv(g2,26).
conv(g3,27).
conv(tx,28).
conv(cc,29).
conv(h1,30).
conv(h2,31).
conv(go,0).


nomor('A1',1).
nomor('A2',2).
nomor('A3',3).
nomor('CC',4).
nomor('B1',5).
nomor('B2',6).
nomor('B3',7).
nomor('JL',8).
nomor('C1',9).
nomor('C2',10).
nomor('C3',11).
nomor('TX',12).
nomor('CF',13).
nomor('D1',14).
nomor('D2',15).
nomor('FP',16).
nomor('E1',17).
nomor('E2',18).
nomor('E3',19).
nomor('CC',20).
nomor('F1',21).
nomor('F2',22).
nomor('F3',23).
nomor('WT',24).
nomor('G1',25).
nomor('G2',26).
nomor('G3',27).
nomor('TX',28).
nomor('CC',29).
nomor('H1',30).
nomor('H2',31).
nomor('GO',0).


printPosisi(Player) :-
    posisi(X,Player),
    nomor(Y,X),
    write(Y).

printAtas(16) :- 
    write('           '),
    printAtas(17).
printAtas(X) :-
    X =\=0,
    X <25,
    kepemilikanProperti(X,Player,Bangunan),
    Player == x,
    write('     '),
    X1 is X+1,
    printAtas(X1),!.
printAtas(X) :-
    X =\=0,
    X<25,
    kepemilikanProperti(X,Player,Bangunan),
    Player \== x,
    write(Player),
    write(Bangunan),
    write('   '),
    X1 is X+1,
    printAtas(X1),!.

printAtas(24):-!.


printBawah(8):-
    write('           '),
    printBawah(7).

printBawah(X) :-
    kepemilikanProperti(X,Player,Bangunan),
    Player == x,
    write('     '),
    X1 is X-1,
    printBawah(X1).

printBawah(X) :-
    kepemilikanProperti(X,Player,Bangunan),
    Player \== x,
    write(Player),
    write(Bangunan),
    write('   '),
    X1 is X-1,
    printBawah(X1).

printBawah(0):-!.

printKota(X) :-
    kepemilikanProperti(X,Player,Bangunan),
    Player == x,
    write('    ').

printKota(X) :-
    kepemilikanProperti(X,Player,Bangunan),
    Player \== x,
    write(' '),
    write(Player),
    write(Bangunan),
    write(' ').


printMap(J,J) :-!.

printMap(0,J) :- 
    write('           '),
    printAtas(17),nl,
    printMap(1,J).

printMap(1,J) :- 
    write('    ---------------------------------------------'),nl,
    printMap(2,J).

printMap(2,J) :- 
    write('    | FP | E1 | E2 | E3 | CC | F1 | F2 | F3 | WT |'),nl,
    printMap(3,J).

printMap(3,J) :- 
    printKota(15),
    write('| D2 |----------------------------------| G1 |'),
    printKota(25),
    nl,
    printMap(4,J).

printMap(4,J) :- 
    printKota(14),
    write('| D1 |                                  | G2 |'),
    printKota(26),
    nl,
    printMap(5,J).

printMap(5,J) :- 
    printKota(13),
    write('| CF |                                  | G3 |'),
    printKota(27),
    nl,
    printMap(6,J).

printMap(6,J) :-
    printKota(12),
    write('| TX |          M O N O P O L Y         | TX |'),
    printKota(28),
    nl,
    printMap(7,J).

printMap(7,J) :-
    printKota(11),
    write('| C3 |                                  | CC |'),
    printKota(29),
    nl,
    printMap(8,J).

printMap(8,J) :-
    printKota(10),
    write('| C2 |                                  | H1 |'),
    printKota(30),
    nl,
    printMap(9,J).

printMap(9,J) :-
    printKota(9),
    write('| C1 |----------------------------------| H2 |'),
    printKota(31),
    nl,
    printMap(10,J).

printMap(10,J) :-
    write('    | JL | B3 | B2 | B1 | CC | A3 | A2 | A1 | GO |'),nl,
    printMap(11,J).

printMap(11,J) :-
    write('    ----------------------------------------------'),nl,
    printMap(12,J).

printMap(12,J) :-
    write('           '),
    printBawah(7),nl,
    printMap(13,J).
printMap(13,J) :-
    write('A = '),
    printPosisi(player1),nl,
    write('B = '),
    printPosisi(player2),!.

map:-
    printMap(0,14),!.