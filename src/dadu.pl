:- dynamic(posisi/2).
:- include('worldtour.pl').
% posisi(X,Y)
% nomorLokasi, Player
% posisi(X,Y) menjelaskan posisi sekarang(X) dari player👍
:- dynamic(langkah/1).
:- dynamic(double/1).
:- dynamic(countDouble/2).
:- dynamic(penjara/1).
:- dynamic(giliran/1).
:- dynamic(kartu/2).
:- dynamic(bayar/2).
:- dynamic(jailCard/2).
:- dynamic(countdadu/1).

% Deklarasi Fakta

countdadu(0).
langkah(0).
double(no).
countDouble(player1,0).
countDouble(player2,0).
giliran(player1).
penjara(no).
jailCard(player1,ada).
jailCard(player2,tidakada).
kartu(player1,tidakada). % Angel Card ini
kartu(player2,tidakada). % Angel Card ini
bayar(player1,tidakbayar). % ini kalau mau bayar , min - belum ada tampilan mau bayar tidak?
bayar(player2,tidakbayar). % ini kalau mau bayar , min - belum ada tampilan mau bayar tidak?


posisi(0,player1).
posisi(0,player2).

% Deklarasi Rule


throwDice :- giliran(X),(X == player1),random(1,7,_X), random(1,7,_Y),write(X),nl,write('Dadu 1: '),
    write(_X),nl,write('Dadu 2: '),write(_Y),nl, _Z is _X+_Y, retractall(langkah(_)), assertz(langkah(_Z)), 
    write('Anda maju sebanyak '),write(_Z),write(' langkah.'),nl,double(_X,_Y,X),keluarPenjara(X),masukPenjara(X),
    setGiliran,pindahPosisi(X,_Z),!.

throwDice :- giliran(X),(X == player2),random(1,7,_X), random(1,7,_Y),write(X),nl,write('Dadu 1: '),
    write(_X),nl,write('Dadu 2: '),write(_Y),nl, _Z is _X+_Y, retractall(langkah(_)), assertz(langkah(_Z)), 
    write('Anda maju sebanyak '),write(_Z),write(' langkah.'),nl,double(_X,_Y,X),keluarPenjara(X),masukPenjara(X),
    setGiliran,pindahPosisi(X,_Z),!.


setGiliran :- giliran(_X),double(no),(_X == player1), retractall(giliran(_)), assertz(giliran(player2)),!.
setGiliran :- giliran(_X),double(no),(_X == player2), retractall(giliran(_)), assertz(giliran(player1)),!.
setGiliran :- giliran(_X),double(yes),!.

pindahPosisi(X,_Z) :- \+(penjara(X)),posisi(XX,X),Y is XX + _Z,Y1 is Y mod 32,retract(posisi(XX,X)), asserta(posisi(Y1,X)),khusus(X,Y1),!.
pindahPosisi(X,_Z) :- penjara(X),posisi(XX,X),!.

double(X,Y,Z) :- X==Y,retractall(double(_)),assertz(double(yes)),write('Double!'),nl,tambahDouble(Z),!.
double(X,Y,Z) :- X\==Y,retractall(double(_)),assertz(double(no)),retractall(countDouble(Z,_)),assertz(countDouble(Z,0)),!.

tambahDouble(Z) :- double(yes),countDouble(Z,_X),_Y is _X+1,retractall(countDouble(Z,_)),assertz(countDouble(Z,_Y)),!.

% masuk ke penjara

masukPenjara(Z) :- \+(penjara(Z)),countDouble(Z,3),retractall(countDouble(Z,_)),assertz(countDouble(Z,0)),assertz(penjara(Z)),write(Z),write(' masuk penjara!'),nl,!.
masukPenjara(Z) :- \+(penjara(Z)),jailCard(Z,ada),retractall(jailCard(Z,ada)),assertz(jailCard(Z,tidakada)),retractall(countDouble(Z,_)),assertz(countDouble(Z,0)),assertz(penjara(Z)),write(Z),write(' masuk penjara!'),nl,!.
masukPenjara(Z) :- \+(penjara(Z)),!.
masukPenjara(Z) :- penjara(Z),!.


% Keluar dari penjara

keluarPenjara(Z) :- penjara(Z),double(yes),retractall(penjara(Z)),write(Z),write(' keluar penjara!'),nl,!.
keluarPenjara(Z) :- penjara(Z),(countdadu(_X),_X<3),kartu(Z,ada),retractall(countdadu(_X)),retractall(penjara(Z)),write(Z),write(' keluar penjara!'),nl,!.
keluarPenjara(Z) :- penjara(Z),(countdadu(_X),_X<3),bayar(Z,ya),retractall(countdadu(_X)),retractall(penjara(Z)),write(Z),write(' keluar penjara!'),nl,!.
keluarPenjara(Z) :- penjara(Z),(countdadu(_X),_X<3),countdadu(_Y),_Z is _Y+1,retractall(countdadu(_Y)),assertz(countdadu(_Z)),throwKetiga(Z),!.
keluarPenjara(Z) :- \+(penjara(Z)),!.

throwKetiga(Z) :- penjara(Z),countdadu(3),retractall(countdadu(3)),assertz(countdadu(0)),retractall(penjara(Z)),write(Z),write(' keluar penjara!'),nl,!.
throwKetiga(Z) :- penjara(Z),countdadu(_X),_X < 3,write(Z),write(' masih di penjara!'),nl,!.

%  Z is player X is posisi
khusus(Z,X) :-  X is 0,write(Z),write(' berada di GO!'),nl,!.
khusus(Z,X) :-  X is 4,write(Z),write(' berada di CC!'),nl,startCard,!.
khusus(Z,X) :-  X is 12,write(Z),write(' berada di TX'),nl,!.
khusus(Z,X) :-  X is 13,write(Z),write(' berada di CF'),nl,startFlip,!.
khusus(Z,X) :-  X is 16,write(Z),write(' berada di FP'),nl,!.
khusus(Z,X) :-  X is 20,write(Z),write(' berada di CC'),nl,startCard,!.
khusus(Z,X) :-  X is 24,write(Z),write(' berada di WT'),nl,giliran(Player),worldtour(Player),!.
khusus(Z,X) :-  X is 28,write(Z),write(' berada di TX'),nl,!.
khusus(Z,X) :-  X is 29,write(Z),write(' berada di CC'),nl,startCard,!.
khusus(Z,X) :-  X =\= 0,X=\=4,X =\= 12,X=\=13,X=\=16,X=\=20,X=\=24,X=\=28,X=\=29,!.
