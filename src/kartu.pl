:-include('player.pl').

% Deklarasi Rule
startCard :- random(1,5,_X),write('Kartu yang anda dapatkan adalah '),nl,cekKartu(_X),giliran(X), listCard(X,List), length(List,N), addCard(X,N, _X),!.
cekKartu(1) :- write('Kartu Tax'),nl,!.
cekKartu(2) :- write('Kartu Hadiah'),nl,!.
cekKartu(3) :- write('Kartu Get Out Penjara'),nl,!.
cekKartu(4) :- write('Kartu Go To Penjara'),nl,!.