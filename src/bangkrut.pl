:- include('player.pl').
:- include('map.pl').
:- include('properti.pl').

:- dynamic(bangkrut/2).

% bangkrut(A,B)
% namaPlayer, keteranganBangkrut

bangkrut(player1,no).
bangkrut(player2,no).

isBangkrut(X,Stat) :-
    player(X,A,B,C,D),
    property(A,E,),
    D =< 0.8*C,
    retractall(bangkrut(X,_)),
    assertz(bangkrut(X,yes)),
    !.
