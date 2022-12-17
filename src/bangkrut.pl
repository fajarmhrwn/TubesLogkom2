

:- dynamic(bangkrut/2).

% bangkrut(A,B)
% namaPlayer, keteranganBangkrut

bangkrut(player1,no).
bangkrut(player2,no).

cekKemungkinanBangkrut(Player, 13) :-
    nl,!.

cekKemungkinanBangkrut(Player, Count) :-
    player(Player, A, B, C, D),
    posisi(PosisiNow, Player),
    PosisiCekTemp is PosisiNow + Count,
    PosisiCek is PosisiCekTemp mod 32,
    conv(HurufLoc, PosisiCek),
    (HurufLoc == cc ; HurufLoc == jl ; HurufLoc == tx ; HurufLoc = cf ; HurufLoc == fp ; HurufLoc == wt ; HurufLoc == go),
    Count1 is Count + 1,
    cekKemungkinanBangkrut(Player, Count1 ).

cekKemungkinanBangkrut(Player, Count) :-    
    player(Player, A, B, C, D),
    posisi(PosisiNow, Player),
    PosisiCekTemp is PosisiNow + Count,
    PosisiCek is PosisiCekTemp mod 32,
    kepemilikanProperti(PosisiCek, Pemilik, TingkatBangunan),
    Pemilik == x,
    Count1 is Count + 1,
    cekKemungkinanBangkrut(Player, Count1).

cekKemungkinanBangkrut(Player, Count) :-    
    player(Player, A, B, C, D),
    posisi(PosisiNow, Player),
    PosisiCekTemp is PosisiNow + Count,
    PosisiCek is PosisiCekTemp mod 32,
    kepemilikanProperti(PosisiCek, Pemilik, TingkatBangunan),
    TingkatBangunan == 'x',
    Count1 is Count + 1,
    cekKemungkinanBangkrut(Player, Count1).

cekKemungkinanBangkrut(Player, Count) :-
    player(Player, A, B, C, D),
    posisi(PosisiNow, Player),
    PosisiCekTemp is PosisiNow + Count,
    PosisiCek is PosisiCekTemp mod 32,
    kepemilikanProperti(PosisiCek, Pemilik, TingkatBangunan),
    conv(HurufLoc, PosisiCek),
    (
        TingkatBangunan == 'L', sewa(HurufLoc, ae, HargaSewa), HargaSewa > 0.8*D, write('!!!!!!!!!! Hati-hati jangan sampai dapat '), write(Count), write(' !!!!!!!!!!'), nl ;
        TingkatBangunan == '1', sewa(HurufLoc, ab, HargaSewa), HargaSewa > 0.8*D, write('!!!!!!!!!! Hati-hati jangan sampai dapat '), write(Count), write(' !!!!!!!!!!'), nl ;
        TingkatBangunan == '2', sewa(HurufLoc, ac, HargaSewa), HargaSewa > 0.8*D, write('!!!!!!!!!! Hati-hati jangan sampai dapat '), write(Count), write(' !!!!!!!!!!'), nl ;
        TingkatBangunan == '3', sewa(HurufLoc, ad, HargaSewa), HargaSewa > 0.8*D, write('!!!!!!!!!! Hati-hati jangan sampai dapat '), write(Count), write(' !!!!!!!!!!'), nl ;
        TingkatBangunan == 'T', sewa(HurufLoc, aa, HargaSewa), HargaSewa > 0.8*D, write('!!!!!!!!!! Hati-hati jangan sampai dapat '), write(Count), write(' !!!!!!!!!!'), nl ;
        Count2 is Count + 2
    ),
    Count1 is Count + 1,
    cekKemungkinanBangkrut(Player, Count1).

isBangkrut(X) :-
    player(X,A,B,C,D),
    property(A,E,F,G,H,I,J,K,L,M,N),
    D =< 0.8*C,
    retractall(bangkrut(X,_)),
    assertz(bangkrut(X,yes)),
    !.
