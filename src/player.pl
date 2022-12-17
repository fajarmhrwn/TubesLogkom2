:- include('lokasi.pl').
:- include('map.pl').

:- dynamic(putaran/2).

putaran(player1,no).
putaran(player2,no).



:- dynamic(player/5).
% player(X,A,B,C,D)
% namaPlayer, posisi, totalUang, totalProperti, totalAset
:- dynamic(totalUang/2).
:- dynamic(totalProperti/2).
:- dynamic(listCard/2).
:- dynamic(listProperti/2).
:- dynamic(banyakCard/2).
:- dynamic(banyakProperti/2).



% Deklarasi Fakta

totalUang(player1,350).
totalUang(player2,350).

totalProperti(player1,600).
totalProperti(player2,600).

listProperti(player1,[b1,ae,b2,aa]).
listProperti(player2,[]).

listCard(player1,[]).
listCard(player2,[2,3]).

% Banyak item dalam list
banyakProperti(player1,2).
banyakProperti(player2,0).
banyakCard(player1,0).
banyakCard(player2,2).

% Kondisi Awal
player(player1,0,10000,0,10000).
player(player2,0,10000,0,10000).



% Deklarasi rule

createEmptyPlayer(X) :- 
    retractall(player(X,_,_,_,_)),
    asserta(player(X,1,10000,0,10000)),!.


updatePlayer(X) :-
    retractall(player(X,_,_,_,_)),
    posisi(AA,X),
    totalUang(X,BB),
    totalProperti(X,CC),
    DD is BB+CC,
    A is AA,
    B is BB,
    C is CC,
    D is DD,
    assertz(player(X,A,B,C,D)),!.


removei([],_,[]).
removei([_|T],0,T) :-
    !.
removei([H|T],N,[H|TR]) :-
    N1 is N-1,
    removei(T,N1,TR).

addi(El,[],_,[El]).
addi(EL, [H|T], 0, [EL,H|T]) :-
    !.
addi(EL, [H|T], N, [H|TR]) :-
    N1 is N-1,
    addi(EL, T, N1, TR).

getelm([H|_],0,H) :-
    !.
getelm([_|T],N,H) :-
    N1 is N-1,
    getelm(T,N1,H).

getidx([H|_],H,0) :-
    !.
getidx([_|T],H,N) :-
    getidx(T,H,N1),
    N is N1+1.



% Properti


daftarKepemilikanProperti(X,A,[H1|T1]):-
    banyakProperti(X,NProp),
    [H2|T2] = T1,
    A =< NProp,
    write(A),write('. '),
    namaLokasi(H1), write(' - '), tipeBangunan(H2),nl,
    A1 is A+1,
    daftarKepemilikanProperti(X,A1,T2).

daftarKepemilikanProperti(X,A,[]):-!.

tipeBangunan(aa):-
    write('Tanah').

tipeBangunan(ab):-
    write('Bangunan 1').

tipeBangunan(ac):-
    write('Bangunan 2').

tipeBangunan(ad):-
    write('Bangunan 3').

tipeBangunan(ae):-
    write('Landmark').


changeProperty(X, IDList, IDLokasiBaru, TingkatBangunanBaru):-
    listProperti(X, ListProp),
    banyakProperti(X, NProp),
    ID is IDList*2,
    removei(ListProp, ID, ListProp1),
    addi(IDLokasiBaru, ListProp1, ID, ListProp2),
    removei(ListProp2, ID+1, ListProp3),
    addi(TingkatBangunanBaru, ListProp3, ID+1, ListProp4),
    retractall(listProperti(X,_)),
    asserta(listProperti(X,ListProp4)),
    !.

removeProperty(X, IDList):-
    listProperti(X, ListProp),
    banyakProperti(X, NProp),
    ID is IDList*2,
    removei(ListProp, ID, ListProp1),
    removei(ListProp1, ID, ListProp2),
    retractall(listProperti(X,_)),
    asserta(listProperti(X,ListProp2)),
    retractall(banyakProperti(X,_)),
    NProp1 is NProp-1,
    asserta(banyakProperti(X,NProp1)),
    !.

addProperty(X, IDList, IDLokasiBaru, TingkatBangunanBaru):-
    listProperti(X, ListProp),
    banyakProperti(X, NProp),
    ID is IDList*2,
    addi(IDLokasiBaru, ListProp, ID, ListProp1),
    addi(TingkatBangunanBaru, ListProp1, ID+1, ListProp2),
    retractall(listProperti(X,_)),
    asserta(listProperti(X,ListProp2)),
    retractall(banyakProperti(X,_)),
    NProp1 is NProp+1,
    asserta(banyakProperti(X,NProp1)),
    !.


getidxProperty(X, IDLokasi, IDList):-
    listProperti(X, ListProp),
    getidx(ListProp, IDLokasi, ID),
    IDList is ID//2,
    !.

getelmProperty(X, IDList, IDLokasi, TingkatBangunan):-
    listProperti(X, ListProp),
    ID is IDList*2,
    getelm(ListProp, ID, IDLokasi),
    getelm(ListProp, ID+1, TingkatBangunan),
    !.

% Kartu Player

daftarKepemilikanCard(X,A,[H1|T1]):-
    banyakCard(X,NCard),   
    A =< NCard,
    write(A),write('. '),
    tulisKartu(H1),nl,
    A1 is A+1,
    daftarKepemilikanCard(X,A1,T1).

daftarKepemilikanCard(X,A,[]):-!.

changeCard(X, IDList, CardBaru):-
    listCard(X, ListCard),
    banyakCard(X, NCard),
    removei(ListCard, IDList, ListCard1),
    addi(CardBaru, ListCard1, IDList, ListCard2),
    retractall(listCard(X,_)),
    asserta(listCard(X,ListCard2)),
    !.

removeCard(X, IDList):-
    listCard(X, ListCard),
    banyakCard(X, NCard),
    removei(ListCard, IDList, ListCard1),
    retractall(listCard(X,_)),
    asserta(listCard(X,ListCard1)),
    retractall(banyakCard(X,_)),
    NCard1 is NCard-1,
    asserta(banyakCard(X,NCard1)),
    !.

addCard(X, IDList, CardBaru):-
    listCard(X, ListCard),
    banyakCard(X, NCard),
    addi(CardBaru, ListCard, IDList, ListCard1),
    retractall(listCard(X,_)),
    asserta(listCard(X,ListCard1)),
    retractall(banyakCard(X,_)),
    NCard1 is NCard+1,
    asserta(banyakCard(X,NCard1)),
    !.

getidxCard(X, Card, IDList):-
    listCard(X, ListCard),
    getidx(ListCard, Card, IDList),
    !.

getelmCard(X, IDList, Card):-  
    listCard(X, ListCard),
    getelm(ListCard, IDList, Card),
    !.

tulisKartu(1):-
    write('Kartu Tax').
tulisKartu(2):-
    write('Kartu Hadiah').
tulisKartu(3):-
    write('Kartu Get Out Penjara').
tulisKartu(4):-
    write('Kartu Go To Penjara').


checkPlayerDetail(X) :- updatePlayer(X), player(X,A,B,C,D),  
    write('Informasi Player '), write(X),nl,
    nl,
    write('Lokasi                       :'), nomor(AA,A), write(AA),nl,
    write('Total Uang                   :'), write(B),nl,
    write('Total Nilai Properti         :'), write(C),nl,
    write('Total Aset                   :'), write(D),nl,
    nl,
    write('Daftar Kepemilikan Properti  :'),nl,
    listProperti(X,ListP),
    daftarKepemilikanProperti(X,1,ListP),nl,

    write('Daftar Kepemilikan Card      :'),nl,
    listCard(X,ListC),
    daftarKepemilikanCard(X,1,ListC),nl,
    nl,!.
