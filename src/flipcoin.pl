:- dynamic(tebak/1).
:- dynamic(tebakBenar/1).
:- dynamic(status/1).

tebak(0).
tebakBenar(0).
status(true).

startFlip :- retractall(status(_)),
            assertz(status(true)),
            retractall(tebak(_)),
            assertz(tebak(0)),
            retractall(tebakBenar(_)),
            assertz(tebakBenar(0)),
            write('Flip Coin Game'),
            nl,
            mainGame,!.

flipCoin(_X,_Y) :- status(true),
            _Y == head,
            _X == 0,
            write('Tebakan Anda Benar!'),
            nl,
            tebakBenar(_Z),
            _A is _Z+1,
            retractall(tebakBenar(_)),
            assertz(tebakBenar(_A)),
            tebak(_B),
            _C is _B+1,
            retractall(tebak(_)),
            assertz(tebak(_C)),!.

flipCoin(_X,_Y) :- status(true),
                    _Y == tail,
                    _X == 1,
                    write('Tebakan Anda Benar!'),
                    nl,
                    tebakBenar(_Z),
                    _A is _Z+1,
                    retractall(tebakBenar(_)),
                    assertz(tebakBenar(_A)),
                    tebak(_B),
                    _C is _B+1,
                    retractall(tebak(_)),
                    assertz(tebak(_C)),!.

flipCoin(_X,_Y) :- status(true),
                    _Y == head,
                    _X == 1,
                    write('Tebakan Anda Salah!'),
                    nl,
                    tebak(_B),
                    _C is _B+1,
                    retractall(tebak(_)),
                    assertz(tebak(_C)),
                    retractall(status(_)),
                    assertz(status(false)),!.

flipCoin(_X,_Y) :- status(true),
                    _Y == tail,
                    _X == 0,
                    write('Tebakan Anda Salah!'),
                    nl,
                    tebak(_B),
                    _C is _B+1,
                    retractall(tebak(_)),
                    assertz(tebak(_C)),
                    retractall(status(_)),
                    assertz(status(false)),!.

mainGame :- status(true),tebak(_X),_X < 3,nl,write('Tebaklah head atau tail'),
            random(0,2,_R),nl,
            read(_Y),flipCoin(_R,_Y),mainGame,!.

mainGame :- status(true),tebak(_X),_X == 3,tebakBenar(_Y),_Y == 3,retractall(status(_)),assertz(status(false)),write('Selamat Anda Menang!'),nl,tambahUang,!.
mainGame :- status(false),nl,write('Anda Kalah!'),nl,tambahUang,!.

tambahUang :- status(false),
            tebakBenar(_Y),
            _Z is _Y*100,
            giliran(_A),
            totalUang(_A,_U),
            _V is _U+_Z,
            retractall(totalUang(_A,_)),
            assertz(totalUang(_A,_V)),updatePlayer(_A),!.

